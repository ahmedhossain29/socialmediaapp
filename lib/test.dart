import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo"),
      ),
      body: Center(
        child: Row(
          children: [
            Checkbox(
              value: checkBoxValue,
              onChanged: (newValue) {
                setState(() {
                  checkBoxValue = newValue!;
                });
              },
              // fillColor: MaterialStateProperty.resolveWith<Color>(
              //       (Set<MaterialState> states) {
              //     if (states.contains(MaterialState.selected)) {
              //       return Colors.blue;
              //     }
              //     return Colors.white; // Default color
              //   },
              // ),
            ),
            Text("Stay logged in"),
          ],
        ),
      ),
    );
  }
}
