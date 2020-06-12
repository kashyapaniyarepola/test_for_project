import 'package:flutter/material.dart';

class UserHelp extends StatefulWidget {
  @override
  _UserHelpState createState() => _UserHelpState();
}

class _UserHelpState extends State<UserHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Guide...",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
            color: Colors.black,
            fontFamily: 'Cairo'
          ),
        ),
        //centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
       body:ListView(
        children: <Widget>[
          Image.asset(
            'assets/guide/Doctor.png',
            width: 600,
            height: 300,
            fit: BoxFit.cover,
          ),
          _buildTextRow('What is MobileDoctor..?'),
          _buildTextContainer("MobileDoctor is a health care decision support application. "
          "You can get details, predictions and reminders of a disease from one place. "
          "MobileDoctor uses machine learning models with accuracy levels of over 97%. "
          "So, try it out... "
          ),
          
          _buildTextRow('Take a tour......'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                child:Column(children: <Widget>[
                  _buildText('  Open chat-bot...  ') ,
                  _buildTextContainer('Click the disease(except Breast cancer) you want then Click "Doctor" button'),
                  _buildContainerColumn('assets/guide/Click doctor_1.gif'),
                ],)
            
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                child:Column(children: <Widget>[
                  _buildText('  Start predicting...  ') ,
                  _buildTextContainer('Open chat-bot then say "Hi" '),
                  _buildContainerColumn('assets/guide/say hi_1.gif'),
                ],)
            
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                child:Column(children: <Widget>[
                  _buildText('  Predict Breast Cancer...  ') ,
                  _buildTextContainer('Scroll down for Breast cancer the click "Doctor" button'),
                  _buildContainerColumn('assets/guide/Kshyapa form click_1.gif'),
                ],)
            
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                child:Column(children: <Widget>[
                  _buildText('  Get disease information...  ') ,
                  _buildTextContainer('Select a disease then click the "Description" button '),
                  _buildContainerColumn('assets/guide/Description click_1.gif'),
                ],)
            
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                child:Column(children: <Widget>[
                  _buildText('  Activate notification alert...  ') ,
                  _buildTextContainer('Click notification you want to activate then click the bell icon'),
                  _buildContainerColumn('assets/guide/notification on_1.gif'),
                ],)
            
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                child:Column(children: <Widget>[
                  _buildText('  Get current situation of your disease.  ') ,
                  _buildTextContainer('Go to your profile..'),
                  _buildContainerColumn('assets/guide/Profile click_2.gif'),
                ],)
            
              )
            ),
          ),
          
          Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 8.0),
              child: FlatButton.icon(
              onPressed: (){
                Navigator.pushReplacementNamed(context, '/');
              }, 
              icon: Icon(Icons.keyboard_arrow_right),
                label: Expanded(
                  child: Text("Exited....! GoHead", 
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Cairo',
                        ),
                      ),
                    ),
                color: Colors.green,
           ),
            ),
          Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/aboutus');
              }, 
                child: Text('About developers'),
                color: Colors.lightBlueAccent,
           ),
         ),

        ],
        
      ),
      
    );
  }

  Row _buildTextRow(String label) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        label,
                        style: TextStyle(
                          fontSize: 36,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 6
                            ..color = Colors.blue[700],
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        label,
                        style: TextStyle(
                          fontSize: 36,
                          color: Colors.grey[300],
                        ),
                      ),
                    ],
                  ),
                  // child: Text(
                  //   label ,
                  //   style: TextStyle(
                  //     // fontWeight: FontWeight.w500,
                  //     fontSize: 28.0,
                  //     fontFamily: 'Cairo',
                  //     foreground: Paint()
                  //       ..style = PaintingStyle.stroke
                  //       ..strokeWidth = 6
                  //       ..color = Colors.blue[700],
                  //     // decoration: TextDecoration.underline,
                  //     // decorationColor: Colors.blueAccent,
                  //     // decorationStyle: TextDecorationStyle.wavy,
                  //   ),
                  // ),
                ),   
              ],
            ),
          ),
        ),
      ],
    );
  }

 Container _buildTextContainer(String text) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
      child: Text(
        text,
            style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Cairo',
            ),
        softWrap: true,  
      ),
    );
  }

   Container _buildText(String text) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0.0, 0, 0.0, 8.0),
      child:Stack(
          children: <Widget>[
            // Stroked text as border.
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 6
                  ..color = Colors.green[800],
              ),
            ),
            // Solid text as fill.
            Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[300],
              ),
            ),
          ],
        ),
    );
  }

  Column _buildContainerColumn(String url) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 16),
              child: Image.asset(
              url,
              width: 560,
              height: 240,
              fit: BoxFit.cover,
          ),
            ),
          ],

     
    );
  }
}