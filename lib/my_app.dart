import 'package:cd_pro/main.dart';
import 'package:cd_pro/screens/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  MyApp({this.client});

  final Client client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dev',
      theme: ThemeData(
        primarySwatch: (client == Client.bbet) ? Colors.blue : Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recent activity"),
        actions: [
          IconButton(icon: Icon(Icons.login), onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen(title: 'Login for more resources')));
          })
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("What is Flutter?", style: Theme.of(context).textTheme.headline5,),
                  SizedBox(height: 6),
                  Text("An in depth overview to Flutter framework", style: Theme.of(context).textTheme.headline6,),
                  SizedBox(height: 6),
                  Text("- by Asanka B.L", style: Theme.of(context).textTheme.subtitle2,),
                  SizedBox(height: 6),
                  Text("08 Feb 2021", style: Theme.of(context).textTheme.subtitle1,),
                  SizedBox(height: 6),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
