import 'package:flutter/material.dart';

class Gresult extends StatefulWidget {
  @override
  _GresultState createState() => _GresultState();
}

class _GresultState extends State<Gresult> {
  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Expanded(
              /*1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Text(
                      'You have a Good News...!',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 32.0,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 8.0),
      child: Text(
        'Good news....!! You have only 3% of havin cancer.  '
            '',
            style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Cairo',
            ),
        softWrap: true,  
      ),
    );
    Widget buttonSection = Container(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
        'Be careful.  '
            'Before you leave be aware of precausions',
            style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'Cairo',
                        backgroundColor: Colors.grey[200],
                        fontWeight: FontWeight.w100
            ),
        softWrap: true,
        ),
        FlatButton(
          onPressed: (){
            Navigator.pushNamed(context, '/solutions');
          }, 
          child: Text('Precausions'),
          color: Colors.lightBlueAccent,
        )
      ],
      )
        
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Results...- Breast Cancer",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            color: Colors.black,
            fontFamily: 'KaushanScript'
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body:ListView(
        children: <Widget>[
          titleSection,
          Image.asset(
            'assets/good.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          textSection,
          buttonSection,
          Image.asset(
            'assets/good1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 3.0),
          
          
        ],
      )
      
    );
  }
}