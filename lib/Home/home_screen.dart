import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raymax/Home/game_screen.dart';
import 'package:raymax/Home/main_drawer.dart';
import 'package:raymax/Home/notifications.dart';
import 'package:raymax/Home/support.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromRGBO(254, 1, 3, 20),
              title: Text('RAYMAX',
                style: TextStyle(fontSize: 18),
              ),
              actions: [
                IconButton(icon: Icon(Icons.notifications), onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                })
              ],
              bottom: TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(child: Text('BRONZE')),
                  Tab(child: Text('SILVER')),
                  Tab(child: Text('GOLD')),
                ],
              ),
            ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                      child: Game(price: '5', tickets: '65', winners: '20000',),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GameScreen(price: '5',tickets: '65', winners: '20000',)));
                      },
                  ),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                  Game(price: '5', tickets: '65', winners: '20000',),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Support()));
          },
          child: Icon(Icons.send_rounded),
          backgroundColor: Color.fromRGBO(254, 1, 3, 20),
        ),
      ),
    );
  }
}


class Game extends StatefulWidget {
  final String price;
  final String tickets;
  final String winners;
  const Game({Key key, this.price,this.tickets,this.winners}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height:  80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(3),
          boxShadow: [
            BoxShadow(
              color: Colors.black45,
              offset: Offset(0.7,0.7),
              spreadRadius: 2,
              blurRadius: 2
            )
          ]
        ),
        child: Row(
          children: [
            Row(
              children: [
                SizedBox(width: 40,),
                Text('₹ ', style: TextStyle(color: Color.fromRGBO(254, 1, 3, 20),),),
                Text(widget.price,style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            SizedBox(width: 70,),
            Column(
              children: [
                SizedBox(height: 18,),
                Row(
                  children: [
                    Text(widget.tickets,style: TextStyle(fontWeight: FontWeight.bold)),
                    Text(' tickets sold')
                  ],
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Text(widget.winners,style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(254, 1, 3, 20))),
                    Text(' Winners',style: TextStyle(fontWeight: FontWeight.bold),)
                  ],
                ),
              ],
            ),
            SizedBox(width: 85,),
            Icon(Icons.keyboard_arrow_right_sharp)
          ],
        ),
      ),
    );
  }
}
