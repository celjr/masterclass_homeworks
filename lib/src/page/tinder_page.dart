import 'dart:ui';

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
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
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
              OutlinedButton(
                onPressed: () {},
                child: Text('SING IN EITH APPLE',style: TextStyle(color: Color(0xfffeffff)),),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width,50),
                    side:
                        const BorderSide(color: Color(0xfffeffff), width: 2.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50),
                            right: Radius.circular(50)))),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {},
                child: Text('SING IN EITH APPLE',style: TextStyle(color: Color(0xfffeffff)),),
                style: OutlinedButton.styleFrom(
                  fixedSize: Size(MediaQuery.of(context).size.width,50),
                    side:
                        const BorderSide(color: Color(0xfffeffff), width: 2.0),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(50),
                            right: Radius.circular(50)))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
