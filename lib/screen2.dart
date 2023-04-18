import 'package:demo_app2/screen1.dart';
import 'package:flutter/material.dart';

class screen2 extends StatefulWidget {
  screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  int _currentIndex = 4;

  void onTappedBar(int index){
    setState(() {
      _currentIndex = index;
    });
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Content"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Center(
          child: ListView(
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Image(
                      image: AssetImage('assets/fertility.jpg'),
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: const Text(
                      "Fertility",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Image(
                      image: AssetImage('assets/fertility.jpg'),
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: const Text(
                      "Sex",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: const Image(
                      image: AssetImage('assets/fertility.jpg'),
                    ),
                  ),
                  Container(
                    width: 300,
                    decoration: BoxDecoration(color: Colors.grey),
                    child: const Text(
                      "Menstruation",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurpleAccent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        currentIndex: _currentIndex,
        onTap: onTappedBar,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.incomplete_circle),
              label: "Cycle",
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "Calendar"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Track"),
          BottomNavigationBarItem(
              icon: Icon(Icons.analytics_outlined), label: "Analysis"),
          BottomNavigationBarItem(
              icon: Icon(Icons.content_copy_outlined), label: "Content"),
        ],
      ),
    );
  }
}
