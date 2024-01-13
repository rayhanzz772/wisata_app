import 'package:flutter/material.dart';
import 'package:login_flutter_app/components/my_button.dart';
import 'package:login_flutter_app/components/password_text_field.dart';
import 'package:login_flutter_app/components/text_field.dart';
import 'package:login_flutter_app/pages/home_page.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 18),
            child: Column(
              children: [
                const Text(
                  "Let's get started!",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Create an account to Q allure to get all features",
                  style: TextStyle(color: Colors.grey[600], fontSize: 16),
                ),
                const SizedBox(
                  height: 48,
                ),
                const MyTextFiled(
                  title: "Name",
                  isAbscure: false,
                  prefixIcon: Icons.person_2_outlined,
                ),
                const SizedBox(
                  height: 38,
                ),
                const MyTextFiled(
                  title: "Email",
                  isAbscure: false,
                  prefixIcon: Icons.email_outlined,
                ),
                const SizedBox(
                  height: 38,
                ),
                const MyTextFiled(
                  title: "Phone",
                  isAbscure: false,
                  prefixIcon: Icons.phone_android,
                ),
                const SizedBox(
                  height: 38,
                ),
                const MyTextFieldPass(
                  title: "Password",
                  isObscure: true,
                ),
                const SizedBox(
                  height: 38,
                ),
                const MyTextFieldPass(
                  title: "Confirm password",
                  isObscure: true,
                ),
                const SizedBox(
                  height: 48,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 10,
                      shadowColor: Colors.indigo[500],
                      backgroundColor: Colors.indigo.shade800,
                      padding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 48,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    "CREATE",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade900,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        "Login here",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue.shade600,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
