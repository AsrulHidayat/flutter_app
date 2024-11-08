import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
         Container(
           margin: const EdgeInsets.all(16.0),
           child: Text(
             'Malino Highland',
             textAlign: TextAlign.center,
             style: TextStyle(
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
             ),
           )
        ),
         Container(
          margin: EdgeInsets.symmetric(vertical: 16.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: <Widget>[
               Column(
                   children: const <Widget>[
                   Icon(Icons.calendar_today),
                   SizedBox(height: 8.0),
                   Text('Open Everyday'),
               ],
               ),
               Column(
                 children: const <Widget>[
                   Icon(Icons.access_time),
                   SizedBox(height: 8.0),
                   Text('09:00 - 20:00'),
                 ],
               ),
               Column(
                 children: const <Widget>[
                   Icon(Icons.attach_money_outlined),
                   SizedBox(height: 8.0),
                   Text('RP 25.000'),
                 ],
               )
            ],
           )
          ),
         Container(
           padding: const EdgeInsets.all(16.0),
           child: const Text(
             'Malino Highlands adalah destinasi wisata pegunungan yang memukau di Sulawesi Selatan, terkenal dengan pemandangan hijau yang membentang luas, kebun teh yang asri, serta udara sejuk yang menyegarkan. Terletak di dataran tinggi Gowa, tempat ini menawarkan pengalaman unik dengan panorama alam yang memanjakan mata, lengkap dengan spot foto yang instagramable. Pengunjung bisa menikmati berjalan-jalan di antara perkebunan teh, menghirup udara segar, atau bersantai di kafe sambil menikmati teh lokal. Malino Highlands juga memiliki taman bunga yang indah dan berbagai fasilitas rekreasi yang cocok untuk wisata keluarga atau liburan romantis.',
             textAlign: TextAlign.center,
             style: TextStyle(fontSize:16.0),
           ),
         ),
         ],
        ),
      ),
    );
  }
}