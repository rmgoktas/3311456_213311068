import 'package:flutter/material.dart';
import 'package:stayfit_app/pages/activityPage.dart';
import 'package:stayfit_app/pages/bmiInputPage.dart';
import 'package:stayfit_app/pages/exerciseListPage.dart';
import 'package:stayfit_app/pages/stopWatchPage.dart';

class ExerciseNavBar extends StatelessWidget {
  const ExerciseNavBar({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(1), 
        boxShadow: [
        BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(0.2),
            )
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => 
                      ExerciseListPage()
                    ),
                  );
                },
                icon: Image.asset("assets/navBar/home.png", width: 25, height: 25),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => 
                      const ActivityPage()
                    ),
                  );
                },
                icon: Image.asset("assets/navBar/steps.png", width: 25, height: 25),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => 
                      const BmiInputPage()
                    ),
                  );
                },
                icon: Image.asset("assets/navBar/bmi.png", width: 25, height: 25),
              ),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => 
                      const StopWatchPage()
                    ),
                  );
                },
                icon: Image.asset("assets/navBar/timer.png", width: 25, height: 25),
              ),
            ),
          )
        ],
      ),
    );
  }
}
