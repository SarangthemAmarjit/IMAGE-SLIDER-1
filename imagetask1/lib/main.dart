import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:imagetask1/firstview.dart';
import 'package:imagetask1/secondview.dart';
import 'package:imagetask1/thirdview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Imagetask1(),
    );
  }
}

class Imagetask1 extends StatefulWidget {
  const Imagetask1({Key? key}) : super(key: key);

  @override
  State<Imagetask1> createState() => _Imagetask1State();
}

class _Imagetask1State extends State<Imagetask1> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Slider"),
        actions: [
          Icon(Icons.horizontal_rule, size: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Icon(
              Icons.check_box_outline_blank_outlined,
              size: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, left: 15),
            child: Icon(
              Icons.close,
              size: 20,
            ),
          )
        ],
        backgroundColor: Colors.red,
        toolbarHeight: 30,
        leading: Icon(Icons.print),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Color.fromARGB(255, 235, 183, 14)],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(16))),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 8),
                      child: Icon(
                        Icons.menu,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, right: 8),
                      child: Icon(
                        Icons.account_circle,
                        size: 40,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 45, left: 8),
                  child: Text(
                    "Where would you like to go?",
                    style: TextStyle(fontSize: 32, color: Colors.white70),
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelColor: Colors.black87,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: [
                    Tab(text: "Popupar"),
                    Tab(text: "Recommended"),
                    Tab(text: "Cost-effect"),
                  ]),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(controller: _tabController, children: [
              First(),
              Second(),
              Third(),
            ]),
          ),
        ],
      ),
    );
  }
}
