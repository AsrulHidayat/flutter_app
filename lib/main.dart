import 'package:flutter/material.dart'; // memanggil fungsi-fungsi dari berkas flutter lain

void main() { // flutter akan menjalan fungsi main() pertama kali lalu lanjut ke runApp() dan memanggil MyApp()
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, world!'),
        ),
        body: Center(
          child: Text('Hello, world!'),
        ),
      ),
    );
  }
}