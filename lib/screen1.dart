import 'package:demo_app2/screen2.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _currentIndex = 2;
    void onTappedBar(int index){
      setState(() {
        _currentIndex = index;
      });
      Navigator.push(context, MaterialPageRoute(builder: (context) => screen2(),),);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Calendar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text("Selected Day - ${today.toString().split(" ")[0]}"),
            Container(
              child: TableCalendar(
                headerStyle: const HeaderStyle(
                    formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                onDaySelected: _onDaySelected,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today,
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 10, 16),
              ),
            ),
            // Expanded(child: children[_currentIndex]),
          ],
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
