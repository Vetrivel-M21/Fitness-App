import 'package:flutter/material.dart';

class BestForYouWorkout extends StatelessWidget {
  final String imagePath;
  final String workoutName;
  final String duration;
  final String difficultyLevel;
  const BestForYouWorkout({
    super.key,
    required this.imagePath,
    required this.workoutName,
    required this.duration,
    required this.difficultyLevel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
    
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 75,
            height: 75,
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: Image.asset(imagePath).image,
                fit: BoxFit.cover,
              ),
            ),
          ),
      
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(workoutName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(141, 201, 196, 196),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                child: Text("${duration} min", style: TextStyle(fontSize: 13, color: Colors.grey),),
              ),
               SizedBox(height: 5,),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(141, 201, 196, 196),
                  borderRadius: BorderRadius.circular(5),
                ),
                padding: const EdgeInsets.fromLTRB(5, 1, 5, 1),
                child: Text(difficultyLevel, style: TextStyle(fontSize: 13, color: Colors.grey),),
              )
            ],
          )
        ],
      ),
    );
  }
}