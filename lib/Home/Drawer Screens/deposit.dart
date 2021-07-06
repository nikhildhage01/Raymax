import 'package:flutter/material.dart';

class Deposit extends StatefulWidget {
  const Deposit({Key key}) : super(key: key);

  @override
  _DepositState createState() => _DepositState();
}

class _DepositState extends State<Deposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 1, 3, 20),
        title: Text('Deposit'),
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
                'Minimum Deposit amount us limited to 50 and maximum deposit amount is limited to 25000',
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
                    child: Text('Deposit',style: TextStyle(color: Colors.white,fontSize: 18),),
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
