import 'package:flutter/material.dart';

class MoneyControlPage extends StatefulWidget {
  const MoneyControlPage({Key? key}) : super(key: key);

  @override
  State<MoneyControlPage> createState() => _MoneyControlPageState();
}

class _MoneyControlPageState extends State<MoneyControlPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 100,
            ),
            const SizedBox(height: 30),
            const Text(
              'Get your Money\nUnder Control',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            const SizedBox(height: 15),
            const Text('Manage your expenses.\nSeamlessyl.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xff7c7c7e))),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff5e5ce5),
                  fixedSize: Size(MediaQuery.of(context).size.width, 50)),
              child: const Text('Sing Up with Email ID'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  fixedSize: Size(MediaQuery.of(context).size.width, 50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/logo_google.png',height: 20,),
                  SizedBox(width: 5,),
                  const Text(
                    'Sing Up with Google',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Sing In',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.white),
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
