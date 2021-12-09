import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Schedule Management',
      theme:new ThemeData(appBarTheme: AppBarTheme(backgroundColor: Color(0xff3e065f))),
      home: const MyHomePage(title: 'Schedule Management'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3e065f),
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(accountName: Text('Username'),
              accountEmail: Text('Testemail@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pinimg.com/originals/bd/cd/4e/bdcd4e097d609543724874b01aa91c76.png'),
              ) ,)
        ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff3e065f),
        child:
        Icon(Icons.add),),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,

      body: SfCalendar(
        view: CalendarView.month,
        headerStyle: CalendarHeaderStyle(
          textAlign: TextAlign.center,
            backgroundColor: Color(0xff3e065f),
            textStyle: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.normal,
                letterSpacing: 5,
                color: Color(0xFFff5eaea),
                fontWeight: FontWeight.w500),
        ),
        todayHighlightColor: Color(0xff3e065f),
        monthViewSettings: MonthViewSettings(
            showAgenda: true,
            agendaStyle: AgendaStyle(
               backgroundColor: Color(0xff5c48cd),
               appointmentTextStyle: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Color(0xFF0ffcc00)),
               dateTextStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
               dayTextStyle: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
            )),
            monthCellStyle: MonthCellStyle(
                backgroundColor: Color(0xFF3E065F),
                trailingDatesBackgroundColor: Color(0xff3e065f),
                leadingDatesBackgroundColor: Color(0xff3e065f),
                todayBackgroundColor: Color(0xde2b317b),
                textStyle: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Urbanist'),
                todayTextStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Urbanist'),
                trailingDatesTextStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                    fontFamily: 'Urbanist'),
                leadingDatesTextStyle: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 12,
                    fontFamily: 'Urbanist'))),
      ),
    );
  }
}