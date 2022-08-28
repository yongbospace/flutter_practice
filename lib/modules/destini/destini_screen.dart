import 'package:flutter/material.dart';
import 'package:flutter_practice/modules/destini/components/story_list.dart';

StoryList storyList = StoryList();

class DestiniScreen extends StatefulWidget {
  const DestiniScreen({Key? key}) : super(key: key);

  @override
  State<DestiniScreen> createState() => _DestiniScreenState();
}

class _DestiniScreenState extends State<DestiniScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destini'),
        backgroundColor: Colors.indigo[700],
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: storyList.isInContents()
                    ? AssetImage('images/destinibg2.png')
                    : storyList.isStart()
                        ? AssetImage('images/destinibg1.jpeg')
                        : AssetImage('images/destinibg3.jpeg'),
                fit: BoxFit.cover),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyList.getStory(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: storyList.isInContents() ? 24 : 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              storyList.getChoice(1) == ''
                  ? SizedBox()
                  : Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        style: buttonStyle(Colors.blue[700]),
                        onPressed: () {
                          onPressed(1);
                        },
                        child: Text(
                          storyList.getChoice(1),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
              SizedBox(height: 20),
              storyList.getChoice(2) == ''
                  ? SizedBox()
                  : Expanded(
                      flex: 2,
                      child: ElevatedButton(
                        style: buttonStyle(Colors.indigo[700]),
                        onPressed: () {
                          onPressed(2);
                        },
                        child: Text(
                          storyList.getChoice(2),
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }

  void onPressed(choice) {
    setState(() {
      storyList.nextStory(choice);
    });
  }

  ButtonStyle buttonStyle(color) {
    return ElevatedButton.styleFrom(
      primary: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
