import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text(
          "My Body...- MobileDoctor",
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
      body: new StackProfile(),
      
    );
  }
}

class StackProfile extends StatelessWidget {
    @override
    Widget build(BuildContext context) {

       Widget titleSection = Container(
      padding: const EdgeInsets.all(8),
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
                      'Kashyapa Niyarepola',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 28.0,
                        fontFamily: 'KaushanScript',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 4, 8, 0),
                    child: Text(
                      'kashyapaniyarepola@gmail.com',
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right:16),
              child: RaisedButton.icon(
                onPressed: (){}, 
                icon: Icon(
                  Icons.edit,
                  ),
                label: Text(
                  'Edit',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'KaushanScript',
                      ),
                  ),
                color: Colors.blueGrey[150],
                )  
              ),
          ],
        ),
    );
    
    Widget buttonSection = Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonRow('color', 'Symptoms' ,'Symptoms'),
          _buildButtonRow('color', 'Precausion','Symptoms'),
        ],
      ),
    );

      return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // background image and bottom contents
            Column(
              children: <Widget>[
                Container(
                  height: 240.0,
                  width: 600.0,
                  // color: Colors.orange,
                  child: Center(
                    child: Image.asset('assets/fitness2.jpg'),
                  ),
                ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                    titleSection,
                    buttonSection
                  ],
                  ),
                )
              ],
            ),
            // Profile image
            Positioned(
              top: 150.0,
              left: 40,
              child: Container(
                height: 100.0,
                width: 100.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/pic-1.jpg'),
                    fit: BoxFit.cover,
                  )
                ),
              ),
            )
          ],
        ),
      );
    }

  Row _buildButtonRow(String label1,String label2, String label3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              height: 40,
              width: 90,
              color: Colors.white,
              child: Center(child: Text(label1)),
            ),
          ],
        ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            height: 40,
            width: 90,
            color: Colors.white,
            child: Center(child: Text(label2)),
          ),
        ],
        ),
      Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
            height: 40,
            width: 90,
            color: Colors.white,
            child: Center(child: Text(label3)),
          ),
        ],
      )
    ],
    );
    
  }

  }