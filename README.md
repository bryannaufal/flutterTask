# counter_7

## Jawaban Pertanyaan

**Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.**
Stateless widget adalah sebuah widget yang statis atau tidak berubah-ubah
Statefull widget adalah sebuah widget yang dinamis atau dapat diubah-ubah dengan dipicu oleh perubahan suatu variabel, interaksi yang dilakukan oleh user, dll.

**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya**
`Text` Untuk menampilkan tulisan ganjil dan genap serta menampilkan angka
`Padding` Untuk memberikan jarak
`Row` Untuk membuat childrenya ada di 1 baris
`Visibility` Menghilangkan dan menampilkan button untuk decrement
`FloatingActionButton` Sebuah widget yang bisa diclick dan terhubung dengan function increment dan decrement

**Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**
Untuk memberi tahu bahwa terdapat sesuatu yang diubah, sehingga program akan melakuka build lagi sehingga perubahan yang telah dilakukan dapat ditampilkan.
variabel `_counter` akan berubah ketika decrement atau increment dipanggil

**Jelaskan perbedaan antara const dengan final.**
`const` Value sudah harus diketahui ketika sedang di compile
`final` Value sudah harus diketahui ketika sedang di run
Baik `const` atau `final` sama-sama tidak bisa diubah setelah di inisialisasi

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
- Membuat program baru bernama counter_7 dengan `flutter create counter_7`
Karena ketika kita create sudah ada kode bawaan, sehingga kita hanya perlu merubah hal-hal berikut:
- Mengubah judul menjadi "Program Counter"
- Mengubah text menjadi ganjil atau genap
- Menambahkan tombol minus di kiri bawah

Logika Increment sudah ada pada kode bawaan, sehingga kita hanya perlu membuat logika decrement
Ketika 0 maka visible jadi false sehingga tidak bisa ditekan
terdapat logika untuk cek ganjil genap sebelum membuat widget `text`

# Flutter Form

## Jawaban Pertanyaan

**Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`.**
`Navigator.push` dan `Navigator.pushReplacement` sama-sama berguna untuk melakukan perpindahan ke halaman lain. Namun, terdapat perbedaan yaitu pada `Navigator.push` tidak menghapus route sebelumnya sehingga kita masih bisa balik ke halaman sebelumnya sedangkan pada `Navigator.pushReplacement` route sebelumnya akan dihapus sehingga kita tidka bisa balik ke halaman sebelumnya.

**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
`Text` Untuk menampilkan tulisan ganjil dan genap serta menampilkan angka
`Padding` Untuk memberikan jarak
`Row` Untuk membuat childrenya ada di 1 baris
`Visibility` Menghilangkan dan menampilkan button untuk decrement
`FloatingActionButton` Sebuah widget yang bisa diclick dan terhubung dengan function increment dan decrement
`TextFormField` Membuat tempat untuk input text
`Form` Membuat form
`DropdownButton` Membuat sebuah dropdown
`TextButton` Membuat sebuah tombol
`Navigator` Untuk pindah ke page yang diinginkan
`DatePicker` Untuk memilih tanggal
`Drawer` Untuk melakukan perpindahan halaman

**Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).**
onPressed
onChanged
onSaved
onTap

**Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.**
bekerja seperti stack dan yang akan ditampilkan pada user adalah yang berada pada paling atas stack. Ketika dilakukan `Navigator.push` maka akan terjadi push ke stack dan yang berada di paling atas stack akan berubah sehingga yang ditampilkan ke user adalah yang baru saja di push.

**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
Membuat drawer yang dilakukan di drawer.dart untuk melakukan navigasi ke tiga halaman
Membuat sebuah class dataBudget pada budgetData.dart yang dapat menyimpan hasil input dari form
Membuat form yang menerima input judul, nominal, jenis, dan tanggal pada budgetForm.dart
Menampilkan output berupa budget yang sudah diinput pada budgetList.dart



# Integrasi Web Service pada Flutter

## Jawaban Pertanyaan

**Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**
Kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu, tetapi kita jadi tidak bisa mengaksesnya sebagai class dan hal tersebut tidak efisien

**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**
`FutureBuilder` Membuat widget berdasarkan data yang baru saja diambil
`SizedBox` Membuat kotak dengan ukuran tetap
`MaterialPageRoute` Mengganti halaman
`Checkbox` Membuat sebuah check box


**Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.**
Kita perlu menambahkan dependancy http terlebih dahulu untuk melakukan HTTP request sepert GET, POST, PUSH, dll.
Kita juga sangat disarankan untuk membuat model yang sesuai dengan respons dari data yang berasal dari web service
Setelah itu, kita bisa melakukan HTTP request dan dikonversi
Data yang telah dikonversi dapat ditampilkan menggunakan FutureBuilder


**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**
Pertama-tama saya melakukan refaktor terlebih dahulu pada kodingan saya dengan membuat model dan page pada folder terpisah
Membuat model myWatchList di `myWatchList.dart`
Membuat `fetchData.dart` untuk melakukan pengambilan data dari webservice
Membuat page untuk menampilkan daftar nama film serta page untuk detail film dan ditambahkan pada drawer