// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:messenger_app/text_controllers/controller.dart';
// import 'package:messenger_app/widgets/constants.dart';

// import 'mychat.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   loginUser() async {
//     try {
//       // ignore: unused_local_variable
//       final user = await _auth.signInWithEmailAndPassword(
//           email: emailControlLogin.text, password: passControlLogin.text);

//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const ChatScreen(),
//         ),
//       );
//     } on FirebaseException catch (e) {
//       // print(e);
//       Text('$e');
//     }
//   }

//   final _auth = FirebaseAuth.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailControlLogin,
//               decoration:
//                   kTextFieldDecoration.copyWith(hintText: 'Enter email'),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             TextField(
//               obscureText: true,
//               controller: passControlLogin,
//               decoration:
//                   kTextFieldDecoration.copyWith(hintText: 'Enter password'),
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Container(
//               width: MediaQuery.of(context).size.width / 1.5,
//               height: MediaQuery.of(context).size.height / (9 * 1.5),
//               margin: const EdgeInsets.only(top: 5),
//               decoration: BoxDecoration(
//                 color: Colors.deepOrange,
//                 borderRadius: BorderRadius.circular(18),
//               ),
//               child: TextButton(
//                   onPressed: loginUser,
//                   child: const Text(
//                     'Login',
//                     style: kTextStyle,
//                   )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
