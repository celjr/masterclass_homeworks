import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TinderPage extends StatefulWidget {
  const TinderPage({Key? key}) : super(key: key);

  @override
  State<TinderPage> createState() => _TinderPageState();
}

class _TinderPageState extends State<TinderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffe94976), Color(0xffee7462)],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight),
          ),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      alignment: Alignment.topLeft,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_left_rounded,
                        color: Color(0xfffeffff),
                        size: 40,
                      )),
                ],
              ),
              const SizedBox(height: 120),
              Image.asset('assets/images/logo_tinder.png', height: 40),
              const SizedBox(height: 80),
              RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                    style:const  TextStyle(fontSize: 13),
                    children: [
                const TextSpan(
                    text:
                        'By tapping Create Account or Sing in, you agree to our '),
                TextSpan(
                  style: const TextStyle(decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,),
                    text: 'Term',
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                const TextSpan(text: '. Learn how we process your data in our '),
                TextSpan(
                    text: 'Privacy Policy ',
                    style: const TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                const TextSpan(text: 'and '),
                TextSpan(
                    text: 'Cookies Policy',
                    style: const TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                const TextSpan(text: '.')
              ])),
              const SizedBox(height: 30),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 45),
                    side:
                        const BorderSide(color: Color(0xfffeffff), width: 2.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50),
                            right: Radius.circular(50)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/logo_apple.png',height: 20,),
                    const Spacer(),
                    const Text(
                      'SING IN EITH APPLE',
                      style: TextStyle(color: Color(0xfffeffff)),
                    ),
                    const Spacer()
                  ],
                ),
              ),
              const SizedBox(height: 5),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 45),
                    side:
                        const BorderSide(color: Color(0xfffeffff), width: 2.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50),
                            right: Radius.circular(50)))),
                child: Row(
                  children: [
                    Image.asset('assets/images/logo_facebook.png',height: 20,),
                    const Spacer(),
                    const Text('SING IN WITH FACEBOOK',
                        style: TextStyle(color: Color(0xfffeffff))),
                    const Spacer()
                  ],
                ),
              ),
              const SizedBox(height: 5),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width, 45),
                    side:
                        const BorderSide(color: Color(0xfffeffff), width: 2.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50),
                            right: Radius.circular(50)))),
                child: Row(
                  children: [
                    Image.asset('assets/images/bubble.png',height: 20,),
                    const Spacer(),
                    const Text(
                      'SING IN WITH PHONE NUMBER',
                      style: TextStyle(color: Color(0xfffeffff)),
                    ),
                    const Spacer()
                  ],
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                  onPressed: () {},
                  child: const Text('Trouble Signing In?',
                      style: TextStyle(color: Color(0xfffeffff))))
            ],
          ),
        ),
      ),
    );
  }
}
