# 🏨 LuxeHotel - Room Booking & Management System

[![Laravel Version](https://img.shields.io/badge/Laravel-v11.x-FF2D20?logo=laravel&logoColor=white)](https://laravel.com)
[![TailwindCSS](https://img.shields.io/badge/TailwindCSS-v3.x-06B6D4?logo=tailwindcss&logoColor=white)](https://tailwindcss.com)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

LuxeHotel adalah aplikasi sistem informasi manajemen reservasi hotel, inventaris kamar, dan verifikasi alur *Check-In / Check-Out* berbasis web. Aplikasi ini dirancang dengan arsitektur modern menggunakan komponen bertenaga Tailwind CSS, navigasi adaptif, dukungan penuh terhadap *Dark Mode*, serta mekanisme verifikasi menggunakan integrasi sistem *Dynamic QR Code*.

Proyek ini dibangun secara khusus untuk memenuhi standar penilaian tugas besar mata kuliah **Pemrograman Web / Rekayasa Perangkat Lunak**.

---

## ✨ Fitur Utama & Detail Implementasi

### 🔐 1. Autentikasi & Manajemen Hak Akses (RBAC)
* **Email-Based Authentication**: Mengeliminasi kolom `username` tradisional pada database dan form pendaftaran untuk memangkas redundansi data. Autentikasi sepenuhnya bertumpu pada *Electronic Mail* dan *Password*.
* **Symmetrical Form Layout**: Desain antarmuka yang presisi dan sejajar antara halaman tambah (*create*) dan ubah (*edit*) pengguna untuk menjaga konsistensi pengalaman visual (*User Experience*).
* **Multi-Role Authorization**: 
  * `System Administrator (admin)`: Hak penuh untuk mengelola konfigurasi sistem, data kamar, harga, dan manajemen akun staf.
  * `Operational Staff (petugas)`: Hak terbatas untuk mengeksekusi proses reservasi, verifikasi kedatangan tamu (*check-in*), serta kepulangan tamu (*check-out*).

### 🔑 2. Resepsionis & Verifikasi Akses Real-Time
* **Check-In & Check-Out Live Tracker**: Pencatatan waktu riil (*real-time timestamp*) yang mencatat kapan tamu melakukan check-in dan check-out lengkap dengan data *Duty Officer* (petugas yang melayani).
* **Dynamic QR Code Generator**: Integrasi API eksternal yang merender data string `kode_booking` menjadi gambar kode matriks QR secara dinamis melalui jendela modal pop-up interaktif tanpa membebani penyimpanan server lokal.
* **Live Room Status**: Status kamar akan otomatis berubah menjadi `Occupied` saat tamu berhasil diverifikasi masuk dan kembali menjadi `Available` / `Dirty` saat proses check-out selesai disinkronisasi.

---

## 🛠️ Arsitektur Teknologi

* **Backend & Routing Engine:** Laravel 11.x (PHP >= 8.2)
* **Frontend UI:** Blade Templating Engine + Tailwind CSS v3.x
* **State & Icons:** Lucide Icons Client-side Directive
* **Database Driver:** MySQL 8.0+ / MariaDB
* **QR Engine Core:** API Server-less QR Generator (HTTPS Rest Client)

---

## 🗄️ Skema & Struktur Database (Ringkasan)

Sistem ini mengandalkan relasi erat antar tabel demi menjaga integritas data transaksi hotel:

* **Tabel `users`**: Menyimpan profil operator (`id`, `name`, `email`, `password`, `role`, `timestamps`). *Catatan: Tidak mengandung kolom username.*
* **Tabel `tamus`**: Menyimpan data identitas pelanggan (`id`, `nik`, `nama_lengkap`, `no_telepon`, `email`).
* **Tabel `kamars`**: Menyimpan spesifikasi ruangan (`id`, `nomor_kamar`, `tipe_kamar`, `harga`, `status`).
* **Tabel `bookings`**: Menghubungkan tamu, kamar (via *pivot table* `booking_kamar`), rentang tanggal sewa, total bayar, dan status transaksi.
* **Tabel `checkins`**: Pencatatan log kedatangan (`id`, `booking_id`, `user_id`, `waktu_checkin`).

---

## 🔁 Alur Kerja Operasional (Workflow)

```text
[Tamu Reservasi] ➡️ [Terbit Kode Booking] ➡️ [Tamu Tiba di Hotel]
                                                   ⬇️
[Selesai Check-Out] ⬅️ [Scan QR / Validasi] ⬅️ [Petugas Eksekusi Check-In]

---

## 🔗 Tautan Aplikasi (Live Demo)

Anda dapat mengakses dan menguji aplikasi yang sudah dideploy secara langsung melalui tautan di bawah ini:
* **Link Hosting**: [https://samarabt.my.id/](https://samarabt.my.id/) 
* **Video Demo**: [https://youtu.be/link-video-anda](https://youtu.be/link-video-anda)
