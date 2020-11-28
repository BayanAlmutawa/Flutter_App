import 'package:flutter/material.dart';
import 'package:ChinaNow_app/screens/flashcard_word.dart';

import '../widgets/course_list.dart';



class Flashcard_list extends StatefulWidget {
  
  @override
  _Flashcard_list createState() => _Flashcard_list();  
}

class _Flashcard_list extends State<Flashcard_list>  {


  List<Mycard> mycard = [
    Mycard(Icons.shopping_cart, 'Shopping', false),
    Mycard(Icons.food_bank, 'Food', false),
    Mycard(Icons.home, 'Home', false),
    Mycard(Icons.directions_transit_sharp, 'Vehicle', false),
    Mycard(Icons.people, 'People', false),
    Mycard(Icons.apartment_rounded, 'School', false),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xfff6f7f9),
      appBar: AppBar(
        title: Text('Flashcards Topics'),
        backgroundColor: Color.alphaBlend(Colors.white, Colors.black54),
      ),
      body: Column(
        children: <Widget>[
  /*        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Choose category',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black54,
              ),
            ),
          ),*/
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: mycard
                    .map(
                      (e) => InkWell(
                    onTap: () {
                      if(true){///////////////////////////////////////////////////////////////////////
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => FlashcardWord()),
                      );
                      }
                      
                    },
                    child: Card(
                      color: e.isActive ? Colors.cyan[500] : null,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            e.icon,
                            size: 50,
                            color: e.isActive
                                ? Colors.white
                                : Colors.cyan[500],
                          ),
                          SizedBox(height: 10),
                          Text(
                            e.title,
                            style: TextStyle(
                                color: e.isActive
                                    ? Colors.white
                                    : Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                    .toList(),
              ),
            ),
          )
        ],
      ),
     // bottomNavigationBar: AppBottomBar(),
    );
  }
}

class Mycard {
  final icon;
  final title;
  bool isActive = false;

  Mycard(this.icon, this.title, this.isActive);
}