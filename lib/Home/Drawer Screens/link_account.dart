import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LinkAccount extends StatefulWidget {
  const LinkAccount({Key key}) : super(key: key);

  @override
  _LinkAccountState createState() => _LinkAccountState();
}

class _LinkAccountState extends State<LinkAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 1, 3, 20),
        title: Text('Bank Account'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:80,right: 40,left: 40),
          child: Column(
            children: [
              Center(
                child: Text('Link your bank account',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hoverColor: Color.fromRGBO(254, 1, 3, 20),
                    hintText: 'Account Holder Name'
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.food_bank_outlined),
                    hoverColor: Color.fromRGBO(254, 1, 3, 20),
                    hintText: 'Account Number'
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.qr_code),
                    hoverColor: Color.fromRGBO(254, 1, 3, 20),
                    hintText: 'Bank IFSC code'
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.credit_card_outlined),
                    hoverColor: Color.fromRGBO(254, 1, 3, 20),
                    hintText: 'PAN Number (optional)'
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0.7,0.7),
                        spreadRadius: 2,
                        blurRadius: 2
                      )
                    ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text('Attach a photocopy of any proof(passbook, cancelled cheque, account statement)'
                            'for above account',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: Icon(Icons.add_a_photo,size: 40,color: Color.fromRGBO(254, 1, 3, 20),),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(254, 1, 3, 20)
                  ),
                  child: Text('Submit for Verification',style: TextStyle(fontSize: 18),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
