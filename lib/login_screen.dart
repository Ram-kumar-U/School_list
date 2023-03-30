import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'data_screen.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Lottie.network(
            'https://assets4.lottiefiles.com/packages/lf20_lqge6px5.json',
            height: 400,
            width: 650,
          ),
          const SizedBox(
            height: 2.0,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Username",
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
          const SizedBox(
            height: 8.0,
          ),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 150, 35, 173),
                  maximumSize: const Size(200, 50),
                  minimumSize: const Size(200, 50),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Datascreen()));
                },
                child: const Text("Login")),
          )
        ]),
      ),
    );
  }
}
