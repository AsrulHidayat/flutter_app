import 'package:flutter/material.dart';
import 'wisatagowa/detail_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(
        fontFamily: 'Oswald',
        primarySwatch: Colors.blue,
      ),
      home: const DetailScreen(),
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


