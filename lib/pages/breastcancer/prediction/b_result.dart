import 'package:flutter/material.dart';

class Bresult extends StatefulWidget {
  @override
  _BresultState createState() => _BresultState();
}

class _BresultState extends State<Bresult> {
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
                    child: Stack(
                      children: <Widget>[
                        // Stroked text as border.
                        Text(
                          "Result is't good...!",
                          style: TextStyle(
                            fontSize: 32,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 6
                              ..color = Colors.red[800],
                          ),
                        ),
                        // Solid text as fill.
                        Text(
                          "Result is't good...!",
                          style: TextStyle(
                            fontSize: 32,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
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
      child: Stack(
        children: <Widget>[
          // Stroked text as border.
          Text(
            'You have 97% of chance having the cancer cancer.  '
            'This doesn’t define you.. '
            'Meet your doctor immediately',
            style: TextStyle(
              fontSize: 16,
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 4
                ..color = Colors.red[700],
            ),
          ),
          // Solid text as fill.
          Text(
            'You have 97% of chance having the cancer cancer.  '
            'This doesn’t define you.. '
            'Meet your doctor immediately',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[300],
            ),
          ),
        ],
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
        ),
        Text(
            'Check if you have the following symptoms',
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
            Navigator.pushNamed(context, '/symptoms');
          }, 
          child: Text('Symptoms'),
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
            'assets/bad3.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          textSection,
          buttonSection,
          Image.asset(
            'assets/bad1.jpg',
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