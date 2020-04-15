import 'package:flutter/material.dart';


class BrestCancer extends StatefulWidget {
  @override
  _BrestCancerState createState() => _BrestCancerState();
}

class _BrestCancerState extends State<BrestCancer> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
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
                      'What is breast cancer...?',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 28.0,
                        fontFamily: 'KaushanScript',
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
    );
  Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'Symptoms' ,'/symptoms'),
          _buildButtonColumn(color, Icons.security, 'Precausion', '/solutions'),
          _buildButtonColumn(color, Icons.share, 'More...', '/more'),
        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.fromLTRB(32, 0, 24, 24),
      child: Text(
        'Breast cancer is a disease in which cells in the breast grow out of control. '
            'There are different kinds of breast cancer. '
            'The kind of breast cancer depends on which cells in the breast turn into cancer ',
            style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'KaushanScript',
            ),
        softWrap: true,  
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Breast Cancer",
          style: TextStyle(
            fontSize: 30.0,
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
          Image.asset(
            'assets/bc.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          textSection,
          buttonSection,
          
        ],
      )
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label, String url) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          height: 80,
          width: 110,
          child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, url);
            },
            child: Center(
              child: Column(
                children: <Widget>[
                //Icon(icon, color: color),
                Padding(
                  padding: const EdgeInsets.fromLTRB(2, 24, 2, 4),
                  child: Text(
                    label,
                    style: TextStyle(
                      fontFamily: 'KaushanScript',
                    ),
                    ),
                ),
              ],
              ),
            ),
            color: Colors.lightBlueAccent, 
            ),
        ),
      ],
    );
  }
}