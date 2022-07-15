import 'dart:convert';

import 'package:azkar/shared/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/components.dart';

// ignore: camel_case_types
class salah extends StatefulWidget {
  const salah({Key? key}) : super(key: key);

  @override
  State<salah> createState() => _salahState();
}

class _salahState extends State<salah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Color.fromARGB(255, 215, 247, 235),
      appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 19, 121, 125),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "أذكار الصلاة ",
                // textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          )),
      body: FutureBuilder(
          future:
              DefaultAssetBundle.of(context).loadString("images/salah.json"),
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
                                  '${showData[index]["category"]}',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 19, 121, 125),
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '${showData[index]["zekr"]}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900),
                                ),
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
