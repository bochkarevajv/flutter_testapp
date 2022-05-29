import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/test_screen1.dart';
import 'package:nnstories_lesson/UI/pages/test_screen2.dart';
import 'package:nnstories_lesson/UI/pages/test_screen3.dart';
import 'package:nnstories_lesson/UI/pages/test_screen4.dart';

Widget buildMenu(BuildContext context, {width = 200}) {
  return Container(
    width: width,
    color: Colors.blueAccent,

    child: Column(
      children: [
        SizedBox(
          height: 70,
        ),
        ListTile(
          title: Text('Страница 1'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return TestScreen1();
                }));
          },
        ),
        ListTile(
          title: Text('Страница 2'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return TestScreen2();
              }));
            },
        ),
        ListTile(
          title: Text('Страница 3'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return TestScreen3();
                }));
          },
        ),
        ListTile(
          title: Text('Страница 4'),
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return TestScreen4();
                }));
          },
        ),
      ],
    ),
  );
}