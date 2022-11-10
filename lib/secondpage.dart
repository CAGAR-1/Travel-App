import 'package:flutter/material.dart';
import 'package:travel_app/Thirdscreen.dart';
import 'package:get/get.dart';
import 'package:travel_app/buttonbar.dart';
import 'package:travel_app/firstscreen.dart';
import 'package:travel_app/fourthscreen.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List imagen = [
    'images/Mountain.jpg',
    'images/forest.jpg',
    'images/desert.jpeg',
    'images/beach.jpg',
    'images/snow.jpeg',
    'images/ocean.jpeg',
  ];

  List names = [
    'Mountain',
    'forest',
    'desert',
    'beach',
    'snow',
    'ocean',
  ];

  List locations = [
    'Mount Everest, Nepal',
    'Black Forest, Germany',
    'Sahara Desert.',
    'Palawan, Philippines',
    'Niseko, Japan',
    'British Virgin Islands'
  ];
  List quotes = [
    'The best view comes after the hardest climb.',
    'A grove of giant redwoods or sequoias should be kept just as we keep a great or beautiful cathedral.',
    'Nothing is built on stone; all is built on sand, but we must build as if the sand were stone',
    'Let the waves hit your feet, and the sand be your seat',
    'Snow falling soundlessly in the middle of the night will always fill my heart with sweet clarity',
    'Dance with the waves, move with the sea, let the rhythm of the water set your soul free'
  ];

  List topic = [
    'Top',
    'Popular',
    'Trending',
    'Favourite',
    'most Visited',
  ];

  String topicchoosen = 'Top';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.sort,
          size: 30,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.pink,
            backgroundImage: AssetImage('images/explore2.jpeg'),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: [
          Text(
            "Your Daily",
            style:
                TextStyle(fontSize: 22, color: Colors.black.withOpacity(0.6)),
          ),
          SizedBox(
            height: 0,
          ),
          Text(
            "Recommendation",
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black.withOpacity(0.6)),
          ),
          Container(
            height: 250,
            child: ListView.builder(
                itemCount: 6,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? 0 : 20, bottom: 15, top: 5),
                        height: 200,
                        width: 190,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                          image: DecorationImage(
                              image: AssetImage(
                                imagen[index],
                              ),
                              fit: BoxFit.cover),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          names[index],
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  );
                })),
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: topic.length,
              itemBuilder: ((context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                        onTap: () {
                          setState(() {
                            topicchoosen = topic[index];
                          });
                        },
                        child: Text(
                          topic[index],
                          style: TextStyle(
                              color: topicchoosen == topic[index]
                                  ? Colors.black
                                  : Colors.black.withOpacity(0.5),
                              fontSize: 20,
                              fontWeight: topicchoosen == topic[index]
                                  ? FontWeight.w700
                                  : FontWeight.w400),
                        )));
              }),
            ),
          ),
          Container(
            height: 310,
            child: ListView.builder(
                itemCount: imagen.length,
                scrollDirection: Axis.vertical,
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => thirdscreen({
                            'image': imagen[index],
                            'location': locations[index],
                            'quote': quotes[index]
                          }));
                    },
                    child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Card(
                          margin: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          shadowColor: Colors.pink,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 35,
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.pink,
                                      image: DecorationImage(
                                          image: AssetImage(
                                            imagen[index],
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 65,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_rounded,
                                          color: Colors.grey.withOpacity(0.6),
                                          size: 20,
                                        ),
                                        Text(
                                          locations[index],
                                          style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.8),
                                              fontWeight: FontWeight.w700),
                                        )
                                      ],
                                    ),
                                    Divider(),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      quotes[index],
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                  );
                })),
          ),
        ],
      ),
      bottomNavigationBar: buttonbar(),
    );
  }
}
