import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
 class Profile extends StatefulWidget {
   const Profile({Key key}) : super(key: key);

   @override
   _ProfileState createState() => _ProfileState();
 }

 class _ProfileState extends State<Profile> {

   var dateTime = DateTime.now();
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Color.fromRGBO(254, 1, 3, 20),
         title: Text('Profile'),
       ),
       body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.only(top: 120,left: 40,right: 40),
           child: Column(
             children: [
               Center(
                 child: IconButton(icon: Icon(Icons.add_a_photo),),
               ),
               SizedBox(height: 20,),
               TextField(
                 decoration: InputDecoration(
                   prefixIcon: Icon(Icons.email_outlined),
                   hoverColor: Color.fromRGBO(254, 1, 3, 20)
                 ),
               ),
               SizedBox(height: 20,),
               TextField(
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.lock),
                     hoverColor: Color.fromRGBO(254, 1, 3, 20)
                 ),
               ),
               SizedBox(height: 20,),
               TextField(
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.call),
                     hoverColor: Color.fromRGBO(254, 1, 3, 20)
                 ),
               ),
               SizedBox(height: 20,),
               ListTile(
                 title: Text("Date of Birth"),
                 subtitle: Text(
                     "${dateTime.year} - ${dateTime.month} - ${dateTime.day}"),
                 onTap: () async {
                   DateTime picked = await showDatePicker(context: context,
                       initialDate: dateTime,
                       firstDate: DateTime(dateTime.year - 25),
                       lastDate: DateTime(dateTime.year + 80));
                   if (picked != null) {
                     setState(() {
                       dateTime = picked;
                     });
                   }
                 },
               ),
               SizedBox(height: 30,),
               ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                     primary: Color.fromRGBO(254, 1, 3, 20)
                   ),
                   child: Text('Update Profile',style: TextStyle(fontSize: 18),)
               )
             ],
           ),
         ),
       ),
     );
   }
 }
