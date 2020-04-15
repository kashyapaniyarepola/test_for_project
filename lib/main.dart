import 'package:flutter/material.dart';
import 'package:test_for_project/pages/home.dart';
import 'package:test_for_project/pages/breastcancer/breast_cancer.dart';
import 'package:test_for_project/pages/breastcancer/breast_solutions.dart';
import 'package:test_for_project/pages/breastcancer/breast_symptoms.dart';
import 'package:test_for_project/pages/breastcancer/more.dart';
import 'package:test_for_project/pages/profile.dart';


void main() => runApp(MaterialApp(
  initialRoute : '/',
  routes: {
    '/':(context) =>Home(),
    '/breastcancer':(context) =>BrestCancer(),
    '/symptoms':(context)=>Symptoms(),
    '/solutions':(context)=>Solutions(),
    '/more':(context)=>More(),
    '/profile':(context)=>Profile(),
  },
));
