import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          "MobileDoctor",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Cairo'
          ),
        ),
        actions: <Widget>[
          FlatButton.icon(
            onPressed: (){
              Navigator.pushNamed(context, '/userhelp');
            }, 
            icon: Icon(
              Icons.person,
              color: Colors.grey[600],
              ), 
            label: Text(''),
            color: Colors.lightBlue,
            )
        ],
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                      Navigator.pushNamed(context, '/breastcancer');
                    },
                   child: Text('Breast Cancer'),
                   color: Colors.amber,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(onPressed: (){
                Navigator.pushNamed(context, '/prediction');
              },
              child: Text("predict"),
              color: Colors.amber,
              ),
            )
          ],
        ),
        
      ),
    );
  }
}