import 'package:clean_nepali_calendar/clean_nepali_calendar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Nepali Calendar Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    final NepaliDateTime first =NepaliDateTime(2070,1);
    final NepaliDateTime last = NepaliDateTime(2080,12);
    return Scaffold(
      appBar: AppBar(
        title: Text('Clean Nepali Calendar'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CleanNepaliCalendar(
              initialDate: NepaliDateTime.now(),
              firstDate: first,
              lastDate: last,
              language: Language.nepali,
              onDaySelected: (day){
                print(day.toString());
              },
              
            ),
          ],
        ),
      ),
    );
  }
}