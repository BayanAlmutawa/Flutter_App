import 'package:ChinaNow_app/screens/flashcard_word.dart';
import 'package:flutter/material.dart';


class Flashcards extends StatefulWidget {
  
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Flashcards> {

  void _incrementCounter() {
    setState(() {
     
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FlashcardWord()),
    );
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter the button to go to the Flashcards',
            ),
            SizedBox(height: 40.0),
            FloatingActionButton(onPressed: _incrementCounter, child: Icon(Icons.question_answer),)
         
          ],
        ),
      ),
      
    );
  }
}


