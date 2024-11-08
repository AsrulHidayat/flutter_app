import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
        )
      ),
      home: const FirstScreen(),// Panggil FirstScreen di sini

    );
  }
}

// Sekarang kita akan membuat scaffold yang terdiri atas AppBar, Body, dan FloatingActionButton yang merupakan kerangka atau widget penting dalam flutter, sebenarnya masih banyak tapi 3 komponen ini adalah yang paling utama.

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( // Membuat AppBar yang berada paling atas aplikasi
        title: const Text('First Screen'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Center( // Penambahan Body, Badan Aplikasi

        // Saatnya belajar container, Container adalah widget yang digunakan untuk melakukan styling, membuat sebuah shape (bentuk), dan layout pada widget child-nya.
        child: Container(
          color: Colors.transparent, // Pastikan latar belakang container tetap transparan
          child: Align(
            alignment: Alignment.topLeft, // Posisikan teks di pojok kiri atas

            // Widget Center, merupakan sebuah widget yang digunakan untuk membuat suatu widget berada pada posisi tengah.
            child: Center(
            child: Container(

              // Mengenal decoration, Decoration merupakan bagian dari Container untuk styling. Pada decoration kita dapat menentukan warna background (solid/gradient color), shadow, border, border radius (membulatkan sudut), mengatur shape (bentuk), dan lain-lain.
              decoration: BoxDecoration(
                color: Colors.red,
                // shape: BoxShape.circle,
                border: Border.all(color: Colors.orange, width: 3),
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      offset: Offset(3, 6),
                      blurRadius: 10,
                  )
                ]
              ),

              // width: 80,
              // height: 80, // width dan height ialah container dalam teks
              // padding: const EdgeInsets.all(10), // Memberikan ruang di sekitar teks

              margin: const EdgeInsets.all(10), // Memberikan Ruang terluar di atas lapisan dari padding

              // Di bawah ini adalah widget padding, widget Padding merupakan sebuah widget yang khusus untuk memberikan padding pada suatu widget.

              child: Padding(
                padding: const EdgeInsets.all(30),
                child: const Text(
                'Hi',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white, // Warna teks tetap putih
                ),
              ),
              ),
            ),
          ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton( // ingat awalan huruf kecil atau camelCase menandakan kalau itu adalah property. Sedangkan awalan kapital menandakan bahwa itu adalah Class.
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}