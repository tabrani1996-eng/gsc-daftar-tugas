# Daftar Tugas Job GSC

Aplikasi sederhana untuk mencatat tugas setiap job pembersihan gedung Global Sky Clean.

- Tambah job (nama gedung atau klien, tanggal).
- Setiap job otomatis berisi 5 tugas standar: survei lokasi, briefing K3, pembersihan dengan drone, pengecekan hasil, kirim laporan foto.
- Centang tugas yang selesai, tambah atau hapus tugas.

## Cara membuka

Buka `index.html` di browser. Tidak perlu instalasi.

## Catatan

Data tersimpan online di Supabase (project gsc-daftar-tugas, region Singapore). Struktur tabel ada di `supabase/schema.sql`. Untuk latihan, siapa pun yang membuka halaman bisa menambah dan mengubah data; sebelum dipakai tim sungguhan, tambahkan login. Tahap berikutnya: deploy ke Netlify agar punya alamat web.
