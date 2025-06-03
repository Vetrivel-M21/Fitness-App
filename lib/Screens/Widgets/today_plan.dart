import 'package:flutter/material.dart';

class TodayPlan extends StatefulWidget {
  // final String workOut;

  const TodayPlan({super.key});

  @override
  State<TodayPlan> createState() => _TodayPlanState();
}

class _TodayPlanState extends State<TodayPlan> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    'Image.jpg',
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
                "Push Up",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("100 Push up a day"),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black, width: 2),
                  // borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      SizedBox(
                        // width: 250,'
                        width: MediaQuery.of(context).size.width * 0.54,
                        height: 20,
                        child: LinearProgressIndicator(
                          value: 0.4,
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
                        child: Text("${(0.4 * 100).toInt()}%"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
