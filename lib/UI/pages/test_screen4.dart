import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/test_screen1.dart';
import 'package:nnstories_lesson/UI/pages/menu.dart';

import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';

class TestScreen4 extends StatelessWidget {
  const TestScreen4({Key? key}) : super(key: key);
  static const String title = 'Music';

  @override
  Widget build(BuildContext context) {
    return MyScaffold( title: title, body: buildbody (context),);
  }

  buildbody(BuildContext context) {
    return Scaffold(
      body: Card (
        margin: EdgeInsets.all(10),
        color: Colors.green[100],
        shadowColor: Colors.blueGrey,
        elevation: 10,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon (
                  Icons.album,
                  color: Colors.cyan,
                  size: 45
              ),
              title: Text(
                "How Long",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text('Tove Lo'),
            ),
          ],
        ),
      ),
    );
  }




}


