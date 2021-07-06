import 'package:flutter/material.dart';
 class Signup extends StatefulWidget {
   const Signup({Key key}) : super(key: key);

   @override
   _SignupState createState() => _SignupState();
 }

 class _SignupState extends State<Signup> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         height: 900,
         color: Color.fromRGBO(254, 1, 3, 20),
         child: Padding(
           padding: const EdgeInsets.all(20.0),
           child: SingleChildScrollView(
             child: Column(
               children: [
                 SizedBox(height: 180,),
                 Text('RAYMAX',
                   style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.w800,
                       fontSize: 22
                   ),
                 ),
                 SizedBox(height: 20,),
                 TextFormField(
                   decoration: InputDecoration(
                       prefixIcon: Icon(Icons.call, color: Colors.black,),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(40),

                       ),
                       hintText: 'Mobile Number',
                       hintStyle: TextStyle(color: Colors.grey),
                       fillColor: Colors.white,
                       filled: true
                   ),
                 ),
                 SizedBox(height: 15,),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                       prefixIcon: Icon(Icons.lock_outline, color: Colors.black,),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(40),

                       ),
                       hintText: 'Password',
                       hintStyle: TextStyle(color: Colors.grey),
                       fillColor: Colors.white,
                       filled: true
                   ),
                 ),
                 SizedBox(height: 15,),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                       prefixIcon: Icon(Icons.lock, color: Colors.black,),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(40),

                       ),
                       hintText: 'Confirm Password',
                       hintStyle: TextStyle(color: Colors.grey),
                       fillColor: Colors.white,
                       filled: true
                   ),
                 ),
                 SizedBox(height: 15,),
                 TextFormField(
                   decoration: InputDecoration(
                       prefixIcon: Icon(Icons.people, color: Colors.black,),
                       border: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(40),

                       ),
                       hintText: 'Referral Code',
                       hintStyle: TextStyle(color: Colors.grey),
                       fillColor: Colors.white,
                       filled: true
                   ),
                 ),
                 SizedBox(height: 25,),
                 ElevatedButton(onPressed:(){},
                     style: ElevatedButton.styleFrom(
                         primary: Colors.white
                     ),
                     child: Text('Sign Up',
                       style: TextStyle(
                           color: Colors.black
                       ),
                     )
                 ),
                 SizedBox(height: 30,),
                 Text('By clicking signup you accept our', style: TextStyle(color: Colors.white,fontSize: 18),),
                 SizedBox(height: 5,),
                 GestureDetector(
                   onTap: (){},
                   child: Text(' Terms and Conditions',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                 )
               ],
             ),
           ),
         ),
       ),
     );
   }
 }
