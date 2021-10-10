import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          // SizedBox(
          //   height: 30.0,
          // ),
          Image.asset(
            "images/1.png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20.0,
            // child: Text("lmao"),
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Login"),
                  // style: TextButton.styleFrom(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
