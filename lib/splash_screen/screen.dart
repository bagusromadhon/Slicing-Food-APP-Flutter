// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:get/get.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Container(
            padding: EdgeInsets.only(left: 10),
            child: Image.asset(
              'asset/images/burger 1.png',
              width: 30,
              height: 30,
            ),
          ),
          title: Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Text(
                "NeedFood",
                style: TextStyle(color: Color.fromARGB(255, 68, 64, 64)),
              )),
          elevation: 0.0,
        ),
        body: Center(
          child: IntroductionScreen(
            pages: [
              pageview1(),
             
              pageview2(),
              
            ],
            showSkipButton: true,
            skip: const Text("Skip"),
            next: const Text("Next"),
            done: const Text("Done"),
            onDone: () {
              // When done button is press
            },
            baseBtnStyle: TextButton.styleFrom(
              backgroundColor: Colors.grey.shade200,
            ),
            skipStyle: TextButton.styleFrom(primary: Colors.red),
            doneStyle: TextButton.styleFrom(primary: Colors.green),
            nextStyle: TextButton.styleFrom(primary: Colors.blue),
          ),
        ));
  }

  PageViewModel pageview2() {
    return PageViewModel(
              titleWidget: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.only(top: 100),
                          child: const Text(
                            "Temukan",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin:const  EdgeInsets.only(top: 0),
                          child: const Text(
                            "harga terbaik ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
              bodyWidget: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:const [
                        Text(
                          "Ada banyak pilihan menu",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "makanan disini",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ]),
              image: Image.asset("asset/images/Fast food 02 1 (1).png",
                  height: Get.height * 0.9, width: Get.width * 0.9),
            );
  }

  PageViewModel pageview1() {
    return PageViewModel(
              titleWidget: Row(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 100),
                          child: Text(
                            "Pilih Menu",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 0),
                          child: Text(
                            "Favoritmu ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  ),
                ],
              ),
              bodyWidget: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ada banyak Jenis makanan",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "yang tersedia disini",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ]),
              image: Image.asset("asset/images/Fast food 02 1.png",
                  height: Get.height * 0.9, width: Get.width * 0.9),
            );
  }
}
