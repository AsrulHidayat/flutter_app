import 'package:flutter/material.dart';
import 'package:flutter_app/wisatagowa/detail_screen.dart';
import 'package:flutter_app/study/expanded_and_flexible.dart';
import 'package:flutter_app/main.dart';

class SecondScreen extends StatelessWidget {
  final String message;

  const SecondScreen(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message), // Menampilkan teks yang dikirimkan
            const SizedBox(height: 16),
            OutlinedButton(
              child: const Text('Kembali'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ThirdScreen extends StatelessWidget {
  final String message = 'Hello from First Screen!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Pindah Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(message),
              ),
            );
          },
        ),
      ),
    );
  }
}
