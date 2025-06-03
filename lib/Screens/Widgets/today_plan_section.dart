import 'package:fitness_app/Screens/Widgets/today_plan.dart';
import 'package:flutter/material.dart';

class TodayPlanSection extends StatelessWidget {
  const TodayPlanSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Today Plan",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 25),
        TodayPlan(
          workOut: "Push Ups",
          description: "Do 20 push ups",
          progress: 0.4,
          imagePath: 'Image.jpg',
          difficulty: "intermediate",

        ),
        SizedBox(height: 25),
        TodayPlan(
          workOut: "Squats",
          description: "Do 30 squats",
          progress: 0.6,
          imagePath: 'situp.jpg',
          difficulty: "beginner",
        ),
        SizedBox(height: 25),
        TodayPlan(
          workOut: "Knee Push Ups",
          description: "20 sit up a day",
          progress: 0.7,
          imagePath: 'kneeup.jpg',
          difficulty: "beginner",
        ),
        SizedBox(height: 25),
        // TodayPlan(
        //   workOut: "Plank",
        //   description: "Hold for 1 minute",
        //   progress: 0.5,
        //   imagePath: 'plank.jpg',
        // ),
        SizedBox(height: 25),
      ],
    );
  }
}