import 'package:flutter/material.dart';
import '../models/exercise.dart';

class ExerciseCard extends StatelessWidget {
  Exercise exercise;
  Function onCardClick;

  ExerciseCard({required this.exercise, required this.onCardClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          this.onCardClick();
        },
        child: Container(
          margin: EdgeInsets.all(20),
          height: 170,
          child: Stack(
            children: [
              Positioned.fill(
                  child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/exercisecards/' + this.exercise.imgName + '.jpeg',
                    fit: BoxFit.cover),
              )),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black.withOpacity(0.7),
                                Colors.transparent
                              ])))),
              Positioned(
                  bottom: 15,
                  left: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(1),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Text(this.exercise.name,
                            style: TextStyle(color: Colors.white, fontSize: 20))
                      ],
                    ),
                  ))
            ],
          ),
        ));
  }
}
