import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_navigation/get_navigation.dart';

class thirdscreen extends StatefulWidget {
  Map details;
  thirdscreen(this.details);

  @override
  State<thirdscreen> createState() => _thirdscreenState();
}

class _thirdscreenState extends State<thirdscreen> {
  int number = 10;

  adding() {
    setState(() {
      number++;
    });
  }

  String prgh =
      "Do you love travel or do you admire nature? If you do, welcome aboard. Well, if you don't, welcome to you more. :)We travel not to escape life but for life not to escape us. TO TRAVEL IS TO LIVE. So, let's travel before we run out of time.Nature is the beginning, more so will be the end. We feel the love, see the life and thrive in the nature. No matter what, nature is the ultimate teacher, a lifetime friend and the infinitely loving family.''";
  String prgh2 =
      "Today, people have had the enough of so called technological and electronic advancements in the world. What do you think most of the people seek for nowadays? We believe and trust, we’ve found out the answer which is Mother Nature. They want to get back to the nature. Nature is the only thing that never changes and embraces everyone like her own child. Considering this fact, we have initiated a small step in tourism to build the bridge between the nature and the people.";
  String prgh3 =
      "Nepal is a beautiful land with the sky touching mountain ranges, lush valleys and forests, serene landscapes, exotic wild lives and the diverse local cultures and traditions. We promise to take you there and let you experience all these with local feelings. Once you’re with us, be assured you’re in the happiest hands and your life is sure to change forever. ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          adding();
        },
        child: Column(
          children: [
            Icon(
              Icons.favorite,
              color: Colors.redAccent,
            ),
            Text(
              number.toString(),
              style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(widget.details['image']),
                    fit: BoxFit.cover)),
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 38, left: 18),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.24),
                    shape: BoxShape.circle),
                child: Center(
                    child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.black,
                  size: 24,
                )),
              ),
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 250,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Colors.white.withOpacity(0.7),
                      size: 32,
                    ),
                    Text(
                      widget.details['location'],
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      widget.details['quote'],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Text(
                          prgh,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          prgh2,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          prgh3,
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(8)),
                            child: Center(
                              child: Text(
                                "Wanna Explore",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 28),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
