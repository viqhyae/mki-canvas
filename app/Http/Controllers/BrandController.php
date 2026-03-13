<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;
use Inertia\Inertia;
use Illuminate\Support\Facades\Storage;

class BrandController extends Controller {
    public function index() {
        return Inertia::render('Dashboard', [
            'databaseBrands' => Brand::latest()->get()
        ]);
    }

    public function store(Request $request) {
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'brand_code' => 'required|string|unique:brands',
            'owner_name' => 'nullable|string',
            'description' => 'nullable|string',
            'logo' => 'nullable|image|max:2048', // Maks 2MB
        ]);

        if ($request->hasFile('logo')) {
            $data['logo_url'] = $request->file('logo')->store('logos', 'public');
        }

        Brand::create($data);
        return redirect()->back();
    }

    public function update(Request $request, Brand $brand) {
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'owner_name' => 'nullable|string',
            'description' => 'nullable|string',
            'logo' => 'nullable|image|max:2048',
        ]);

        if ($request->hasFile('logo')) {
            if ($brand->logo_url) Storage::disk('public')->delete($brand->logo_url); // Hapus logo lama
            $data['logo_url'] = $request->file('logo')->store('logos', 'public');
        }

        $brand->update($data);
        return redirect()->back();
    }

    public function destroy(Brand $brand) {
        if ($brand->logo_url) Storage::disk('public')->delete($brand->logo_url);
        $brand->delete();
        return redirect()->back();
    }
}