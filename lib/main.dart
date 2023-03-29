// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:grad/src/bio.dart';
import 'package:grad/src/home.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  static const String _title = 'Speed Stop';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(title: const Text(_title),centerTitle: true,),
        body: const SignIn(),
      ),
    );
  }
}
 
class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
 
  @override
  State<SignIn> createState() => _SignIn();
}
 
class _SignIn extends State<SignIn> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 50)),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to fuel delivery',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            const Padding(padding: EdgeInsets.only(top: 40)),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => forgetpass()),); 
              },
              child: const Text('Forgot Password',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()),); 
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Does not have account?',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.push(  
    context,  
    MaterialPageRoute(builder: (context) => SignUp()),  
  );  
                  },
                )
              ],
            ),
          ],
        ));
  }
}

class SignUp extends StatelessWidget {  
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      backgroundColor: Colors.amber,  
      appBar: AppBar(  
        title: const Text('Speed Stop'),centerTitle: true,  
      ),  
      body: Padding(padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 50)),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to fuel delivery',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            const Padding(padding: EdgeInsets.only(top: 40)),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                    print(emailController.text);
                    print(phoneController.text);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Account has been created"),));
                    Navigator.of(context).pop(); 
                  },
                )
            ),
            
          ],
        )  
    ));  
  }  
} 

class forgetpass extends StatelessWidget {  
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(
      backgroundColor: Colors.amber,  
      appBar: AppBar(  
        title: const Text('Speed Stop'),centerTitle: true,  
      ),  
      body: Padding(padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 50)),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Welcome to fuel delivery',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                )),
            const Padding(padding: EdgeInsets.only(top: 40)),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Reset Password',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                ),
              ),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Reset Password',style: TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    print(nameController.text);
                    print(emailController.text);
                    print(phoneController.text);
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Password has been reset"),));
                    Navigator.of(context).pop(); 
                  },
                )
            ),
            
          ],
        )  
    ));  
  }  
} 