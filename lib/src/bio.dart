import 'package:flutter/material.dart';
import 'package:grad/src/confirm_order.dart';

class Bio extends StatefulWidget {
  final String image;
  final String name;
  final String bio;
  const Bio(
      {Key? key, required this.image, required this.name, required this.bio})
      : super(key: key);

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  String _selectedGasType = 'Super';
  TextEditingController quantityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          padding: const EdgeInsets.all(10.0),
          children: [
            Expanded(
              child: Container(
                height: 250.0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                padding: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade900,
                    offset: const Offset(0, 3),
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
                widget.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                widget.bio,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(5, 15, 5, 15)),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Choose your fuel type:',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ListTile(
                leading: Radio<String>(
                  value: 'Super',
                  groupValue: _selectedGasType,
                  onChanged: (value) {
                    setState(() {
                      _selectedGasType = value!;
                    });
                  },
                ),
                title: const Text('Super',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Improved',
                  groupValue: _selectedGasType,
                  onChanged: (value) {
                    setState(() {
                      _selectedGasType = value!;
                    });
                  },
                ),
                title: const Text('Improved',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'Normal',
                  groupValue: _selectedGasType,
                  onChanged: (value) {
                    setState(() {
                      _selectedGasType = value!;
                    });
                  },
                ),
                title: const Text('Normal',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.fromLTRB(5, 15, 5, 15)),
          Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: quantityController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Quantity in Liter(s)',
                ),
              ),
            ),
          Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Order!',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const Order()),);
                  },
                )
            ),
          ],
        ),
      ),
    );
  }
}
