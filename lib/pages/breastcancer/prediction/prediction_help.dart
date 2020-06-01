import 'package:flutter/material.dart';

class PredictionHelp extends StatefulWidget {
  @override
  _PredictionHelpState createState() => _PredictionHelpState();
}

class _PredictionHelpState extends State<PredictionHelp> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(
          "PredictionHelp...- Breast Cancer",
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
          _buildTextRow('What am I going to use..?'),
          _buildTextContainer('You are going to use machine learning model with a test accuracy of 97% to predict your breast cancer. '
                              'Do not hesitate to see your doctor if the outcome worsens. Be sure to maintain good habits.'),
          _buildTextRow('How does it work..?'),
          _buildTextContainer('Be sure to provide valid information. All input numbers only.'),
          _buildText('The Mean (Mean of the each measurement') ,
          _buildText('SE (Standard error of measerment)') ,
          _buildText('Worst (or largest - mean of the three largest values)') ,
          _buildTextRow('Some calculations you may need..'),
          _buildContainerColumn('Breast Radius', 'mean of distances from center to points on the perimeter','assets/RA.jpg'),
          _buildContainerColumn('Texture', 'standard deviation of gray-scale values','assets/DCIS-1.jpg'),
          _buildContainerColumn('Perimeter', '','assets/pe.jpg'),
          _buildContainerColumn('Area', '','assets/DCIS-1.jpg'),
          _buildContainerColumn('Smoothness', 'local variation in radius lengths','assets/DCIS-1.jpg'),
          _buildContainerColumn('Compactness' , 'perimeter² / area — 1.0','assets/DCIS-1.jpg'),
          _buildContainerColumn('Concavity','severity of concave portions of the contourBreast Radius','assets/DCIS-1.jpg'),
          _buildContainerColumn('Concave points','number of concave portions of the contour','assets/cp.png'),
          _buildContainerColumn('Symmetry', '','assets/sy.jpg'),
          _buildContainerColumn('Fractal dimension','“coastline approximation” — 1','assets/fd.png'),

        ],
      )
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
      padding: const EdgeInsets.fromLTRB(32, 0, 24, 24),
      child: Text(
        text,
            style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: 'KaushanScript',
            ),
        softWrap: true,  
      ),
    );
  }

   Container _buildText(String text) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 0, 0.0, 24),
      child: Text(
        text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20.0,
            fontFamily: 'Cairo',
            backgroundColor: Colors.grey[400],
          ),
        ),
    );
  }

  Column _buildContainerColumn(String label,String description, String url) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child:Text(
                  label,
                  style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.0,
                        fontFamily: 'Cairo',
                      ),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child:Text(
                description,
                style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                        fontFamily: 'KaushanScript',
                      ),
                ),
              ),
            ),
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