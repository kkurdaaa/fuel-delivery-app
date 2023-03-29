import 'package:flutter/material.dart';

class Bio extends StatelessWidget {
  final String image;
  final String name;
  final String bio;
  const Bio(
      {Key? key, required this.image, required this.name, required this.bio})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
      backgroundColor: Colors.amber,  
      appBar: AppBar(  
        title: const Text('Speed Stop',style: TextStyle(color: Colors.black),),centerTitle: true,leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),  
      ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            Expanded(
              child: Container(
                height: 250.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                padding: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade900,
                    offset: Offset(0, 3),
                    blurRadius: 9,
                    spreadRadius: 3,
                  ),
                ]),
              ),
            ),
            Container(
              height: 10.0,
            ), //space between image ain Erbil text
            Container(
              height: 50.0,
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                bio,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
