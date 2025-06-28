import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: SimpleElevatedButton(),
        ),
      ),
    );
  }
}

class SimpleElevatedButton extends StatelessWidget {
  const SimpleElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Show a snackbar on click
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Hello, you clicked the button!'),
          ),
        );
      },
      child: const Text('Click Me'),
    );
  }
}
