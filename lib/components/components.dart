import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String buttonText;
  final Function() function;
  final double horizontalPadding;
  final IconData? iconData;
  const MainButton({
    super.key,
    this.buttonText = "Button Text",
    required this.function,
    this.horizontalPadding = 40.0,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    if (iconData != null) {
      return FilledButton.icon(
        icon: Icon(iconData),
        onPressed: function,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromRGBO(255, 240, 44, 1)),
        ),
        label: Padding(
          padding: EdgeInsets.only(
              left: horizontalPadding,
              right: horizontalPadding,
              top: 12,
              bottom: 12),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    } else {
      return FilledButton(
        onPressed: function,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
              const Color.fromRGBO(255, 240, 44, 1)),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: horizontalPadding,
            right: horizontalPadding,
            top: 12,
            bottom: 12,
          ),
          child: Text(
            buttonText,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      );
    }
  }
}

class MainTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const MainTextField(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: const TextStyle(color: Color.fromRGBO(0, 198, 232, 1)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class ContinueWithGoogleButton extends StatelessWidget {
  final Function() function;
  final String text;
  const ContinueWithGoogleButton(
      {super.key, required this.function, required this.text});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: FilledButton(
        onPressed: function,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Color.fromRGBO(0, 198, 232, 1),
                fontSize: 14,
              ),
            ),
            Image.asset(
              'assets/images/google-logo.png',
              width: 40,
            )
          ],
        ),
      ),
    );
  }
}
