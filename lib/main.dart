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
      body: const Center( // Penambahan Body, Badan Aplikasi
        child: Text('Hello world'),
      ),
      floatingActionButton: FloatingActionButton( // ingat awalan huruf kecil atau camelCase menandakan kalau itu adalah property. Sedangkan awalan kapital menandakan bahwa itu adalah Class.
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}