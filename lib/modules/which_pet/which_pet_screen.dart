import 'dart:math';

import 'package:flutter/material.dart';

TextStyle textStyle = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: "SourceSansPro",
  fontSize: 36,
);
List<String> pets = ["Pig", "Hamster", "Cat", "Dog", "Duck"];

class WhichPetScreen extends StatefulWidget {
  const WhichPetScreen({Key? key}) : super(key: key);

  @override
  State<WhichPetScreen> createState() => _WhichPetScreenState();
}

class _WhichPetScreenState extends State<WhichPetScreen> {
  int petNumber = Random().nextInt(pets.length);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Which Pet".toUpperCase(),
            style: textStyle.copyWith(
              fontSize: 24,
            )),
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          height: 300,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue[800],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 3,
            ),
            onPressed: () {
              setState(() {
                petNumber = Random().nextInt(pets.length);
              });
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => _SelectedPet(
                        petNumber: petNumber,
                        onAnimalTap: onAnimalTap,
                      )));
            },
            child: Center(
              child: Text(
                "You Should Get",
                style: textStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onAnimalTap() {
    Navigator.of(context).pop();
    ;
  }
}

class _SelectedPet extends StatelessWidget {
  final int petNumber;
  final VoidCallback onAnimalTap;
  const _SelectedPet({
    required this.petNumber,
    required this.onAnimalTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: GestureDetector(
          onTap: onAnimalTap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "images/pet${petNumber + 1}.jpg",
                    width: 400,
                    height: 600,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                Text('It\'s a ${pets[petNumber]}', style: textStyle),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
