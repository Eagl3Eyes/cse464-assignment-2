import 'package:flutter/material.dart';

import 'SecondPage.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome To"),
            Text("Plan IT", style: TextStyle(fontSize: 30 , fontWeight: FontWeight.w900) ),
            SizedBox(
              height: 200,
            ),
            Text("Your Personal task management \n and planning solution"),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black
              ),
                onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const SecondPage())
                  );
                },
                child: Text("Let's Get Started", style: TextStyle(color: Colors.white60),),
            )

          ],
        ),

      ),
    );
  }
}