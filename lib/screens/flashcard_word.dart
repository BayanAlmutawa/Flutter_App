import 'dart:math';

import 'package:flutter/material.dart';


class FlashcardWord extends StatefulWidget {
  
  @override
  FlipViewTest createState() => FlipViewTest();  
}


class FlipViewTest extends State<FlashcardWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: FlipView(
            front: Container(
              color: Colors.red,
              alignment: Alignment.center,
              child: Text('你好', style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
            back: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: Text('Hello', style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}

class FlipView extends StatefulWidget {
  final Widget front, back;

  FlipView({Key key, @required this.front, @required this.back}) : super(key: key);

  @override
  _FlipViewState createState() => _FlipViewState();
}

class _FlipViewState extends State<FlipView> with SingleTickerProviderStateMixin {
  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(duration: Duration(milliseconds: 400), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        bool isFront = _controller.value < .5;
        return InkWell(
          onTap: () {
            if (_animation.isDismissed) {
              _controller.forward();
            } else if (_animation.isCompleted) {
              _controller.reverse();
            }
          },
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.002)
              ..rotateX(pi * _animation.value + (isFront ? 0 : pi)),
            alignment: FractionalOffset.center,
            child: isFront ? widget.front : widget.back,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}