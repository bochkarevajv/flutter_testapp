import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/test_screen1.dart';
import 'package:nnstories_lesson/UI/pages/menu.dart';

import 'package:nnstories_lesson/UI/widgets/my_scaffold.dart';

class TestScreen3 extends StatelessWidget {
  const TestScreen3({Key? key}) : super(key: key);
  static const String title = 'Страница 3';

  Future<Widget> getImage() async {
    final Completer<Widget> completer = Completer();
    final url = 'https://img.setka.io/clients/Y3rrQsBYdklU7LKHrKdZGAsOKvGNy2cd/post_images/content_kreml.jpeg';
    final image = NetworkImage(url);
    //
    final load = image.resolve(const ImageConfiguration());


    await Future.delayed(Duration(seconds: 2));

    final listener = new ImageStreamListener((ImageInfo info, isSync) async {
      print(info.image.width);
      print(info.image.height);
      completer.complete(Container(child: Image(image: image)));
    });

    load.addListener(listener);
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return MyScaffold(title: title, body: buildbody(context),);
  }

  buildbody(BuildContext context) {
    return Scaffold(

        body: Container(
            margin: const EdgeInsets.all(10),
            child: Column(
                children: <Widget>[
                  Card(
                      elevation: 10,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const ListTile(
                            leading: Icon(Icons.place),
                            title: Text('Достопримечательности'),
                            subtitle: Text('Какой-то текст'),
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: FutureBuilder<Widget>(
                              future: getImage(),
                              builder: (BuildContext context, AsyncSnapshot snapshot) {
                              if (snapshot.hasData) {
                               return snapshot.data;
                               } else {
                                return Text('Loading...');}
                              },
                            ),

                          )

                        ],
                      )

                  ),
                ]
            )
        )
    );
  }
}


