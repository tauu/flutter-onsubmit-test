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
  String lastSubmittedValue1 = "";
  String lastSubmittedValue2 = "";
  String lastSubmittedValue3 = "";

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleLarge;
    return Column(children: [
      Text('Last submitted value:', style: style),
      Text('1: $lastSubmittedValue1', style: style),
      Text('2: $lastSubmittedValue2', style: style),
      Text('3: $lastSubmittedValue3', style: style),
      TextField(
          decoration: const InputDecoration(label: Text('1 - No InputAction')),
          onSubmitted: (value) {
            setState(() {
              // Store the last submitted value.
              lastSubmittedValue1 = value;
            });
          }),
      TextField(
          decoration:
              const InputDecoration(label: Text('2 - InputAction: next')),
          textInputAction: TextInputAction.next,
          onSubmitted: (value) {
            setState(() {
              // Store the last submitted value.
              lastSubmittedValue2 = value;
            });
          }),
      TextField(
          decoration:
              const InputDecoration(label: Text('3 - InputAction: send')),
          textInputAction: TextInputAction.send,
          onSubmitted: (value) {
            setState(() {
              // Store the last submitted value.
              lastSubmittedValue3 = value;
            });
          }),
    ]);
  }
}
