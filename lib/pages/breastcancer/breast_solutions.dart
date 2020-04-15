import 'package:flutter/material.dart';

class Solutions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    List precautions = [
      'Be physically active...Physical activity can help you maintain a healthy weight, which helps prevent breast cancer',
      'Limit alcohol.....The more alcohol you drink, the greater your risk of developing breast cancer. So, limit yourself to less than one drink a day, as even small amounts increase risk.',
      "Don't smoke'...... Evidence suggests a link between smoking and breast cancer risk, particularly in premenopausal womensyptoms 1",
      'Control your weight..... Being overweight or obese increases the risk of breast cancer',
      'Breast-feed.... The longer you breast-feed, the greater the protective effect',
      'Limit dose and duration of hormone therapy.... ',
      'Avoid exposure to radiation and environmental pollution.....',
    ];

    List image =[
      'assets/physically.gif',
      'assets/noalcohol.webp',
      'assets/nosmoke.gif',
      'assets/noweight.gif',
      'assets/feed.gif',
      'assets/nosmoke.gif',
      'assets/nosmoke.gif',
    ];
  
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Precautions...- Breast Cancer",
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
       body:ListView.builder(
          itemCount: precautions.length,
          itemBuilder: (context,index){
            return Card(
                 child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.blur_linear),
                    ),
                    Expanded(
                      child: Text(precautions[index],
                      style: TextStyle(
                        fontSize:17, 
                        fontWeight: FontWeight.w800,
                        fontFamily: 'KaushanScript',
                        ) 
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset(image[index], width: 110,height: 100,),
                    ),
                  ],
                ),
            );        
                  }
       ),
    );
  }
}
