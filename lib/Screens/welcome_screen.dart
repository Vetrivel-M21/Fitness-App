import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    color: Colors.black,
                    width: MediaQuery.of(context).size.width,

                    child: Image.asset("Image.png", fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: -1,
                  child: Container(
                    // margin:EdgeInsets.only(top: 336) ,
                    height: 240,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFFFFFF),
                          const Color.fromARGB(0, 255, 255, 255),
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Color(0xFFFFFFFF),
            padding: EdgeInsets.only(top: 10, bottom: 20, left: 20, right: 20),
            height: 296,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // color: const Color.fromARGB(83, 33, 149, 243),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 5,
                        left: 72,
                        child: Container(
                          height: 15,
                          width: 70,
                          color: const Color.fromARGB(255, 159, 240, 83),
                        ),
                      ),
                      Center(
                        child: Text(
                          "     Wherever You Are  \n Health is Number One",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "There is no instand way to healthy life",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      width: 70,
                      height: 3,
                      child: LinearProgressIndicator(
                        value: 0.4,
                        backgroundColor: Colors.black,
                        valueColor: AlwaysStoppedAnimation(Colors.green),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(25, 33, 38, 1),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/home");
                    },
                    child: Text(
                      "Get Startde",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                //    LinearProgressIndicator(
                //   value: 30,
                //   backgroundColor: Colors.grey,
                //   valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
