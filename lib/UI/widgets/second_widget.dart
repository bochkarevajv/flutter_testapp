import 'package:flutter/material.dart';

class SecondWidget extends StatelessWidget{
  const SecondWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.3,
        height: 200,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          image: const DecorationImage(
            image: NetworkImage('https://sun9-60.userapi.com/VmdvKLxuqa_JO3At0xWWmr5ZTTyRYIM-66p--w/rSbrhqJLyyw.jpg'),
            fit: BoxFit.cover,
          ),
          border: Border.all( color: Colors.white70, width:3),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(30),
        child: ElevatedButton(
            child: Text("click me"),
            onPressed: () {}

        )
    );
  }
  
}