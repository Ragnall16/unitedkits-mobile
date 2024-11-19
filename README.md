# UnitedKits (Table of Contents)

## Link 
[UnitedKits (Web)](http://ragnall-muhammad-unitedkits.pbp.cs.ui.ac.id/) <br>
[UnitedKits (Mobile) ~ Coming Soon]()

## Tugas: 
[Tugas 7](#Tugas-7) <br>
[Tugas 8](#Tugas-8) <br>
[Tugas 9](#Tugas-9) <br>

---

## Tugas 7
### 1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang tidak memiliki state atau kondisi yang bisa berubah setelah widget tersebut dibuat. Sekali widget ini di-render, widget tersebut akan tetap sama dan tidak bisa memperbarui tampilannya berdasarkan perubahan data internal.
Stateful widget, sebaliknya, adalah widget yang memiliki state atau kondisi yang bisa berubah seiring waktu, dan dapat diperbarui tanpa harus merender ulang seluruh aplikasi.
Sesuai namanya, perbedaan kedua widget adalah Stateless tidak memiliki state, sedangkan stateful memiliki state

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
1. Scaffold: Menyediakan struktur dasar untuk UI aplikasi

2. AppBar: Menampilkan bar di bagian atas layar dengan judul

3. Column dan Row: Digunakan untuk menata widget lain

4. Padding: Menambahkan ruang di sekitar widget untuk membantu penataan

5. InfoCard: Widget kustom yang menampilkan kartu kecil dengan judul dan konten

6. ItemCard: Widget ini menampilkan item individual dengan ikon dan teks

7. InkWell: Menambahkan ripple effect saat user menekan / interaksi dengan ItemCard

8. SnackBar: Menampilkan pesan singkat di bagian bawah layar ketika ItemCard ditekan

9. MaterialApp: Membungkus seluruh aplikasi, menyediakan konfigurasi global seperti tema dan judul aplikasi

10. ThemeData: Mengatur skema warna aplikasi

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState digunakan pada stateful widget untuk memberitahukan bahwa ada perubahan pada state, sehingga Flutter perlu merender ulang widget tersebut
Hanya variabel yang dideklarasikan di dalam kelas state yang bisa terdampak oleh setState().

### 4. Jelaskan perbedaan antara const dengan final.
const digunakan untuk nilai yang bersifat konstan pada waktu kompilasi dan tidak dapat diubah setelah ditetapkan.
final digunakan untuk nilai yang bersifat tetap setelah inisialisasi, tetapi nilainya bisa ditentukan pada waktu runtime

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

a. Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.
- Pada terminal tempat projek akan disimpan, menjalankan flutter create unitedkits

b. Membuat tiga tombol sederhana dengan ikon dan teks
- Membuat class ItemHomePage dengan variabel final nama (String) dan icon (IconData) dan constructor yang sesuai
- Membuat 3 objek ItemHomePage pada MyHomePage dengan parameter sesuai

c. Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout)
- menambahkan variabel color dengan tipe data Color pada class ItemHomePage (membuat final dan menambahkan parameter pada constructor)
- Pada pembuatan tombol di MyHomePage, menambahkan color yang berbeda untuk setiap tombol

d. Memunculkan Snackbar dengan tulisan:
"Kamu telah menekan tombol ..." ketika tombol ... ditekan.
- pada class ItemCard, menambahkan
```dart
child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
        }
```

---
## Tugas 8
### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Kegunaan sekaligus keuntungan const adalah membuat performa aplikasi lebih optimal. Const sebaiknya digunakan pada stateless widget. Sedangkan hindari const untuk stateful widget.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column : Menyusun widget secara vertikal <br>
Row : Menyusun widget secara horizontal <br>
Contoh penggunaan Column: Chapter dalam Novel / Komik <br>
Contoh penggunaan Row: Icon - Icon pada Navbar

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen Input yang saya gunakan adalah TextFormField yang digunakan untuk memasukkan teks pada name, amount, dan description. Yang tidak saya gunakan antara lain, DropdownButton, Checkbox, Switch, dll.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Saya mengatur tema dengan menggunakan ThemeData pada main.dart.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigator.pop() untuk menutup form <br>
Navigator.pushReplacement() untuk untuk halaman saat ini dengan halaman tujuan tanpa menumpuk rute <br>
Navigator.push() membuka halaman form

---
## Tugas 9
### 1.  Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model menjaga struktur data konsisten, validasi otomatis, memudahkan pemeliharaan. Iya, model diperlukan untuk mencegah error seperti parsing atau missing fields.
### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Library http digunakan untuk membuat permintaan HTTP (GET, POST, dll.), mengirim/menerima data JSON, dan menangani autentikasi melalui header.
### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest berguna untuk mengelola cookies secara otomatis untuk session-based authentication, memastikan sesi konsisten antar permintaan, dan mempermudah pengelolaan autentikasi. CookieRequest perlu dibagikan agar sesi autentikasi konsisten, efisien tanpa membuat instance baru, dan mudah dikelola di seluruh aplikasi.
### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Input dari pengguna diformat ke JSON, dikirim ke backend via HTTP, backend memproses dan mengembalikan response yang ditampilkan di UI Flutter.
### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Data dikirim ke Django, validasi dilakukan (login/session atau simpan data), response diterima Flutter, dan UI diupdate sesuai status autentikasi.
### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
a. Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter, Membuat halaman login pada proyek tugas Flutter, dan Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
<br>
Menambahkan provider dan pbp_django_auth, Menambahkan CookieRequest pada page yang dibutuhkan, membuat method yang sesuai pada app authentication pada project Django, lalu membuat page login dan register yang menyesuaikan <br><br>

b. Membuat model kustom sesuai dengan proyek aplikasi Django. <br>
Mengambil data json dari projek Django, masukkan ke website [QuickType](https://app.quicktype.io/), pilih language Dart dan nama Model yang sesuai, lalu copy paste hasil dari website tersebut ke dalam suatu file yang ada di folder models. <br> <br>

c. Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy dan Tampilkan name, price, dan description dari masing-masing item pada halaman ini <br>
Mengambil semua data dari json milik user (sudah di implementasi pada django), masukkan ke dalam list
```Dart
List<ECommerce> listOrder = [];
    for (var d in data) {
      if (d != null) {
        listOrder.add(ECommerce.fromJson(d));
      }
    }
    return listOrder;
```
Lalu tampilkan dengan ListView dengan field yang diperlukan <br> <br>

d. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item dan Tampilkan seluruh atribut pada model item kamu pada halaman ini. <br>
Membuat file baru dalam folder screens yang membuat class yang perlu Objek Item sebagai constructor, tampilkan semua field dari objek yang didapat dari daftar semua item <br> <br>
e. Halaman ini dapat diakses dengan menekan salah satu item pada halaman daftar Item. <br>
Tambahkan method onTap pada ListTile item pada daftar semua item
```Dart
onTap: () {
        Navigator.push(
        context,
        MaterialPageRoute(
                builder: (context) => OrderDetailPage(
                item: snapshot.data![index],
                ),
        ),
        );
        },
```
<br> <br>
f. Tambahkan tombol untuk kembali ke halaman daftar item. <br>
Jika menggunakan Navigator.push, Flutter secara otomatis menambahkan back button pada AppBar, hal ini merupakan built-in feature Scaffold dan AppBar, namun jika mau menambahkan juga, bisa menambahkan
```Dart
ElevatedButton(
        onPressed: () => Navigator.pop(context),
        child: const Text("Back to Order List"),
        ),
```
<br> <br>
g. Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login. <br>
Sudah dilakukan pada implementasi django