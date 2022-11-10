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

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
