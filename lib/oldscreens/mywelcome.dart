// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter/material.dart';
// import 'package:messenger_app/oldscreens/mylogin.dart';
// import 'package:messenger_app/oldscreens/myregister.dart';

// class MyWelcome extends StatefulWidget {
//   const MyWelcome({Key? key}) : super(key: key);

//   @override
//   _MyWelcomeState createState() => _MyWelcomeState();
// }

// class _MyWelcomeState extends State<MyWelcome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   child: Image.asset('assets/logo.png'),
//                   height: MediaQuery.of(context).size.height * 0.2,
//                   // height: 160,
//                 ),
//                 AnimatedTextKit(
//                   animatedTexts: [
//                     WavyAnimatedText('Chat ',
//                         textStyle: const TextStyle(
//                             fontSize: 25, fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//                 AnimatedTextKit(
//                   animatedTexts: [
//                     WavyAnimatedText('App',
//                         textStyle: const TextStyle(fontSize: 25)),
//                   ],
//                 )
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               child: Material(
//                 elevation: 5.0,
//                 color: Colors.lightBlueAccent,
//                 borderRadius: BorderRadius.circular(30.0),
//                 child: MaterialButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const LoginScreen(),
//                       ),
//                     );
//                   },
//                   minWidth: 200.0,
//                   height: 42.0,
//                   child: const Text(
//                     'Log In',
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 16.0),
//               child: Material(
//                 color: Colors.blueAccent,
//                 borderRadius: BorderRadius.circular(30.0),
//                 elevation: 5.0,
//                 child: MaterialButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => const RegisterScreen(),
//                       ),
//                     );
//                   },
//                   minWidth: 200.0,
//                   height: 42.0,
//                   child: const Text(
//                     'Register',
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
