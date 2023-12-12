import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({Key? key}) : super(key: key);
  @override 
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rizky Angkata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              child: const Text('Merah'),
              onPressed: () {
                color = Colors.red.shade700;
                Navigator.pop(context, color);
              }),
             ElevatedButton(
              child: const Text('Abu-abu'),
              onPressed: () {
                color = Colors.grey.shade700;
                Navigator.pop(context, color);
              }),
            ElevatedButton(
              child: const Text('Kuning'),
              onPressed: () {
                color = Colors.yellow.shade700;
                Navigator.pop(context, color);
              }),
          ],
        )
      )
    );
  }
}