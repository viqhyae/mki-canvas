<?php

namespace App\Http\Controllers;

use App\Models\ScanActivity;
use App\Models\TagCode;
use Illuminate\Http\Request;

class ProductVerificationController extends Controller
{
    public function check(Request $request)
    {
        $validated = $request->validate([
            'code' => ['required', 'string', 'max:100'],
            'location_label' => ['nullable', 'string', 'max:255'],
            'latitude' => ['nullable', 'numeric', 'between:-90,90'],
            'longitude' => ['nullable', 'numeric', 'between:-180,180'],
        ]);

        $normalizedCode = strtoupper(trim((string) $validated['code']));
        if ($normalizedCode === '') {
            return response()->json([
                'exists' => false,
                'message' => 'Kode verifikasi wajib diisi.',
            ], 422);
        }

        $tagCode = TagCode::query()
            ->where('verification_code', $normalizedCode)
            ->first();

        $scanCount = (int) ScanActivity::query()
            ->when(
                $tagCode !== null,
                fn ($query) => $query->where('verification_code', $normalizedCode),
                fn ($query) => $query->where('scanned_code', $normalizedCode)
            )
            ->count() + 1;

        $resultStatus = $tagCode
            ? $this->determineResultStatus((string) ($tagCode->status ?? 'Aktif'), $scanCount)
            : 'Invalid';

        $locationLabel = $this->resolveLocationLabel(
            $validated['location_label'] ?? null,
            $validated['latitude'] ?? null,
            $validated['longitude'] ?? null
        );

        ScanActivity::query()->create([
            'scanned_code' => $normalizedCode,
            'tag_code_id' => $tagCode?->id,
            'verification_code' => $tagCode?->verification_code,
            'product_name' => $tagCode?->product_name,
            'brand_name' => $tagCode?->brand_name,
            'tag_status' => $tagCode?->status,
            'result_status' => $resultStatus,
            'scan_count' => $scanCount,
            'location_label' => $locationLabel,
            'latitude' => $validated['latitude'] ?? null,
            'longitude' => $validated['longitude'] ?? null,
            'ip_address' => $request->ip(),
            'user_agent' => $request->userAgent(),
            'scanned_at' => now(),
        ]);

        if (!$tagCode) {
            return response()->json([
                'exists' => false,
                'code' => $normalizedCode,
                'scan_status' => $resultStatus,
                'scan_count' => $scanCount,
                'message' => 'Kode tidak ditemukan di database.',
            ]);
        }

        return response()->json([
            'exists' => true,
            'code' => $tagCode->verification_code,
            'product_name' => $tagCode->product_name,
            'brand_name' => $tagCode->brand_name,
            'status' => $tagCode->status,
            'scan_status' => $resultStatus,
            'scan_count' => $scanCount,
            'message' => 'Kode terdaftar.',
        ]);
    }

    private function determineResultStatus(string $tagStatus, int $scanCount): string
    {
        if (strtolower(trim($tagStatus)) === 'suspended') {
            return 'Suspended';
        }

        if ($scanCount <= 1) {
            return 'Original';
        }

        if ($scanCount <= 3) {
            return 'Peringatan';
        }

        return 'Indikasi Palsu';
    }

    private function resolveLocationLabel(?string $locationLabel, mixed $latitude, mixed $longitude): string
    {
        $label = trim((string) ($locationLabel ?? ''));
        if ($label !== '') {
            return $label;
        }

        if ($latitude !== null && $longitude !== null) {
            $lat = number_format((float) $latitude, 5, '.', '');
            $lng = number_format((float) $longitude, 5, '.', '');
            return "Lat {$lat}, Lng {$lng}";
        }

        return 'Tidak Diketahui';
    }
}
