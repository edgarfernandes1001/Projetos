import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);
  
  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> with SingleTickerProviderStateMixin {

  Animation<double> _fontSizeAnimation; 
  AnimationController _fontSizeAnimationControler;

  @override
  void initState() {
    super.initState();
    _fontSizeAnimationControler = new AnimationController(duration: new Duration(milliseconds: 500), vsync: this);
    _fontSizeAnimation = new CurvedAnimation(parent: _fontSizeAnimationControler, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(() => this.setState(() {}));
    _fontSizeAnimationControler.forward();
  }

  @override
  void dispose() {
    _fontSizeAnimationControler.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(QuestionText oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget._question != widget._question) {
      _fontSizeAnimationControler.reset();
      _fontSizeAnimationControler.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return  new Material(
                color: Colors.white,
                  child: new Padding(
                  padding: new EdgeInsets.symmetric(vertical: 20.0),
                    child: new Center(
                    child: new Text(widget._questionNumber.toString() + ") " + widget._question,
                      style: new TextStyle(fontSize: _fontSizeAnimation.value * 15),
                      ),
                    )
                  ),
                );
  }
}