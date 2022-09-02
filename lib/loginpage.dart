

import 'package:classtutoriial/home.dart';
import 'package:classtutoriial/registar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Login Page',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight:FontWeight.bold ),),
            const SizedBox(height: 20,),
            const TextField(
              decoration: InputDecoration(
                label: Text('Username'),
                hintText: 'Enter Username',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12))
                )
              ),
            ),
            const SizedBox(height: 10,),
             const TextField(
              obscureText: true,
              decoration: InputDecoration(
                label:Text('Password') ,
                hintText: 'Enter Password',
                border: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.all(Radius.circular(12))
                )
              ),
            ),
            const SizedBox(height: 10,),
            MaterialButton(onPressed: () =>
               Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomePage())),
            color: Colors.blue,
            child:const Text('Sign In') ,),
            const SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Not a user?'),
                TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const RegisterForm())), child: const Text('Register Here ',style: TextStyle(color: Colors.blue),))
              ],
            )
          ],
        ),
      ),
    );
  }
}
