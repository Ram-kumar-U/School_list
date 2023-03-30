import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const Text(
            "LOGIN",
            style: TextStyle(
                color: Colors.orange,
                fontSize: 110,
                fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "username",
                prefixIcon: Icon(Icons.person),
                hintText: "Name",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Age",
                  prefixIcon: Icon(Icons.numbers)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email Address",
                  prefixIcon: Icon(Icons.email),
                  hintText: "pay@gmail.com"),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility),
                  hintText: "*********"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Phone number",
                prefixIcon: Icon(Icons.call),
                hintText: "mobile number",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Address",
                  prefixIcon: Icon(Icons.home),
                  hintText: "address"),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  maximumSize: const Size(200, 50),
                  minimumSize: const Size(200, 50),
                ),
                onPressed: () {},
                child: const Text("Login")),
          )
        ]),
      ),
    );
  }
}
