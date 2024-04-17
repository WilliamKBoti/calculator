import 'package:calculator/pages/interests/age.dart';
import 'package:calculator/pages/interests/area.dart';
import 'package:calculator/pages/interests/bmi.dart';
import 'package:calculator/pages/interests/date.dart';
import 'package:calculator/pages/interests/mass.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Interests extends StatelessWidget {
  const Interests({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        primary: false,
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            elevation: 0.0,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.white,
              highlightColor: Colors.white,
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AgePage()),
                );
              },
              child: const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FaIcon(FontAwesomeIcons.cakeCandles),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Age',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.0,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.white,
              highlightColor: Colors.white,
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AreaPage()),
                );
              },
              child: const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FaIcon(FontAwesomeIcons.cropSimple),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Area',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.0,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.white,
              highlightColor: Colors.white,
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BmiPage()),
                );
              },
              child: const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FaIcon(FontAwesomeIcons.weightScale),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'BMI',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.0,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.white,
              highlightColor: Colors.white,
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DatePage()),
                );
              },
              child: const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FaIcon(FontAwesomeIcons.solidCalendarDays),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 0.0,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.white,
              highlightColor: Colors.white,
              hoverColor: Colors.white,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MassPage()),
                );
              },
              child: const Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FaIcon(FontAwesomeIcons.scaleUnbalanced),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Mass',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}