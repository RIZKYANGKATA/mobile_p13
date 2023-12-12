import 'package:flutter/material.dart';
import 'package:mobile_p13/navigation_second.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({Key? key}) : super(key: key);

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        title: const Text('Rizky Angkata'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () async {
            // Use async/await to get the color from the second screen
            final resultColor = await _navigateAndGetColor(context);

            // Update the color if a new color is selected
            if (resultColor != null) {
              setState(() {
                color = resultColor;
              });
            }
          },
        ),
      ),
    );
  }

  // Define _navigateAndGetColor outside of the build method
  Future<Color?> _navigateAndGetColor(BuildContext context) async {
    // Use Navigator.push to navigate to the second screen
    return Navigator.push(
      context,
      MaterialPageRoute<Color>(
        builder: (context) => const NavigationSecond(),
      ),
    );
  }
}

