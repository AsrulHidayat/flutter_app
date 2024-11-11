import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';
import 'package:flutter_app/wisatagowa/detail_screen.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.purple,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: FloatingActionButton.extended(
              backgroundColor: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ExpandedFlexiblePage()),
                );
              },
              label: Text(
                'Pindah',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ExpandedFlexiblePage extends StatelessWidget{
  const ExpandedFlexiblePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: const[
                  ExpandedWidget(),
                  FlexibleWidget(),
                ],
              ),
              Row(
                children: const[
                  ExpandedWidget(),
                  ExpandedWidget(),
                ],
              ),
              Row(
                children: const[
                  FlexibleWidget(),
                  FlexibleWidget(),
                ],
              ),
              Row(
                children: const[
                  FlexibleWidget(),
                  ExpandedWidget(),
                ],
              ),
            ],
          )
      ),
    );
  }
}
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
class FlexibleWidget extends StatelessWidget{
  const FlexibleWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.tealAccent,
             border: Border.all(color: Colors.white)
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Flexibel',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 24,
              ),
            ),
          ),
        ),
    );
  }
}