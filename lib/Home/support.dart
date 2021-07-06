import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  const Support({Key key}) : super(key: key);

  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 1, 3, 20),
        title: Text('Support'),
      ),
      body: Align(
        alignment: Alignment.bottomLeft,
        child: Column(
          children: [
            Container(
              color: Color.fromRGBO(254, 1, 3, 20),
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          hintText: 'Ask Your Question...',
                          hintStyle: TextStyle(color: Colors.white),

                        ),
                      ),
                    ),
                    IconButton(icon: Icon(Icons.attach_file,color: Colors.white,), onPressed: (){}),
                    SizedBox(width: 5,),
                    IconButton(icon: Icon(Icons.send,color: Colors.white,), onPressed: (){})
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
