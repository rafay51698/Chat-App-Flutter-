import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:messenger_app/screens/chat_screen.dart';
import 'package:messenger_app/text_controllers/controller.dart';
import 'package:messenger_app/widgets/constants.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _auth = FirebaseAuth.instance;
  bool obscureText = true;

  adduser() async {
    // ignore: unused_local_variable
    try {
      final newUser = await _auth.createUserWithEmailAndPassword(
          email: emailControlR.text, password: passControlR.text);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChatScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nameControlR,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter Username'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              controller: emailControlR,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter email'),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: obscureText,
              controller: passControlR,
              decoration:
                  kTextFieldDecoration.copyWith(hintText: 'Enter password'),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / (9 * 1.5),
              margin: const EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextButton(
                  onPressed: adduser,
                  child: const Text(
                    'Register',
                    style: kTextStyle,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
