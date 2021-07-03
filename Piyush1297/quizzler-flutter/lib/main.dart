import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quizzler/question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int corr=0;
  int ques=0;
  List <Question> questionBank=[
    Question(q: "You can lead a cow down stairs but not up stairs.",a:false ),
    Question(q: 'Approximately one quarter of human bones are in the feet.',a:true ),
    Question(q: 'A slug\'s blood is green.',a:true ),
    Question(q: "The Earth is mostly comprised of water.",a: false),
  ];
  List <Widget> scoreKeeper=[
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questionBank[ques].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  bool answer=questionBank[ques].questionAnswer;
                  if(answer==true){
                    scoreKeeper.add(Icon(Icons.check,
                      color:Colors.green,),);
                    corr++;
                  }else{
                    scoreKeeper.add(Icon(Icons.close,
                      color:Colors.red,),);
                  }
                  if(ques+1<=3){
                    ques=ques+1;
                  }else{
                    setState(() {
                      ques=ques+1;
                      Alert(context: context, title: "Quizzler", desc: "Test is Over \n You have got $corr out of $ques correctly").show();
                      ques=0;
                      corr=0;
                    });
                  }


                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool answer=questionBank[ques].questionAnswer;
                  if(answer==false){
                    scoreKeeper.add(Icon(Icons.check,
                      color:Colors.green,),);
                    corr++;
                  }else{
                    scoreKeeper.add(Icon(Icons.close,
                      color:Colors.red,),);
                  }
                  if(ques+1<=3){
                    ques=ques+1;
                  }else{
                    setState(() {
                      ques=ques+1;
                      Alert(context: context, title: "Quizzler", desc: "Test is Over \n You have got $corr out of $ques correctly").show();
                      ques=0;
                      corr=0;
                    });
                  }
                });
              },
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
