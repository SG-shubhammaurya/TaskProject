// ignore: file_names
import 'dart:convert';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taskapplication/StateManagement/register_provider.dart';
import 'package:taskapplication/UiPage/home_page.dart';
import 'package:taskapplication/util/component.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late String name;
  late String userName;
  late String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Background(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: const Text(
                  "REGISTER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2661FA),
                      fontSize: 36),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                  decoration: const InputDecoration(
                      labelText: "Name",
                      floatingLabelStyle: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      userName = value;
                    });
                  },
                  decoration: const InputDecoration(
                      labelText: "Username",
                      floatingLabelStyle: TextStyle(fontSize: 20)),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: const InputDecoration(
                      labelText: "Password",
                      floatingLabelStyle: TextStyle(fontSize: 20)),
                  obscureText: true,
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                alignment: Alignment.centerRight,
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                child: InkWell(
                  onTap: () {
                    // Provider.of<RegistrationProvider>(context,listen:false).getDetails();
                    Provider.of<RegistrationProvider>(context, listen: false)
                        .registerUser(name, userName, password)
                        .then((value) {
                      if (value != null) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      }
                    });
                  },
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                  //textColor: Colors.white,
                  //padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        color: Colors.blue
                        // gradient:  LinearGradient(
                        //   colors: [
                        //     Color.fromARGB(255, 255, 136, 34),
                        //     Color.fromARGB(255, 255, 177, 41)
                        //   ]
                        // )
                        ),
                    padding: const EdgeInsets.all(0),
                    child: const Text(
                      "Register",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
