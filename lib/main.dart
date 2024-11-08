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
        ),
      ),
      home: const FirstScreen(), // Panggil FirstScreen di sini
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Column( // Menggunakan Column untuk menempatkan widget secara vertikal
        mainAxisAlignment: MainAxisAlignment.start, // Menyusun secara vertikal ke atas
        children: <Widget>[

          Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row( // Row di atas Container
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyusun item di dalam Row ke tengah
                children: const <Widget>[
                  Icon(Icons.share, color: Colors.blue),
                  Icon(Icons.thumb_up, color: Colors.blue),
                  Icon(Icons.thumb_down,color: Colors.blue),
              ],
            ),
          ),

          const SizedBox(height: 20), // Memberikan jarak antara Row dan Container

          // Container yang ada sebelumnya
          Container(
            decoration: BoxDecoration( // Gunakan BoxDecoration untuk styling
              color: Colors.red, // Tentukan warna dalam BoxDecoration
              border: Border.all(color: Colors.orange, width: 3),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(3, 6),
                  blurRadius: 10,
                ),
              ],
            ),
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(30),
            child: const Text(
              'Hi',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 20), // Memberikan jarak antara Container dan Row berikutnya

          Column(
            children: const <Widget>[
              Text(
                'Sebuah Judul',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text('Lorem ipsum dolor sit amet'),
            ],
          )

        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
