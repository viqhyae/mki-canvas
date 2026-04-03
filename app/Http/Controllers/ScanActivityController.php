<?php

namespace App\Http\Controllers;

use App\Models\ScanActivity;

class ScanActivityController extends Controller
{
    public function index()
    {
        $logs = ScanActivity::query()
            ->latest('id')
            ->limit(500)
            ->get()
            ->map(fn (ScanActivity $scanActivity) => $this->scanPayload($scanActivity))
            ->all();

        return response()->json([
            'logs' => $logs,
        ]);
    }

    private function scanPayload(ScanActivity $scanActivity): array
    {
        return [
            'id' => $scanActivity->id,
            'time' => optional($scanActivity->scanned_at)->format('d M Y, H:i:s'),
            'scannedAt' => optional($scanActivity->scanned_at)->toISOString(),
            'tagCode' => $scanActivity->verification_code ?: $scanActivity->scanned_code,
            'productName' => $scanActivity->product_name ?: 'Unknown / Invalid',
            'brand' => $scanActivity->brand_name ?: 'N/A',
            'location' => $scanActivity->location_label ?: 'Tidak Diketahui',
            'ip' => $scanActivity->ip_address ?: '-',
            'scanCount' => (int) $scanActivity->scan_count,
            'status' => $scanActivity->result_status ?: 'Invalid',
            'tagStatus' => $scanActivity->tag_status ?: '-',
            'userAgent' => $scanActivity->user_agent ?: '-',
            'latitude' => $scanActivity->latitude,
            'longitude' => $scanActivity->longitude,
        ];
    }
}
