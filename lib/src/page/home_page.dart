import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.green.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('MasterClass \nAtividade 01',
                style: TextStyle(fontSize: 25)),
            const SizedBox(height: 100),
           ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/moneyControl');
              },
              style: ElevatedButton.styleFrom(fixedSize:const Size(200,50) ),
              child: const Text('Money Control'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/tinder');
                },
                style: ElevatedButton.styleFrom(fixedSize:const Size(200,50) ),
                child: const Text('Tinder'),)
          ],
        ),
      ),
    );
  }
}
