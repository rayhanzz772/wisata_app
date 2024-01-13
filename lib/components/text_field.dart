import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final String title;
  final bool isAbscure;
  final IconData prefixIcon;
  const MyTextFiled(
      {super.key,
      required this.title,
      required this.isAbscure,
      required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            offset: const Offset(0, 5),
            blurRadius: 25.0,
          )
        ],
      ),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            prefixIcon,
            size: 22,
          ),
          border: InputBorder.none,
          filled: true,
          labelText: title,
          fillColor: Colors.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue.shade400),
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
        ),
      ),
    );
  }
}
