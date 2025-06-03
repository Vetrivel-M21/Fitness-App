// ignore_for_file: deprecated_member_use

import 'package:fitness_app/Screens/Widgets/best_foryou_workout.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network("https://superherojacked.b-cdn.net/wp-content/uploads/2020/09/Goku-Calisthenics-Workout-1-1024x512.jpg", fit: BoxFit.cover,),
              ),
            ),

            Positioned(
              bottom: 4.5,
              left: 3,
              child: Container(
                // alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(30),
                height: 190 ,
                width:  MediaQuery.of(context).size.width*0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 0, 0, 0),
                      const Color.fromARGB(0, 0, 0, 0),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Best Quarantine Workout", style: TextStyle(color: Colors.white, fontSize: 20),),
                    
                    Row(                   
                        //  crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("See more", style: TextStyle(color: const Color.fromARGB(255, 22, 139, 11), fontSize: 16, fontWeight: FontWeight.bold),),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_ios, color: const Color.fromARGB(255, 27, 187, 5), size: 16,),
                        ],
                      ),
                    
                  ],
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 20,),

        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text("Best For You", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                    
                      BestForYouWorkout(
                        imagePath: "BestforYou/bellyfat.jpg",
                        workoutName: "Belly Fat Burn",
                        duration: 10.toString(),
                        difficultyLevel: "Intermediate",
                      ),
                      SizedBox(width: 10,),
                       BestForYouWorkout(
                        imagePath: "BestforYou/FatLoss.jpg",
                        workoutName: "Fat Loss Workout",
                        duration: 5.toString(),
                        difficultyLevel: "Beginner",
                      ),
                      // SizedBox(width: 10,),
                      

                  ],
                ),

              ),

               SizedBox(height: 10,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                  children: [
                    
                      BestForYouWorkout(
                        imagePath: "BestforYou/BuildWide.jpg",
                        workoutName: "Build Wide Shoulders",
                        duration: 10.toString(),
                        difficultyLevel: "Intermediate",
                      ),
                      SizedBox(width: 10,),
                       BestForYouWorkout(
                        imagePath: "BestforYou/plank.jpg",
                        workoutName: "Plank Workout",
                        duration: 5.toString(),
                        difficultyLevel: "Beginner",
                      ),
                      // SizedBox(width: 10,),
                      

                  ],
                ),

              ),

            ],
          ),

          
        ),
        SizedBox(height: 20,),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Challenges", style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),

              SizedBox(height: 10,),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ChallengeBox(
                      challengeName: "Plank Challenge",
                      icon: Icons.local_fire_department_outlined,
                      color: Color(0xFFBBF246),
                      textColor: Colors.black, 

                    ),
                    SizedBox(width: 6,),
                    ChallengeBox(
                      challengeName: "Sprint Challenge",
                      icon: Icons.directions_run_outlined, // Use a relevant built-in icon
                      color: Color(0xFF192126),
                      textColor: Colors.white,
                      // background: #192126;
                    ),
                    SizedBox(width: 6,),
                    ChallengeBox(
                      challengeName: "Push Up Challenge",
                      icon: Icons.fitness_center,
                      color: Color(0xFFBBF246),
                      textColor: Colors.white,
                    ),
                  ],
                )
              ),
              
            ]
          ),
        )

      ],
    );
  }
}

class ChallengeBox extends StatelessWidget {
  final String challengeName;
  final IconData icon;
  final Color color;
  final Color textColor;
  const ChallengeBox({
    super.key,
    required this.challengeName,
    required this.icon,
    required this.color,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      height: 100,
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
        // Color(0xFFBBF246)
      ),
      child: Stack(
          
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: Icon(icon, size: 75, color:color)
            ),
    
            
           Container(
            margin: EdgeInsets.only(left:7, bottom: 10),
            alignment: Alignment.bottomLeft,
             child: Text(
              challengeName, 
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300, color:T),
                                 ),
           )
              
    
    
          ],
      ),
    );
  }
}

