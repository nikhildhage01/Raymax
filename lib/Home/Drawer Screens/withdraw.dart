import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Withdraw extends StatefulWidget {
  const Withdraw({Key key}) : super(key: key);

  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 1, 3, 20),
        title: Text('Withdraw'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 200,right: 40,left: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.monetization_on_outlined,color: Colors.white,),
                  filled: true,
                  fillColor: Color.fromRGBO(254, 1, 3, 20),
                  hintText: 'Enter amount',
                  hintStyle: TextStyle(color: Colors.white)
                ),
              ),
              SizedBox(height: 40,),
              Text(
                'Minimum Withdraw amount us limited to 50 and maximum withdraw amount is limited to 25000',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Text(
                  'Please don\'t press the back button while processing the transaction. If there'
                      'any issue with the transaction',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(width: 60,),
                  ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(254, 1, 3, 20),
                      ),
                      child: Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 18)),
                  ),
                  SizedBox(width: 30,),
                  ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(254, 1, 3, 20),
                    ),
                    child: Text('withdraw',style: TextStyle(color: Colors.white,fontSize: 18),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
