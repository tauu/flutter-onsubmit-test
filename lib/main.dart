import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MySubmitTest(),
        ),
      ),
    );
  }
}

class MySubmitTest extends StatefulWidget {
  @override
  createState() => MySubmitTestState();
}

class MySubmitTestState extends State<MySubmitTest> {
  String lastSubmittedValue = "";

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleLarge;
    return Column(children: [
      Text('Last submitted value:', style: style),
      Text(lastSubmittedValue, style: style),
      TextField(onSubmitted: (value) {
        setState(() {
          // Store the last submitted value.
          lastSubmittedValue = value;
        });
      }),
    ]);
  }
}
