import 'package:azkar/modules/Duaa.dart';
import 'package:azkar/modules/morning.dart';
import 'package:azkar/modules/evening.dart';
import 'package:azkar/modules/salah.dart';
import 'package:azkar/modules/sleep.dart';
import 'package:azkar/modules/sleep2.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'اذكار الصباح والمساء',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Color.fromARGB(255, 12, 106, 109),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(children: [
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => evening())),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            spreadRadius: 0,
                            offset: Offset(.2, .2))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/night.jpg'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('اذكارالمساء'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => morining())),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            spreadRadius: 0,
                            offset: Offset(.2, .2))
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/sabah.jpg'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('اذكار الصباح'),
                    ],
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'اذكار متنوعة',
              style: TextStyle(
                color: Color.fromARGB(255, 12, 106, 109),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Row(children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => sleep())),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(.2, .2))
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/rokia.jpg'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('اذكارالاستيقاظ من النوم'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => salah())),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(.2, .2))
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/kiam.jpg'),
                          ),
                          Text('اذكار الصلاه'),
                        ],
                      ),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => sleep2())),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(.2, .2))
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/noam2.jpg'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text('اذكار النوم '),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => Duaa())),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 0,
                                offset: Offset(.2, .2))
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('images/salah.jpg'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(' ادعية متنوعة '),
                        ],
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
