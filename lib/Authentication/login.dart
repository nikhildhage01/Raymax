import 'package:flutter/material.dart';
import 'package:raymax/Authentication/signup.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          color: Color.fromRGBO(254, 1, 3, 20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 230,),
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
                      prefixIcon: Icon(Icons.lock, color: Colors.black,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                        
                      ),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white,
                      filled: true
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: GestureDetector(
                    child: Text('Forgot Password?',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                ElevatedButton(onPressed:(){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white
                    ),
                    child: Text('Login',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    )
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 40,),
                    Text('Don\'t have a account?', style: TextStyle(color: Colors.white,fontSize: 18),),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                      },
                      child: Text(' Signup now!',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
