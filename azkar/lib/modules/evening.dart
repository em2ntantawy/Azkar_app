import 'dart:convert';

import 'package:azkar/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/components.dart';

class evening extends StatefulWidget {
  const evening({Key? key}) : super(key: key);

  @override
  State<evening> createState() => _eveningState();
}

class _eveningState extends State<evening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 215, 247, 235),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 121, 125),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "أذكار  المساء",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )),
      body: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString("images/evening.json"),
          builder: (context, data) {
            if (data.hasError) {
              return Text('${data.error}');
            } else if (data.hasData) {
              var showData = json.decode(data.data.toString());
              return ListView.builder(
                  itemCount: showData.length,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      child: Container(
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Text(
                                  '${showData[index]["zekr"]}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      ' ${showData[index]["reference"]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 12, 106, 109),
                                          fontWeight: FontWeight.w900),
                                    ),
                                    SizedBox(
                                      width: 20.0,
                                    ),
                                    Text(
                                      '   عدد المرات  : ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 12, 106, 109),
                                          fontWeight: FontWeight.w900),
                                    ),
                                    Text(
                                      ' ${showData[index]["count"]}',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 12, 106, 109),
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      '${showData[index]["description"]}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            } else
              return Center(
                child: CircularProgressIndicator(),
              );
          }),
    );
  }
}
