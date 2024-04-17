import "package:calculator/pages/Calculator.dart";
import "package:calculator/pages/interests/interests.dart";
import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyTabBar(),
      
    );
  }
}

class MyTabBar extends StatelessWidget{
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2, 
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Calculator'
          ),
          centerTitle: true,
          titleSpacing: 2,
          backgroundColor: Colors.white,
          elevation: 0.0,
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.calculate_outlined,
                  color: Colors.black,
                  ),
              ),
              Tab(
                icon: Icon(
                  Icons.interests_outlined,
                  color: Colors.black,
                  ),
              ),
            ],
          ),
        ),
      body: const TabBarView(
        children: [
          Center(
            child: CalculatorView(),
            ),
          Center(
            child: Interests(),
            ),
          ],
        ),
      ),
    );
  }
}