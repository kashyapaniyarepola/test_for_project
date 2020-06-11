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
          _buildTextRow('What is MobileDoctor..?'),
          _buildTextContainer("MobileDoctor is a health care decision support application. "
          "You can get details, predictions and reminders of a disease from one place "
          "MobileDoctor uses machine learning models with an accuracy level of over 97%. "
          "So, try it out... "
          ),
          
          _buildTextRow('Take a tour......'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                child:Column(children: <Widget>[
                  _buildText('  How to predict a disease...  ') ,
                  _buildTextContainer('Click the name Doctor'),
                  _buildContainerColumn('assets/pe.jpg'),
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
                  _buildTextContainer('Click the name Details'),
                  _buildContainerColumn('assets/DCIS-1.jpg'),
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
                  _buildTextContainer('Click the name bell icon'),
                  _buildContainerColumn('assets/DCIS-1.jpg'),
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
                  _buildContainerColumn('assets/DCIS-1.jpg'),
                ],)
            
              )
            ),
          ),
          
          Padding(
              padding: const EdgeInsets.fromLTRB(100.0, 0.0, 100.0, 8.0),
              child: FlatButton.icon(
              onPressed: (){
                Navigator.pushNamed(context, '/');
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
                  child: Text(
                    label ,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 28.0,
                      fontFamily: 'Cairo',
                    ),
                  ),
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
      child: Text(
        text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18.0,
            fontFamily: 'Cairo',
            backgroundColor: Colors.lightGreen,
          ),
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