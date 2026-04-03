<?php

namespace App\Http\Controllers;

use App\Models\TagCode;
use Illuminate\Http\Request;

class ProductVerificationController extends Controller
{
    public function check(Request $request)
    {
        $validated = $request->validate([
            'code' => ['required', 'string', 'max:100'],
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

        if (!$tagCode) {
            return response()->json([
                'exists' => false,
                'code' => $normalizedCode,
                'message' => 'Kode tidak ditemukan di database.',
            ]);
        }

        return response()->json([
            'exists' => true,
            'code' => $tagCode->verification_code,
            'product_name' => $tagCode->product_name,
            'brand_name' => $tagCode->brand_name,
            'status' => $tagCode->status,
            'message' => 'Kode terdaftar.',
        ]);
    }
}
