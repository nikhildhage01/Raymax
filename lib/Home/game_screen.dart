import 'package:flutter/material.dart';
import 'package:raymax/Home/buy_ticket.dart';

class GameScreen extends StatefulWidget {
  final String price;
  final String tickets;
  final String winners;
  const GameScreen({Key key, this.price,this.tickets,this.winners}) : super(key: key);

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(254, 1, 3, 20),
          title: Text('Ticket Details'),
        ),
        body: Column(
          children: [
            Padding(
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
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyTicket()));
                    },
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(254, 1, 3, 20),
                        ),
                        child: Text('Buy', style: TextStyle(color: Colors.white),)
                    )
                  ],
                ),
              ),
            ),
            TabBar(
              indicatorColor: Color.fromRGBO(254, 1, 3, 20),
                tabs:[
                  Tab(child: Text('PRICE SLOTS', style: TextStyle(color: Colors.black),)),
                  Tab(child: Text('TICKET DETAILS', style: TextStyle(color: Colors.black),)),
                ]
            ),
            Expanded(
              child: TabBarView(children: [
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 100,),
                        Text('Rank',
                          style: TextStyle(
                            color: Color.fromRGBO(254, 1, 3, 20),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 120,),
                        Text('Amount',
                          style: TextStyle(
                              color: Color.fromRGBO(254, 1, 3, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),
                            Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),Divider(thickness: 2,),
                            RankList(rank: '#1', amount: '₹ 50000',),

                          ],
                        ),
                      ),
                    ),
                    
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        SizedBox(width: 80,),
                        Text('Username',
                          style: TextStyle(
                              color: Color.fromRGBO(254, 1, 3, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(width: 120,),
                        Text('Ticket No',
                          style: TextStyle(
                              color: Color.fromRGBO(254, 1, 3, 20),
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                            UsernameList(username: 'nikhildhage', ticketno: 'abcdefg',),
                            Divider(thickness: 3,),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ]),
            )
          ],
        )
      ),
    );
  }
}

class RankList extends StatelessWidget {
  final String rank;
  final String amount;
  const RankList({Key key, this.rank,this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          SizedBox(width: 100,),
          Text(rank, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(width: 120,),
          Text(amount, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}


class UsernameList extends StatelessWidget {
  final String username;
  final String ticketno;
  const UsernameList({Key key, this.username,this.ticketno}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        children: [
          SizedBox(width: 80,),
          Text(username, style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(width: 120,),
          Text(ticketno, style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
