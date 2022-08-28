import 'package:flutter/material.dart';

class IdCardScreen extends StatelessWidget {
  const IdCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ID Card"),
        backgroundColor: Colors.pink[800],
      ),
      backgroundColor: Colors.pink[200],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.pink,
              backgroundImage: AssetImage('images/profile.jpg'),
            ),
            const Text(
              'Boss Baby',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                fontFamily: 'Pacifico',
                color: Colors.white,
              ),
            ),
            Text(
              'Managing Director'.toUpperCase(),
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white.withOpacity(0.7),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
                height: 30,
                width: MediaQuery.of(context).size.width / 2,
                child: Divider(
                  color: Colors.pink[100],
                )),
            Contact(
              icon: Icons.phone,
              title: '+82 123 456 789',
              subTitle: 'Don\'bother me',
            ),
            Contact(
              icon: Icons.email,
              title: 'boss@baby.com',
              subTitle: 'No spam plz',
            ),
            Contact(
              icon: Icons.military_tech,
              title: 'Kungfu',
              subTitle: 'Boxing, just a little bit',
            ),
          ],
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subTitle;

  const Contact({
    required this.icon,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 25,
      ),
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.pink,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'SourceSansPro',
            color: Colors.pink.shade900,
          ),
        ),
        subtitle: Text(subTitle,
            style: TextStyle(
              color: Colors.pink.shade900,
            )),
      ),
    );
  }
}
