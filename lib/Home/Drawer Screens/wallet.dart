import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raymax/Home/Drawer%20Screens/deposit.dart';
import 'package:raymax/Home/Drawer%20Screens/link_account.dart';
import 'package:raymax/Home/Drawer%20Screens/withdraw.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(254, 1, 3, 20),
        title: Text('Wallet'),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
              color: Color.fromRGBO(254, 1, 3, 20),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight:Radius.circular(40))
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Center(
                    child: Icon(Icons.account_balance_wallet_sharp,color: Colors.white,size: 70,),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text('₹ 0',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: Text('Bonus Amount: ₹ 0',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      SizedBox(width: 70,),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Withdraw()));
                      },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white
                          ),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.minus_circle_fill,color: Color.fromRGBO(254, 1, 3, 20),),
                              Text(' Withdraw',style: TextStyle(fontSize: 18,color: Color.fromRGBO(254, 1, 3, 20),),),
                            ],
                          )
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Deposit()));
                      },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white
                          ),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.plus_circle_fill,color: Color.fromRGBO(254, 1, 3, 20),),
                              Text(' Deposit',style: TextStyle(fontSize: 18,color: Color.fromRGBO(254, 1, 3, 20),),),
                            ],
                          )
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>LinkAccount()));
          },
              style: ElevatedButton.styleFrom(
                  primary: Colors.white
              ),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 45,),
                    Text('Link your bank account   ',style: TextStyle(fontSize: 18,color: Color.fromRGBO(254, 1, 3, 20),),),
                    Icon(CupertinoIcons.plus_rectangle_fill_on_rectangle_fill,color: Color.fromRGBO(254, 1, 3, 20),),
                  ],
                ),
              )
          ),
          SizedBox(height: 10,),
          Center(
            child: Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
