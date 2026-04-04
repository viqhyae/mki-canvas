import React from 'react';
import {
    Activity,
    AlertCircle,
    CheckCircle2,
    Clock,
    Download,
    Filter,
    MapPin,
    X,
} from 'lucide-react';

export default function createScanHistory(context) {
    const {
        handleSortChange,
        isRefreshingScanLogs,
        PageAlert,
        scanLogs,
        scanSort,
        setScanSort,
        setStatusFilter,
        SortIcon,
        statusFilter,
    } = context;

    const ScanHistory = () => {
        const processedLogs = scanLogs
            .filter((log) => statusFilter === 'Semua Status' || log.status === statusFilter)
            .sort((a, b) => {
                const dir = scanSort.direction === 'asc' ? 1 : -1;

                if (scanSort.key === 'time') {
                    const timeA = new Date(a.scannedAt || 0).getTime();
                    const timeB = new Date(b.scannedAt || 0).getTime();
                    return (timeA - timeB) * dir;
                }

                if (scanSort.key === 'tag') {
                    return String(a.tagCode || '').localeCompare(String(b.tagCode || '')) * dir;
                }

                if (scanSort.key === 'status') {
                    return String(a.status || '').localeCompare(String(b.status || '')) * dir;
                }

                return (Number(a.id || 0) - Number(b.id || 0)) * dir;
            });

        const handleExportCsv = () => {
            const csvHeader = ['Waktu', 'Kode', 'Produk', 'Brand', 'Lokasi', 'IP', 'Scan Ke', 'Status'];
            const csvRows = processedLogs.map((log) => [
                log.time || '-',
                log.tagCode || '-',
                log.productName || '-',
                log.brand || '-',
                log.location || '-',
                log.ip || '-',
                String(log.scanCount ?? 0),
                log.status || '-',
            ]);

            const escapeCsvValue = (value) => {
                const text = String(value ?? '');
                return `"${text.replaceAll('"', '""')}"`;
            };

            const csvContent = [csvHeader, ...csvRows]
                .map((row) => row.map(escapeCsvValue).join(','))
                .join('\n');

            const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
            const url = URL.createObjectURL(blob);
            const link = document.createElement('a');
            const wibDate = new Intl.DateTimeFormat('en-CA', {
                timeZone: 'Asia/Jakarta',
                year: 'numeric',
                month: '2-digit',
                day: '2-digit',
            }).format(new Date());

            link.href = url;
            link.setAttribute('download', `scan-activities-${wibDate}.csv`);
            document.body.appendChild(link);
            link.click();
            link.remove();

            setTimeout(() => URL.revokeObjectURL(url), 1000);
        };

        return (
            <div className="space-y-6 animate-in fade-in duration-500">
                <PageAlert text="Riwayat aktivitas scan dari halaman verifikasi publik. Data ini tercatat otomatis setiap kali pengguna mengecek kode." />

                <div className="bg-white p-4 rounded-xl shadow-sm border border-slate-100 flex flex-col sm:flex-row sm:items-center justify-between gap-4">
                    <div className="flex items-center gap-3">
                        <div className="bg-blue-50 text-blue-600 p-2 rounded-lg"><Activity size={20} /></div>
                        <div>
                            <h3 className="font-bold text-slate-800 text-sm">Log Aktivitas Scan</h3>
                            <p className="text-xs text-slate-500">
                                {new Intl.NumberFormat('id-ID').format(scanLogs.length)} Total Pemindaian Tercatat
                                {isRefreshingScanLogs ? ' (sinkronisasi...)' : ''}
                            </p>
                        </div>
                    </div>

                    <div className="flex items-center gap-3">
                        <div className="relative">
                            <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                <Filter size={14} className="text-slate-400" />
                            </div>
                            <select
                                className="pl-9 pr-4 py-2 border border-slate-200 rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-[#C1986E] bg-slate-50 text-slate-700 appearance-none font-medium"
                                value={statusFilter}
                                onChange={(event) => setStatusFilter(event.target.value)}
                            >
                                <option value="Semua Status">Semua Status</option>
                                <option value="Original">Terverifikasi Asli</option>
                                <option value="Peringatan">Peringatan Keamanan</option>
                                <option value="Suspended">Tag Ditarik (Recall)</option>
                                <option value="Invalid">Tag Tidak Dikenal</option>
                            </select>
                        </div>
                        <button
                            onClick={handleExportCsv}
                            className="bg-white border border-slate-200 text-slate-600 px-4 py-2 rounded-lg text-sm font-medium hover:bg-slate-50 transition-colors flex items-center gap-2 shadow-sm"
                        >
                            <Download size={14} /> Export CSV
                        </button>
                    </div>
                </div>

                <div className="bg-white rounded-xl shadow-sm border border-slate-100 overflow-x-auto">
                    <table className="w-full text-left whitespace-nowrap">
                        <thead className="bg-slate-50 border-b border-slate-200">
                            <tr>
                                <th className="px-6 py-4 font-semibold text-slate-600 text-sm cursor-pointer hover:bg-slate-100 transition-colors group select-none" onClick={() => handleSortChange('time', scanSort, setScanSort)}>
                                    <div className="flex items-center gap-2">Waktu & Lokasi <SortIcon columnKey="time" sortConfig={scanSort} /></div>
                                </th>
                                <th className="px-6 py-4 font-semibold text-slate-600 text-sm cursor-pointer hover:bg-slate-100 transition-colors group select-none" onClick={() => handleSortChange('tag', scanSort, setScanSort)}>
                                    <div className="flex items-center gap-2">Informasi Tag / QR <SortIcon columnKey="tag" sortConfig={scanSort} /></div>
                                </th>
                                <th className="px-6 py-4 font-semibold text-slate-600 text-sm cursor-pointer hover:bg-slate-100 transition-colors group select-none" onClick={() => handleSortChange('status', scanSort, setScanSort)}>
                                    <div className="flex items-center gap-2">Status Analitik <SortIcon columnKey="status" sortConfig={scanSort} /></div>
                                </th>
                            </tr>
                        </thead>
                        <tbody className="divide-y divide-slate-100">
                            {processedLogs.length === 0 ? (
                                <tr>
                                    <td colSpan="3" className="text-center py-10 text-slate-400 text-sm">
                                        Belum ada aktivitas scan yang tercatat.
                                    </td>
                                </tr>
                            ) : (
                                processedLogs.map((log) => (
                                    <tr key={log.id} className="hover:bg-slate-50 transition-colors group">
                                        <td className="px-6 py-4">
                                            <p className="text-sm font-bold text-slate-800 flex items-center gap-1.5"><Clock size={12} className="text-slate-400" /> {log.time || '-'}</p>
                                            <div className="flex items-center gap-3 mt-1.5">
                                                <p className="text-xs text-slate-600 flex items-center gap-1"><MapPin size={12} className="text-slate-400" /> {log.location || '-'}</p>
                                                <span className="text-[10px] text-slate-400 border border-slate-200 px-1.5 py-0.5 rounded bg-white">IP: {log.ip || '-'}</span>
                                            </div>
                                        </td>
                                        <td className="px-6 py-4">
                                            <div className="flex items-center gap-2 mb-1">
                                                <span className="font-mono text-[11px] font-bold bg-slate-100 px-2 py-0.5 rounded text-slate-700 border border-slate-200 tracking-wider">
                                                    {log.tagCode || '-'}
                                                </span>
                                            </div>
                                            <p className="text-sm font-medium text-slate-800">{log.productName || 'Unknown / Invalid'}</p>
                                            {log.brand !== 'N/A' && <p className="text-[10px] text-[#C1986E] font-bold uppercase tracking-wide mt-0.5">{log.brand}</p>}
                                        </td>
                                        <td className="px-6 py-4">
                                            <div className="flex flex-col items-start gap-1">
                                                {log.status === 'Original' && (
                                                    <span className="bg-emerald-50 text-emerald-700 text-xs px-2.5 py-1 rounded-md font-semibold flex items-center gap-1.5 border border-emerald-100 shadow-sm">
                                                        <CheckCircle2 size={12} /> Terverifikasi Asli
                                                    </span>
                                                )}
                                                {log.status === 'Peringatan' && (
                                                    <span className="bg-yellow-50 text-yellow-700 text-xs px-2.5 py-1 rounded-md font-semibold flex items-center gap-1.5 border border-yellow-200 shadow-sm">
                                                        <AlertCircle size={12} /> Peringatan Keamanan
                                                    </span>
                                                )}
                                                {(log.status === 'Indikasi Palsu' || log.status === 'Invalid' || log.status === 'Suspended') && (
                                                    <span className="bg-red-50 text-red-700 text-xs px-2.5 py-1 rounded-md font-semibold flex items-center gap-1.5 border border-red-200 shadow-sm">
                                                        <X size={12} /> {log.status === 'Suspended' ? 'Tag Ditarik (Recall)' : (log.status === 'Invalid' ? 'Tag Tidak Dikenal' : 'Indikasi Dipalsukan (Data Lama)')}
                                                    </span>
                                                )}

                                                {Number(log.scanCount || 0) > 0 && (
                                                    <span className="text-[10px] font-medium text-slate-500 bg-slate-100 px-2 py-0.5 rounded-full mt-1">
                                                        Scan ke-{log.scanCount}
                                                    </span>
                                                )}
                                            </div>
                                        </td>
                                    </tr>
                                ))
                            )}
                        </tbody>
                    </table>
                </div>
            </div>
        );
    };

    return ScanHistory;
}
