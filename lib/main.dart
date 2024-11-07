import 'package:flutter/material.dart'; // memanggil fungsi-fungsi dari berkas flutter lain

void main() { // flutter akan menjalan fungsi main() pertama kali lalu lanjut ke runApp() dan memanggil MyApp()
  runApp(MyApp());
}

class MyApp extends StatelessWidget { // Mendefinisikan widget MyApp
  @override
  Widget build(BuildContext context) { // Fungsi build yang menghasilkan tampilan aplikasi
    return MaterialApp(
      title: 'Flutter Demo', // Judul aplikasi, digunakan oleh beberapa platform tetapi tidak ditampilkan langsung di UI
      theme: ThemeData(
        primarySwatch: Colors.blue, // Tema utama aplikasi dengan warna biru
      ),
      home: Scaffold( // Struktur dasar halaman (app bar, body, dll.)
        appBar: AppBar(
          title: Text('Hello, world!'), // Teks judul di AppBar
        ),
        body: Center( // Widget untuk menengahkan elemen di dalamnya
          child: Column( // Menyusun elemen (Text dan Button) secara vertikal
            mainAxisAlignment: MainAxisAlignment.center, // Pusatkan elemen secara vertikal
            children: [
              Text('Hello, world!'), // Widget Text yang menampilkan pesan di layar
              SizedBox(height: 20), // Menambahkan spasi vertikal antara teks dan tombol
              ElevatedButton( // Membuat tombol dengan gaya ElevatedButton
                onPressed: () {
                  // Aksi saat tombol ditekan
                  print('Button Pressed'); // Mencetak teks ke konsol saat tombol ditekan
                },
                child: Text('Click Me'), // Teks yang muncul pada tombol
              ),
            ],
          ),
        ),
      ),
    );
  }
}
