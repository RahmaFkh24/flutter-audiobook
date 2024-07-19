import 'package:flutter/material.dart';
import 'db_helper.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'صلواتي',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: BoxListScreen(),
    );
  }
}

class BoxListScreen extends StatelessWidget {
  final List<String> texts = [
    "أذكار المساء",
    "أذكار الصباح",
    "أذكار النوم",
    "اذكار المسجد",
    "اذكار الصلاة",
    "اذكار الوضوء",
    "اذكار الفرج والرزق",
    "اذكار قيام الليل",
    "اذكار حصن المسلم",
    "أذكار الخلاء",
    // Add more texts as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('صلواتي'),
        actions: <Widget>[
          Icon(Icons.notifications, size: 40, color: Colors.green),
        ],

      ),
      body: ListView.builder(
        itemCount: texts.length,
        itemBuilder: (context, index) {
          return BoxItem(text: texts[index]);
        },

      ),

    );
  }
}

class BoxItem extends StatelessWidget {
  final String text;

  BoxItem({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 100.0,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
