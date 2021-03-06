import 'package:flutter/material.dart';
import 'package:flash_chat/refactor_code/rounded_button.dart';
import 'package:flash_chat/constants.dart';

class RegistrationScreen extends StatefulWidget {

  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {

  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                //Do something with the user input.
                email = value;
              },
              decoration: kTextFileDecoration.copyWith(hintText: 'Enter your email..',labelText: 'Enter your email')
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,//use for hide password
              onChanged: (value) {
                //Do something with the user input.
                password = value;
              },
              decoration: kTextFileDecoration.copyWith(hintText: "Enter your password..",labelText: 'Enter your password ')
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                onPressed: (){
                  print('Email : $email');
                  print('Password : $password');
                },
              colour: Colors.blueAccent,
              buttonText: 'Register',
            )
          ],
        ),
      ),
    );
  }
}
