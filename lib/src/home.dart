import 'package:flutter/material.dart';
import 'package:grad/mock/mock.dart';
import 'package:grad/src/bio.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
      backgroundColor: Colors.amber,  
      appBar: AppBar(  
        title: const Text('Speed Stop'),centerTitle: true,  
      ),
        body: Center(
          child: SafeArea(
            child: ListView.builder(
                itemCount: mockData.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(5),
                    child: Card(
                      elevation: 15,
                      shadowColor: Colors.grey,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Ink.image(
                            image: AssetImage(
                                mockData[index]["image"].toString()),
                            height: 200,
                            fit: BoxFit.cover,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Bio(
                                              image: mockData[index]["image"]
                                                  .toString(),
                                              name: mockData[index]["name"]
                                                  .toString(),
                                              bio: mockData[index]["bio"]
                                                  .toString(),
                                            )));
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 150,
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(25),
                                      bottomRight: Radius.circular(15),
                                      topRight: Radius.circular(5)),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 3),
                                      color: Colors.grey,
                                      spreadRadius: 1,
                                      blurRadius: 9,
                                    )
                                  ]),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Bio(
                                                image: mockData[index]
                                                        ["image"]
                                                    .toString(),
                                                name: mockData[index]["name"]
                                                    .toString(),
                                                bio: mockData[index]["bio"]
                                                    .toString(),
                                              )));
                                },
                                child: Center(
                                  child: Text(
                                    mockData[index]["name"].toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
