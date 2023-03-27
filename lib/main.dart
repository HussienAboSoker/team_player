import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TeamPalyer(),
    );
  }
}

class TeamPalyer extends StatefulWidget {
  const TeamPalyer({super.key});

  @override
  State<TeamPalyer> createState() => _TeamPalyerState();
}

class _TeamPalyerState extends State<TeamPalyer> {
 

  @override

  Widget build(BuildContext context) {
     int couterA = 0, counterB = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Team player"),
        centerTitle: true,
        //restart button
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // team A   team B
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // text team A
              // 0
              //button Add
              Column(
               
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 10, 21, 30),
                    ),
                  ),
                  Text(
                    "$couterA",
                    style: const TextStyle(
                      fontSize: 150,
                      color: Color.fromARGB(255, 10, 21, 30),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        couterA++;
                      });
                    },
                    child: const Text(
                      " Add A ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const VerticalDivider(
                
                thickness: 1,
                indent: 130,
                endIndent: 500,
                color: Colors.amber,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Team A",
                    style: TextStyle(
                      fontSize: 35,
                      color: Color.fromARGB(255, 10, 21, 30),
                    ),
                  ),
                  Text(
                    "$counterB",
                    style: const TextStyle(
                      fontSize: 150,
                      color: Color.fromARGB(255, 10, 21, 30),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        counterB++;
                      });
                    },
                    child: const Text(
                      " Add B ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          //restart
          ElevatedButton(
            onPressed: () {
              setState(() {
                couterA = 0;
                counterB = 0;
              });
            },
            child: const Text(
              "  restart  ",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
