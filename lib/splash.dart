import 'dart:async';


import 'package:classtutoriial/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    
    Timer(const Duration(seconds: 5) ,() => Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const LoginPage()))
     );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          
         image: DecorationImage( 
          fit: BoxFit.fill,
          image: AssetImage('assets/icons/splash.jpg'),) 
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(30),
              //   child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMmCnNzutAeZebVkocW7kzK0oN_qvzZO-wXQ&usqp=CAU')),
              // Icon(Icons.shopping_cart,size: 150,),
              Image.asset('assets/icons/shopping-cart.png',height: 150,),
              const SizedBox(height: 20,),
              const Text("Let'shop",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),)
            ],
          ),
        ),
      ),
     
    );
  }
}
