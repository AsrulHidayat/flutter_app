import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 32),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('images/malino.jpg'),
            Container(
              margin: const EdgeInsets.all(16),
              child: const Text(
                'Malino Highland',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Staatliches',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.calendar_today),
                      SizedBox(height: 8.0),
                      Text(
                        'Open Everyday',
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.access_time),
                      SizedBox(height: 8.0),
                      Text(
                        '09:00 - 20:00',
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.attach_money_outlined),
                      SizedBox(height: 8.0),
                      Text(
                        'RP 25.000',
                        style: informationTextStyle,
                      ),
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
            SizedBox(
              height: 150,
              child: ListView(
                padding: const EdgeInsets.only(left: 8, right: 8),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('https://www.malinohighlands.com/uploads/0000/1/2022/08/23/dsc028861.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('https://www.malinohighlands.com/uploads/0000/1/2022/08/18/a.jpg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network('https://www.malinohighlands.com/uploads/0000/1/2022/10/03/628379ae69c43-600.jpg'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        )

      ),
    );
  }
  }