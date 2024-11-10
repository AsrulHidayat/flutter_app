import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView( // Membuat halaman dapat di-scroll
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(16.0),
                child: const Text(
                  'Malino Highland',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://i.pinimg.com/564x/32/ce/98/32ce98432995d6ae16702831c66016ed.jpg',
                      width: 200,
                      height: 200,
                    ),
                    Image.asset(
                        'images/malino.jpg',
                        width: 200,
                        height: 200
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text('09:00 - 20:00'),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.attach_money_outlined),
                        SizedBox(height: 8.0),
                        Text('RP 25.000'),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  'Malino Highlands adalah destinasi wisata pegunungan yang memukau di Sulawesi Selatan, terkenal dengan pemandangan hijau yang membentang luas, kebun teh yang asri, serta udara sejuk yang menyegarkan. Terletak di dataran tinggi Gowa, tempat ini menawarkan pengalaman unik dengan panorama alam yang memanjakan mata, lengkap dengan spot foto yang instagramable. Pengunjung bisa menikmati berjalan-jalan di antara perkebunan teh, menghirup udara segar, atau bersantai di kafe sambil menikmati teh lokal. Malino Highlands juga memiliki taman bunga yang indah dan berbagai fasilitas rekreasi yang cocok untuk wisata keluarga atau liburan romantis.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Belajar Button Dulu Ya',
                      style: TextStyle(
                          fontFamily: 'Oswald',
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: 16.0), // Jarak antara teks dan tombol
                    ElevatedButton(
                      child: const Text("Tombol"),
                      onPressed: () {
                        // Aksi ketika ElevatedButton diklik
                      },
                    ),
                    const SizedBox(height: 8.0), // Jarak antar tombol
                    TextButton(
                      child: const Text('Text Button'),
                      onPressed: () {
                        // Aksi ketika TextButton diklik
                      },
                    ),
                    const SizedBox(height: 8.0), // Jarak antar tombol
                    OutlinedButton(
                      child: const Text('Outlined Button'),
                      onPressed: () {
                        // Aksi ketika OutlinedButton diklik
                      },
                    ),
                    const SizedBox(height: 8.0), // Jarak antar tombol
                    IconButton(
                      icon: const Icon(Icons.volume_up),
                      tooltip: 'Increase volume by 10',
                      onPressed: () {
                        // Aksi ketika IconButton diklik
                      },
                    ),
                    const SizedBox(height: 16.0), // Jarak antara tombol dan dropdown
                    ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman FirstScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const FirstScreen()),
                        );
                      },
                      child: const Text('Go to First Screen'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}