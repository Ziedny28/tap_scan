import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Container(
          color: const Color.fromRGBO(0, 198, 232, 1),
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 100,
              ),
              const Text("Welcoma"),
            ],
          ),
        ),
      ),
    );
  }
}
