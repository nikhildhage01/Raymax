import 'package:flutter/material.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 1, 3, 20),
        title: Text('Notifications',
          style: TextStyle(fontSize: 18),
        ),
      ),
      body: Column(
        children: [
          Not(title :'Nine Raymax players wins Second Division')
        ],
      ),
    );
  }
}


class Not extends StatefulWidget {
  final String title;
  const Not({Key key,this.title}) : super(key: key);
  @override
  _NotState createState() => _NotState();
}

class _NotState extends State<Not> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height:  100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                  color: Colors.black45,
                  offset: Offset(0.7,0.7),
                  spreadRadius: 2,
                  blurRadius: 2
              )
            ]
        ),
        child: Row(
          children: [
            SizedBox(width: 100,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 12,),
                Flexible(child: Text(
                  widget.title,
                  style: TextStyle( fontWeight: FontWeight.bold),
                )),
                SizedBox(height: 4),
                Text(DateTime.now().toString())
              ],
            ),

          ],
        )
      ),
    );
  }
}
