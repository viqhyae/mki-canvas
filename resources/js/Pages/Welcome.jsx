import { Head, Link } from '@inertiajs/react';
import axios from 'axios';
import { useState } from 'react';

export default function Welcome() {
    const [code, setCode] = useState('');
    const [result, setResult] = useState(null);
    const [errorMessage, setErrorMessage] = useState('');
    const [isChecking, setIsChecking] = useState(false);

    const handleCheckCode = async (event) => {
        event.preventDefault();
        setResult(null);
        setErrorMessage('');

        const cleanedCode = String(code || '').trim();
        if (cleanedCode === '') {
            setErrorMessage('Silakan masukkan kode verifikasi terlebih dahulu.');
            return;
        }

        setIsChecking(true);
        try {
            const response = await axios.get(route('public.verify-code'), {
                params: { code: cleanedCode },
            });

            setResult(response.data);
        } catch (error) {
            const validationMessage = error?.response?.data?.errors?.code?.[0];
            const message =
                validationMessage ||
                error?.response?.data?.message ||
                'Terjadi kendala saat memeriksa kode. Silakan coba lagi.';

            setErrorMessage(message);
        } finally {
            setIsChecking(false);
        }
    };

    return (
        <>
            <Head title="Cek Keaslian Produk" />

            <div className="min-h-screen bg-slate-100 px-4 py-10 text-slate-900">
                <div className="mx-auto w-full max-w-3xl rounded-2xl border border-slate-200 bg-white p-6 shadow-sm sm:p-10">
                    <div className="mb-8 flex items-center justify-between gap-4">
                        <div>
                            <p className="text-sm font-semibold uppercase tracking-widest text-slate-500">
                                Website MKI
                            </p>
                            <h1 className="mt-1 text-2xl font-bold sm:text-3xl">
                                Cek Keaslian Produk
                            </h1>
                            <p className="mt-2 text-sm text-slate-600">
                                Masukkan kode verifikasi dari produk Anda untuk
                                mengecek apakah kode terdaftar di sistem.
                            </p>
                        </div>

                        <Link
                            href={route('login')}
                            className="shrink-0 rounded-lg border border-slate-300 px-4 py-2 text-sm font-medium text-slate-700 hover:bg-slate-50"
                        >
                            Admin Login
                        </Link>
                    </div>

                    <form onSubmit={handleCheckCode} className="space-y-4">
                        <div>
                            <label
                                htmlFor="verification-code"
                                className="mb-2 block text-sm font-medium text-slate-700"
                            >
                                Kode Verifikasi
                            </label>
                            <input
                                id="verification-code"
                                type="text"
                                value={code}
                                onChange={(event) =>
                                    setCode(event.target.value.toUpperCase())
                                }
                                placeholder="Contoh: ABC12"
                                className="w-full rounded-lg border border-slate-300 px-4 py-3 text-base uppercase tracking-wider text-slate-900 outline-none transition focus:border-slate-500 focus:ring-2 focus:ring-slate-200"
                            />
                        </div>

                        <button
                            type="submit"
                            disabled={isChecking}
                            className="rounded-lg bg-slate-900 px-5 py-3 text-sm font-semibold text-white transition hover:bg-slate-700 disabled:cursor-not-allowed disabled:opacity-70"
                        >
                            {isChecking ? 'Memeriksa...' : 'Cek Keaslian'}
                        </button>
                    </form>

                    {errorMessage !== '' && (
                        <div className="mt-5 rounded-lg border border-rose-200 bg-rose-50 px-4 py-3 text-sm text-rose-700">
                            {errorMessage}
                        </div>
                    )}

                    {result && (
                        <div
                            className={`mt-5 rounded-lg border px-4 py-4 text-sm ${
                                result.exists
                                    ? 'border-emerald-200 bg-emerald-50 text-emerald-800'
                                    : 'border-amber-200 bg-amber-50 text-amber-800'
                            }`}
                        >
                            <p className="font-semibold">
                                {result.exists
                                    ? 'Kode terdaftar (produk terverifikasi).'
                                    : 'Kode tidak ditemukan.'}
                            </p>
                            <p className="mt-1">{result.message}</p>

                            {result.exists && (
                                <div className="mt-3 grid gap-1 text-sm">
                                    <p>
                                        <span className="font-semibold">
                                            Kode:
                                        </span>{' '}
                                        {result.code}
                                    </p>
                                    <p>
                                        <span className="font-semibold">
                                            Produk:
                                        </span>{' '}
                                        {result.product_name || '-'}
                                    </p>
                                    <p>
                                        <span className="font-semibold">
                                            Brand:
                                        </span>{' '}
                                        {result.brand_name || '-'}
                                    </p>
                                    <p>
                                        <span className="font-semibold">
                                            Status:
                                        </span>{' '}
                                        {result.status || '-'}
                                    </p>
                                </div>
                            )}
                        </div>
                    )}
                </div>
            </div>
        </>
    );
}
