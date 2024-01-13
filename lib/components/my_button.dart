import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final bool logOut;
  final IconData prefixIcon;
  final Color color;
  const MyButton(
      {super.key,
      required this.title,
      required this.prefixIcon,
      required this.color,
      required this.logOut});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        if (logOut) {
          Navigator.pop(context);
        }
      },
      icon: Icon(
        prefixIcon,
        size: 22,
      ),
      label: Text(title),
      style: ButtonStyle(
          backgroundColor: MaterialStateColor.resolveWith((states) => color)),
    );
  }
}
