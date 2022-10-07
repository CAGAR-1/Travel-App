import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            'images/explore2.jpeg',
            fit: BoxFit.cover,
            color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          )),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 35),
            children: [
              SizedBox(
                height: 100,
              ),
              Text(
                "Travel",
                style: TextStyle(
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Before you run out of time",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              SizedBox(
                height: 400,
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.double_arrow,
                      color: Colors.white,
                    ),
                    Text(
                      "Lets travel",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "not all who wander",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "and lost",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
