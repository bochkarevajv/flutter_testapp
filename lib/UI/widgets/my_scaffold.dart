import 'package:flutter/material.dart';

import '../pages/menu.dart';

class MyScaffold extends StatelessWidget {
  int _selectedIndex = 0;
  final String title;
  final Widget body;
   MyScaffold({Key? key, this.title='Заголовок', required this.body}) : super(key: key);
  
  @override
  Widget build(BuildContext context)  {
    double width = MediaQuery.of(context).size.width;

    if (width > 420) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Text(
                title,
                style: TextStyle(fontSize: 24),
              ),
            ),
            Expanded(
                flex: 3,
                child: body
            ),
            buildMenu(context,width:width * 0.2),
          ],
        ),
      );

    } else {
      return Scaffold(

          appBar: AppBar(title: Text(title)),
          drawerEdgeDragWidth: width * 0.7,
          endDrawer:buildMenu(context, width:width * 0.7),
          body: body,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.indigoAccent,
          onTap: _onPage,
           items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.pages),
                label: '1',
            backgroundColor: Colors.indigo,
            ),
            BottomNavigationBarItem(icon: Icon(Icons.pages),
              label: '2',
              backgroundColor: Colors.indigo,),
            BottomNavigationBarItem(icon: Icon(Icons.pages),
              label: '3',
              backgroundColor: Colors.indigo,),
            BottomNavigationBarItem(icon: Icon(Icons.pages),
              label: '4',
              backgroundColor: Colors.indigo,),
          ],

          

        )

      );
    }
  }

    
  void _onPage(int index) {
    setState () {
      _selectedIndex = index;
    };
  }
}

