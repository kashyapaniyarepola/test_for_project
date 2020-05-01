import 'package:flutter/material.dart';
import 'package:test_for_project/pages/home.dart';
import 'package:test_for_project/pages/breastcancer/breast_cancer.dart';
import 'package:test_for_project/pages/breastcancer/breast_solutions.dart';
import 'package:test_for_project/pages/breastcancer/breast_symptoms.dart';
import 'package:test_for_project/pages/breastcancer/more.dart';
import 'package:test_for_project/pages/profile.dart';
import 'package:test_for_project/pages/breastcancer/prediction/breast_cancer_prediction.dart';
import 'package:test_for_project/pages/breastcancer/prediction/g_result.dart';
import 'package:test_for_project/pages/breastcancer/prediction/b_result.dart';
import 'package:test_for_project/pages/breastcancer/prediction/prediction_help.dart';

void main() => runApp(MaterialApp(
  initialRoute : '/',
  routes: {
    '/':(context) =>Home(),
    '/breastcancer':(context) =>BrestCancer(),
    '/symptoms':(context)=>Symptoms(),
    '/solutions':(context)=>Solutions(),
    '/more':(context)=>More(),
    '/profile':(context)=>Profile(),
    '/prediction':(context)=>Prediction(),
    '/gresult':(context)=>Gresult(),
    '/bresult':(context)=>Bresult(),
    '/predictionhelp':(context)=>PredictionHelp(),
  },
));
