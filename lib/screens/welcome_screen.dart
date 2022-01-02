import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:messenger_app/screens/chat_screen.dart';
import 'package:messenger_app/screens/login_screen.dart';
import 'package:messenger_app/screens/rounded_button.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(seconds: 3) /*,upperBound: 100*/);
    // animation = CurvedAnimation(
    //     parent: controller,
    //     curve: Curves
    //         .decelerate /* ye upperBound m error dega q k ye 0-1 ki value leta hai */);
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller!);
    controller!.forward();
    // animation.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse(from: 1.0);
    //   } else if (status == AnimationStatus.dismissed) {
    //     controller.forward();
    //   }
    // });
    controller!.addListener(() {
      //setState k andr value is liye nhi dali q k wo already animationController m change ho rhi
      setState(() {});
    });
  }

  /* jab bhi animationcontroller use kro dispose method use krna hai q
  * jab tk app band nhi hoga ye resources use krta rhe ga
  * tab change krdo tab bhi tw is liye controller bhi krna */
  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(controller.value),
      // backgroundColor: Colors.white,
      backgroundColor: animation!.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: SizedBox(
                    child: Image.asset('assets/logo.png'),
                    // height: controller.value,
                    // height: animation.value * 100,
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('Chat ',
                        textStyle: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                  ],
                ),
                AnimatedTextKit(
                  animatedTexts: [
                    WavyAnimatedText('App',
                        textStyle: const TextStyle(fontSize: 25)),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  // padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationScreen()));
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: const Text(
                    "REGISTER",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
