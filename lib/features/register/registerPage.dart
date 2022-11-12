import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordConfirmController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(34.0),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                        color: Color(0xff2D3E4F),
                        fontWeight: FontWeight.w800,
                        fontSize: 30),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Please enter the details below to continue.",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 140,
                  child: TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        labelText: 'Full name',
                        hintText: 'Enter your name',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 140,
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        labelText: 'Email Address',
                        hintText: 'Enter your E-mail address',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 140,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Type your password',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 140,
                  child: TextField(
                    controller: _passwordConfirmController,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Password Confirmation',
                        hintText: 'Re-type your password',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(height: 30),
                Container(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        fixedSize:
                            MaterialStateProperty.all(Size.fromWidth(300)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(19),
                        ))),
                    onPressed: () {
                      bool emailValid = RegExp(
                              r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                          .hasMatch(_emailController.text);
                      String text = "";
                      if (_usernameController.text.isEmpty ||
                          _passwordController.text.isEmpty ||
                          _emailController.text.isEmpty ||
                          _passwordConfirmController.text.isEmpty) {
                        text =
                            "Please input your username, email, and password";
                      } else if (_passwordController.text !=
                          _passwordConfirmController.text) {
                        text = "The password confirmation is wrong";
                      } else if (!emailValid) {
                        text = "Wrong email format";
                      } else {
                        Navigator.popAndPushNamed(
                          context,
                          '/loginScreen',
                        );
                      }
                      SnackBar snackBar = SnackBar(content: Text(text));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    child: Text('Register'),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
