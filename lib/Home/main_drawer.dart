import 'package:flutter/material.dart';
import 'package:raymax/Home/Drawer%20Screens/profile.dart';
import 'package:raymax/Home/Drawer%20Screens/wallet.dart';
 class MainDrawer extends StatefulWidget {
   const MainDrawer({Key key}) : super(key: key);

   @override
   _MainDrawerState createState() => _MainDrawerState();
 }

 class _MainDrawerState extends State<MainDrawer> {
   @override
   Widget build(BuildContext context) {
     return Container(
       width: 320,
       color: Colors.white,
       child: Column(
         children: [
           Container(
             height: 150,
             color: Color.fromRGBO(254, 1, 3, 20),
             child: Align(
               alignment: Alignment.bottomLeft,
               child: ListTile(
                 title: Text('suaum99', style: TextStyle(color: Colors.white),),
                 subtitle: Text('suaum99@gmail.com',style: TextStyle(color: Colors.white70)),
               ),
             )
           ),
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
             },
             leading: Icon(Icons.account_circle, color: Color.fromRGBO(254, 1, 3, 20),),
             title: Text('Profile'),
           ),
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet()));
             },
             leading: Icon(Icons.account_balance_wallet_outlined, color: Color.fromRGBO(254, 1, 3, 20)),
             title: Text('Wallet'),
           ),
           ListTile(
             leading: Icon(Icons.article_outlined, color: Color.fromRGBO(254, 1, 3, 20)),
             title: Text('My Ticket'),
           ),
           ListTile(
             leading: Icon(Icons.history, color: Color.fromRGBO(254, 1, 3, 20)),
             title: Text('History'),
           ),
           ListTile(
             leading: Icon(Icons.people, color: Color.fromRGBO(254, 1, 3, 20)),
             title: Text('Refer & Earn'),
           ),
           ListTile(
             leading: Icon(Icons.logout, color: Color.fromRGBO(254, 1, 3, 20)),
             title: Text('Logout'),
           ),
           ListTile(
             leading: Icon(Icons.bookmark, color: Color.fromRGBO(254, 1, 3, 20)),
             title: Text('Terms & Privacy Policy'),
           ),
         ],
       ),
     );
   }
 }
