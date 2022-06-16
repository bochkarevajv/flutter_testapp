import 'package:flutter/material.dart';
import 'package:nnstories_lesson/UI/pages/login_page.dart';
import 'package:nnstories_lesson/UI/pages/test_screen1.dart';
import 'package:nnstories_lesson/UI/pages/test_screen2.dart';
import 'package:nnstories_lesson/UI/pages/test_screen3.dart';
import 'package:nnstories_lesson/UI/pages/test_screen4.dart';

import '../pages/menu.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;

  MyScaffold({Key? key, this.title = 'Заголовок', required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    if (width > 420) {
      return Scaffold(
        appBar: AppBar(title: Text(title),actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) {
                  return loginPage();
                }));
          },
              icon:const Icon (Icons.logout))
        ],
        backgroundColor: Colors.amber),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
            ),
            Expanded(flex: 3, child: body),
            buildMenu(context, width: width * 0.2),
          ],
        ),
      );
    } else {
      return Scaffold(
          appBar: AppBar(title: Text(title),
          backgroundColor: Colors.cyan),
          drawerEdgeDragWidth: width * 0.7,
          endDrawer: buildMenu(context, width: width * 0.7),
          body: body,
          bottomNavigationBar: BottomNavigationBar(
              onTap: (index)async{
              onPage(index,context);
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.developer_board),
                label: 'Новости',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pages),
                label: 'История',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pages),
                label: '3',
                backgroundColor: Colors.blueGrey,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pages),
                label: '4',
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ));
    }
  }

  void onPage(int index, BuildContext context) {
   Widget page = const TestScreen1();
   switch(index){
     case 0:
       page = const TestScreen1();
       break;
     case 1:
       page = const TestScreen2();
       break;
       case 2:
     page = const TestScreen3();
     break;
     case 3:
       page = const TestScreen4();
       break;
   }
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)
   {return page;}
   ));
  }
}
