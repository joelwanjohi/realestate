import 'package:flutter/material.dart';
import 'package:realestate/screens/login_screen.dart';
import 'package:realestate/screens/signUp_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key, required String email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical:  50),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                const Text(
                "Dreamscape Properties",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30, color: Color.fromARGB(255, 2, 29, 10)) ,),
          
                const SizedBox(
              height: 15,
                ),
          
              const Text("Your Key to Exceptional Living!",
                   textAlign: TextAlign.center,
                   style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400, fontSize: 18,
                    
                  ),),
              
                     
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        decoration: const BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("images/chatt.jpg")
                        )
                      ),
                    ), 
                   
                  
                  
                  Column(
                     children:<Widget> [
                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60, 
                        onPressed:(){Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                        },

                        shape: RoundedRectangleBorder(
                          side: const BorderSide( color: Colors.green),
                          borderRadius: BorderRadius.circular(50)
                        ),

                        child: const Text(
                          "Signin", 
                          style: TextStyle(fontWeight: FontWeight.w700,color: Color.fromARGB(255, 46, 5, 50), fontSize: 20),
                        ),
                      ),

                      const SizedBox(height: 20),

                      MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                        },

                         color: Colors.green,
                         shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                        ),

                      child: const Text("Sign Up",
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),)
                                     ),                 
                     ],
                  )
                ],
                
              ),

        ),
       ),
    );

  }
}

