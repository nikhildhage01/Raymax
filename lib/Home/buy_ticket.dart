import 'package:flutter/material.dart';

class BuyTicket extends StatefulWidget {
  const BuyTicket({Key key}) : super(key: key);

  @override
  _BuyTicketState createState() => _BuyTicketState();
}

class _BuyTicketState extends State<BuyTicket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
        backgroundColor: Color.fromRGBO(254, 1, 3, 20),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: Text('Your Ticket Number',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color.fromRGBO(254, 1, 3, 20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('abcdefg',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Container(
                color: Color.fromRGBO(254, 1, 3, 20),
                height: 150,
                width: 350,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Ticket Amount',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(width: 180,),
                          Text('₹ 5',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16)),
                        ],
                      ),
                    ),
                    Divider(thickness: 2,color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Bonus Applied',style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(width: 180,),
                          Text('₹ 0',style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold,fontSize: 16)),
                        ],
                      ),
                    ),
                    Divider(thickness: 2,color: Colors.white,),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Text('Account Payable',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16),),
                          SizedBox(width: 160,),
                          Text('₹ 5',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 16)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('20% of your Bonus will be used',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Color.fromRGBO(254, 1, 3, 20),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('Once the transaction is successful the amount will be automatically'
                  ' deducted from your bonus',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('Get more Bonus by referring your friends',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyTicket()));
            },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(254, 1, 3, 20),
                ),
                child: Text('Pay Securely', style: TextStyle(color: Colors.white,fontSize: 18),)
            )
          ],
        ),
      ),
    );
  }
}
