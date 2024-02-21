import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realestate/screens/home_screen.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState()=> _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
bool isRememberMe=false;


Widget buildEmail(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text(
        'Email',
      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
     const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const[
            BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
          )
          ]
        ),

        height: 60,
        child: const TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black, 
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email,
              color: Color.fromARGB(255, 47, 5, 64),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black)
          ),
        ),
        
      )
    ],
  );
}

Widget buildPassword(){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      const Text('Password',
      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
      const SizedBox(height: 10),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const[
           BoxShadow(
            color: Colors.black26,
            blurRadius: 6,
            offset: Offset(0,2)
          )
          ]
        ),

        height: 60,
        child: const TextField(
          obscureText: true,
          style: TextStyle(color: Colors.black, 
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock,
              color: Color.fromARGB(255, 47, 5, 64),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.black)
          ),
        ),
        
      )
    ],
  );
}

Widget buildForgetPassbtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: ()=> print("Forgot Password pressed"),
      //padding: EdgeInsets.only(right: 0),
      child: const Text('Forgot Password?',
      style: TextStyle(color: Color.fromARGB(255, 47, 5, 64), fontWeight: FontWeight.normal),),
      ),
  );
}

Widget buildRememberCv(){
  return Container(
    height: 20,
    child: Row(
      children: <Widget>[
        Theme(data: ThemeData(unselectedWidgetColor: Colors.white), 
        child: Checkbox(
          value: isRememberMe,
          checkColor: Colors.green,
          activeColor: Colors.white,
          onChanged: (value){
            setState(() {
              isRememberMe= true;
            });
          },
          ),
          ),

         const  Text("Remember Me",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),)
      ],
    ),
  );
}

Widget buildLoginbtn(){
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    height: 100,
    
    child: ElevatedButton(
       style: ButtonStyle(  
         backgroundColor: MaterialStateProperty.all(Colors.white),
         shape: MaterialStateProperty.all<RoundedRectangleBorder>(
           RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
             )
            ) 
          ),
      onPressed: ()  {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
      child: const Text(
        'LOGIN', style: TextStyle(color: Color(0xff4f1983), fontSize: 18, fontWeight: FontWeight.bold ),),
    
    ),
  );
}

Widget buildSignupbtn(){
   return GestureDetector(
    onTap: ()=>print("Sign Up Pressed"),
    child: RichText(
      text: const TextSpan(
        children:[
          TextSpan(
            text: 'Don\'t have an Account? ',
            style: TextStyle(color: Color.fromARGB(255, 47, 5, 64), fontSize: 18, fontWeight: FontWeight.normal),
          )
        ]
      ),
    ),
   );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

       body:  AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
          child: Stack(
            children: <Widget>[

            
             Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.green,
                    Colors.greenAccent,
                    Colors.greenAccent,
                    Colors.green
                  ]
          
                )
              ),

              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                const  Text(
                     "Sign In",
                     style: TextStyle(color: Color.fromARGB(255, 47, 5, 64), fontSize: 40, fontWeight: FontWeight.bold, ), ),
                     const SizedBox(height: 50),
                    buildEmail(),
                  const  SizedBox(height: 20),
                    buildPassword(),
                    buildForgetPassbtn(),
                    buildRememberCv(),
                    buildLoginbtn(),
                    buildSignupbtn(),
                ],
              ),
              ),
            )
          ]
        ),
      ),

    );
  }
}