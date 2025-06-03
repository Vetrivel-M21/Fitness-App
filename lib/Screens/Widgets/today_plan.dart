import 'package:flutter/material.dart';

class TodayPlan extends StatefulWidget {
  // final String workOut;
  final String imagePath;
  final String description;
  final String workOut;
  final double progress;
  final String? difficulty;

  const TodayPlan({
    super.key,
    required this.imagePath,
    required this.workOut,
    required this.description,
    required this.progress,
    required this.difficulty,
    });

  @override
  State<TodayPlan> createState() => _TodayPlanState();
}

class _TodayPlanState extends State<TodayPlan> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Card(
                clipBehavior: Clip.antiAlias,
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.imagePath,
                      ), // Make sure this path is correct and declared in pubspec.yaml
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    widget.workOut,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    widget.description,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      // border: Border.all(color: Colors.black, width: 2),
                      // borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Stack(
                        children: [
                          SizedBox(
                            // width: 250,'
                            width: MediaQuery.of(context).size.width * 0.4,
                            height:20,
                            child: LinearProgressIndicator(
                              value: widget.progress,
                              backgroundColor: const Color.fromARGB(
                                255,
                                219,
                                205,
                                205,
                              ),
                              valueColor: AlwaysStoppedAnimation(Colors.green),
                              semanticsLabel: '45%',
                            ),
                          ),
        
                          Positioned(
                            left: 30,
                            child: Text("${(widget.progress * 100).toInt()}%"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Positioned(
          right: 30,
          child: Container(
            
            padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
            decoration: BoxDecoration(
              color: Color(0xFF192126),
              // bottom left radius
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),

            child: Text(widget.difficulty ?? 'Beginner', style: TextStyle(color: Colors.white),)
          ),
        )
      ],
    );
  }
}
