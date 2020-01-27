import 'package:flutter/material.dart';
import 'package:maps/category/catogrey.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu),
        iconSize: 22.0,color: Colors.white, onPressed: (){},
        ),
        title: Text("Chat",style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        ),
      elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
            iconSize: 22.0,color: Colors.white, onPressed: (){},
          ),
        ],
      ),
      body: 
      Column(
        children: <Widget>[
              CategorySelector(),
              Expanded(
                 child: Container(
                  decoration: BoxDecoration(
                    color:Theme.of(context).accentColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),),
                  child: Column(
                    children: <Widget>[
                      Row(children: <Widget>[
                        Text("Favourite"),
                        IconButton(
                          icon: Icon(
                           Icons.more_horiz,
                        ), onPressed: () {},),
                      ],)
                    ],
                  ),
                ),
              ),],
      ),
    );
  }
}
