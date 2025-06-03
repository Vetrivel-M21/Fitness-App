
import 'package:flutter/material.dart';

class WorkOutCard extends StatelessWidget {
  const WorkOutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: 250,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'pushup.jpg',
            ), // Make sure this path is correct and declared in pubspec.yaml
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(12),
          alignment: Alignment.bottomLeft,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [Colors.transparent, Colors.black],
            ),
          ),
          child: Row(
            children: [
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lower Body Training",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(176, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 80,
                      child: Row(
                        children: [
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.orange,
                            size: 12,
                          ),
                          SizedBox(width: 4),
                          Text(
                            "500 Kcal",
                            style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(176, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 80,
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: const Color.fromARGB(255, 255, 250, 250),
                            size: 12,
                          ),
                          SizedBox(width: 4),
                          Text("50 min", style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle_fill,
                        size: 40,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}