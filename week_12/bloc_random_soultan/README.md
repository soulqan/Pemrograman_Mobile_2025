# Praktikum 7

Soal 13

File random_bloc.dart berisi semua logika bisnis. File ini menerima event dari UI melalui input sink dan mengirimkan hasil kembali ke UI menggunakan output stream. Proses utamanya adalah menghasilkan angka acak. Selain itu, stream akan ditutup menggunakan dispose untuk mencegah kebocoran memori. Dengan BLoC, UI tidak perlu tahu cara data diolah; UI hanya bertugas menampilkan angka baru yang diterimanya.

<img src="img/soal13.gif" alt="Demo Photo Filter" width="300">