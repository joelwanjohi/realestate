import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: myHeight,
          width: myWidth,
          child: Column(
            children: [
              Image.asset("images/loading.gif",),
              Text("Buy or Rent House",
               style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
               ),),
                Text("Find the place of your dream",
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,color: Colors.grey,
               ),),
               Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: Row(
                  children: [
                     Text("Dive to reality",
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
               ),),
            Icon(Icons.arrow_forward_rounded)
                  ],
                ),
               )
            ],
          ),
        ),
      ),
    );
  }
}