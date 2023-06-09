import 'package:flutter/material.dart';

import 'package:stayfit_app/widgets/mainappbar.dart';

import '../models/exercise.dart';

// ignore: must_be_immutable
class ExerciseDetailsPage extends StatelessWidget {
  Exercise selectedExercise;

  ExerciseDetailsPage({Key? key, required this.selectedExercise}) 
  : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Column(
        children: [
          Text(selectedExercise.name,
            style: TextStyle(
              fontSize: 20
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: selectedExercise.exerciseDetailsList.length,
              itemBuilder: (context, index) {
                final detail = selectedExercise.exerciseDetailsList[index];
                return ListTile(
                  title: Text(detail.description),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

