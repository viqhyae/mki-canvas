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
            ]);
    }
}
