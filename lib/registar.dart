import 'package:classtutoriial/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.cyan, Colors.lightBlue]),
        leading: IconButton(
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginPage())),
            icon: const Icon(Icons.keyboard_arrow_left)),
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Center(
                child: Text(
              'Register Form',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            const SizedBox(
              height: 10,
            ),
           const Text('Name',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20) ,),
           const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Name',
            ),
           ),
            const SizedBox(
              height: 15,
            ),
            const Text('Email',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20) ,),
              const SizedBox(
              height: 15,
            ),
            const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
              label: Text('Enter Your Email'),
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
           ),
            const SizedBox(
              height: 15,
            ),
            const Text('Re-Enter Email',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20) ,),
                const SizedBox(
              height: 15,
            ),
            const TextField(
            decoration: InputDecoration(
              hintText: 'Enter Your Email',
              label: Text('Enter Your Email'),
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
            ),
           ),
           const SizedBox(
              height: 15,
            ),
            const Text('Password',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 20) ,),
               const SizedBox(
              height: 15,
            ),
            const TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              label: Text('Password'),
              prefixIcon: Icon(Icons.shield),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))
              ),
            ),
           ),
             const SizedBox(
              height: 15,
            ),
           MaterialButton(onPressed: () =>Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const LoginPage())),
           color: Colors.blue,
           minWidth: double.infinity,
           child: const Text('Register'),)
          ],
        ),
      ),
    );
  }
}
