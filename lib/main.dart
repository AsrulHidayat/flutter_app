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
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const Text(
                      'Belajar Button Dulu Ya',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  String? language;
  String _name = '';
  bool lighton = false;
  bool agree = false;
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      body: Center(
        child: Column (
          children: [
             DropdownButton<String>(
              items: const <DropdownMenuItem<String>>[
                DropdownMenuItem<String>(
                  value: 'Dart',
                  child: Text('Dart'),
                ),
                DropdownMenuItem<String>(
                  value: 'Kotlin',
                  child: Text('Kotlin'),
                ),
                DropdownMenuItem<String>(
                  value: 'Swift',
                  child: Text('Swift'),
                ),
              ],
              value: language,
              hint: const Text('Select Language'),
              onChanged: (String? value) {
                setState(() {
                  language = value;
                });
              },
            ),
             Padding(
              padding: const EdgeInsets.all(24.0), // Ubah nilai sesuai kebutuhan
              child: Column(
                children: [
                  TextField(
                    // onChanged: (String value) { // Parameter onChanged berisi sebuah fungsi yang akan dipanggil setiap terjadi perubahan inputan pada TextField.
                      decoration: const InputDecoration(
                        hintText: 'Write your name here...',
                        labelText: 'Your Name',
                       ),
                      onChanged: (String value){
                        setState(() {
                          _name = value;
                        });
                      },
                  ),
                  const SizedBox(height: 20,),
                  ElevatedButton(
                      child: const Text('Submit'),
                      onPressed: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                content: Text('Hello, $_name'),
                              );
                            });
                         },
                  ),
                  Switch(
                      value: lighton,
                      onChanged: (bool value){
                        setState(() {
                          lighton = value;
                        });

                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(lighton? 'light on' : 'light off'),
                              duration: Duration(seconds: 1),
                            ),
                        );
                      }
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ListTile(
                        leading: Radio<String>(
                            value: 'Dart',
                            groupValue: language,
                            onChanged: (String? value){
                              setState(() {
                                language = value;
                                showSnackbar();
                              });
                            },
                        ),
                        title: Text('Dart'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          value: 'Kotlin',
                          groupValue: language,
                          onChanged: (String? value){
                            setState(() {
                              language = value;
                              showSnackbar();
                            });
                          },
                        ),
                        title: Text('Kotlin'),
                      ),
                      ListTile(
                        leading: Radio<String>(
                          value: 'Swift',
                          groupValue: language,
                          onChanged: (String? value){
                            setState(() {
                              language = value;
                              showSnackbar();
                            });
                          },
                        ),
                        title: Text('Swift'),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: Checkbox(
                        value: agree,
                        onChanged: (bool? value) {
                          setState(() {
                            agree = value!;
                          });
                        },
                    ),
                    title: Text('Agree / Disagree'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
    content: Text('$language selected'),
    duration: Duration(seconds: 1) ,
    ),
    );
  }
}


