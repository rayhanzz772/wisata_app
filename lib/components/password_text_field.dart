import 'package:flutter/material.dart';

class MyTextFieldPass extends StatelessWidget {
  final String title;
  final bool isObscure;
  const MyTextFieldPass({
    super.key,
    required this.title,
    required this.isObscure,
  });

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
        obscureText: true,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.password,
            size: 22,
          ),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.remove_red_eye_outlined,
            size: 22,
          ),
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
    ;
  }
}
