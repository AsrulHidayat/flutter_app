import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/study/expanded_and_flexible.dart';
import 'package:flutter_app/study/navigation.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');
    return Scaffold(
      body: SingleChildScrollView(
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
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text(
                        'Open Everyday',
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(height: 8.0),
                      Text(
                        '09:00 - 20:00',
                        style: informationTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.attach_money_outlined),
                      const SizedBox(height: 8.0),
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
                textAlign: TextAlign.justify,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ScrollingScreen()),
                        );
                      },
                      child: const Text('List View'),
                    ),
                  ),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Rainbow()),
                          );
                        },
                        child: const Text('Expanded'),
                      ),
                    ),
                  ),
                ],
              ),
            const Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Tes',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ThirdScreen()),
                          );
                        },
                        child: const Text(
                          '1. Navigation',
                          style: TextStyle(
                          fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  }