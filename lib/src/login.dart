import 'package:flutter/material.dart';
import 'package:grad/src/forget_pass.dart';
import 'package:grad/src/home.dart';
import 'package:grad/src/signup.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);
 
  @override
  State<LogIn> createState() => _LogIn();
}
 
class _LogIn extends State<LogIn> {
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
              padding: const EdgeInsets.all(10),
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
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  child: const Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  onPressed: () {       
                        Navigator.push(context,MaterialPageRoute(builder: (context) => const Home()),); 
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