<?php

namespace Tests\Feature;

use App\Models\TagBatch;
use App\Models\TagCode;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class ProductVerificationTest extends TestCase
{
    use RefreshDatabase;

    public function test_it_returns_not_found_for_unknown_verification_code(): void
    {
        $response = $this->getJson('/verify-product-code?code=NOTEXIST');

        $response
            ->assertOk()
            ->assertJson([
                'exists' => false,
                'code' => 'NOTEXIST',
                'scan_status' => 'Invalid',
                'scan_count' => 1,
            ]);

        $this->assertDatabaseHas('scan_activities', [
            'scanned_code' => 'NOTEXIST',
            'verification_code' => null,
            'result_status' => 'Invalid',
            'scan_count' => 1,
        ]);
    }

    public function test_it_returns_registered_data_for_existing_verification_code(): void
    {
        $batch = TagBatch::query()->create([
            'batch_code' => 'BATCH-900001',
            'product_name' => 'Sample Product',
            'brand_name' => 'Sample Brand',
            'quantity' => 1,
            'id_length' => 6,
            'error_correction' => 'M',
            'use_pin' => false,
            'status' => 'Generated',
        ]);

        TagCode::query()->create([
            'tag_batch_id' => $batch->id,
            'verification_code' => 'AB12CD',
            'product_name' => 'Sample Product',
            'brand_name' => 'Sample Brand',
            'status' => 'Aktif',
            'error_correction' => 'M',
        ]);

        $response = $this->getJson('/verify-product-code?code=ab12cd');

        $response
            ->assertOk()
            ->assertJson([
                'exists' => true,
                'code' => 'AB12CD',
                'product_name' => 'Sample Product',
                'brand_name' => 'Sample Brand',
                'status' => 'Aktif',
                'scan_status' => 'Original',
                'scan_count' => 1,
            ]);

        $this->assertDatabaseHas('scan_activities', [
            'scanned_code' => 'AB12CD',
            'verification_code' => 'AB12CD',
            'product_name' => 'Sample Product',
            'brand_name' => 'Sample Brand',
            'result_status' => 'Original',
            'scan_count' => 1,
        ]);
    }

    public function test_it_marks_repeated_scans_as_warning_and_fake_indication(): void
    {
        $batch = TagBatch::query()->create([
            'batch_code' => 'BATCH-900002',
            'product_name' => 'Sample Product 2',
            'brand_name' => 'Sample Brand 2',
            'quantity' => 1,
            'id_length' => 6,
            'error_correction' => 'M',
            'use_pin' => false,
            'status' => 'Generated',
        ]);

        TagCode::query()->create([
            'tag_batch_id' => $batch->id,
            'verification_code' => 'ZX90KL',
            'product_name' => 'Sample Product 2',
            'brand_name' => 'Sample Brand 2',
            'status' => 'Aktif',
            'error_correction' => 'M',
        ]);

        $firstResponse = $this->getJson('/verify-product-code?code=ZX90KL');
        $secondResponse = $this->getJson('/verify-product-code?code=ZX90KL');
        $thirdResponse = $this->getJson('/verify-product-code?code=ZX90KL');
        $fourthResponse = $this->getJson('/verify-product-code?code=ZX90KL');

        $firstResponse->assertOk()->assertJson([
            'scan_status' => 'Original',
            'scan_count' => 1,
        ]);

        $secondResponse->assertOk()->assertJson([
            'scan_status' => 'Peringatan',
            'scan_count' => 2,
        ]);

        $thirdResponse->assertOk()->assertJson([
            'scan_status' => 'Peringatan',
            'scan_count' => 3,
        ]);

        $fourthResponse->assertOk()->assertJson([
            'scan_status' => 'Indikasi Palsu',
            'scan_count' => 4,
        ]);

        $this->assertDatabaseHas('scan_activities', [
            'verification_code' => 'ZX90KL',
            'result_status' => 'Indikasi Palsu',
            'scan_count' => 4,
        ]);
    }
}
