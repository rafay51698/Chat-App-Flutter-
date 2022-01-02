// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// // import 'package:messenger_app/text_controllers/controller.dart';
// // import 'package:messenger_app/widgets/constants.dart';

// final _firestore = FirebaseFirestore.instance;

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final _auth = FirebaseAuth.instance;
//   User? loggedInUser;
//   void getCurrenUser() async {
//     try {
//       final user =  _auth.currentUser;
//       if (user != null) {
//         loggedInUser = user;
//       }
//     } catch (e) {
//       // ignore: avoid_print
//       print(e);
//     }
//   }

//   // void getmessages() async {
//   //   final messages = await _firestore.collection('messages').doc().snapshots();
//   //   for (var messages in messages.
//   // }
//   void messageStreams() async {
//     await for (var snapshot in _firestore.collection('messages').snapshots()) {
//       for (var message in snapshot.docs) {
//         // ignore: avoid_print
//         print(message.data());
//       }
//     }
//   }

//   @override
//   void initState() {
//     super.initState();

//     getCurrenUser();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading:
//             IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
//         actions: <Widget>[
//           IconButton(
//               icon: const Icon(Icons.close),
//               onPressed: () {
//                 messageStreams();
//                 // _auth.signOut();
//                 // Navigator.pop(context);
//               }),
//         ],
//         title: const Text('Chat'),
//         backgroundColor: Colors.lightBlueAccent,
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             StreamBuilder<QuerySnapshot>(
//                 stream: _firestore.collection('messages').snapshots(),
//                 builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                   if (!snapshot.hasData) {
//                     return const Center(
//                       child: CircularProgressIndicator(),
//                     );
//                   }
//                   return ListView.builder(
//                       shrinkWrap: true,
//                       physics: const NeverScrollableScrollPhysics(),
//                       itemCount: snapshot.data!.docs.length,
//                       itemBuilder: (context, index) {
//                         return snapshot.data!.docs[index]['text'];
//                       });
//                   // return Container();
//                 }),
//             //         Container(
//             //           decoration: kMessageContainerDecoration,
//             //           child: Row(
//             //             crossAxisAlignment: CrossAxisAlignment.center,
//             //             children: <Widget>[
//             //               Expanded(
//             //                 child: TextField(
//             //                   controller: messageController,
//             //                   decoration: kMessageTextFieldDecoration,
//             //                 ),
//             //               ),
//             //               TextButton(
//             //                 onPressed: () {
//             //                   _firestore.collection('messages').add({
//             //                     'text': messageController.text,
//             //                     'sender': loggedInUser!.email,
//             //                   });
//             //                 },
//             //                 child: const Text(
//             //                   'Send',
//             //                   style: kSendButtonTextStyle,
//             //                 ),
//             //               ),
//             //             ],
//             //           ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }
// }
