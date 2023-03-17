import 'package:flutter/material.dart';
import 'package:meus_gastos/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              colors: [
                ProjectColors.primary,
                ProjectColors.secondary,
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )),
          ),
          SafeArea(
            // padding: const EdgeInsets.only(top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Bem vindo',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                const Text(
                  'User Name',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  // color: Colors.whtie,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Card(
                        child: Container(height: 80),
                      ),
                      Card(
                        child: Container(height: 80),
                      ),
                      Card(
                        child: Container(height: 80),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.abc,
                color: ProjectColors.primary,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.access_alarm_outlined,
                color: ProjectColors.primary,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.telegram,
                color: ProjectColors.primary,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.keyboard_double_arrow_down_sharp,
                color: ProjectColors.primary,
              ),
              label: ''),
        ],
      ),
    );
  }
}
