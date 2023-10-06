import 'package:flutter/material.dart';
import 'Questions.dart';

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
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
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List<Widget> Myscore = [];
  List<String> ques=[
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
  ];
  List<bool> ans=[
    false,true,true,
  ];
  // List<Question> qbank = [
  //   Question(qtext: 'You can lead a cow down stairs but not up stairs.', qans: false);
  //   Question(qtext: 'Approximately one quarter of human bones are in the feet.', qans: true);
  //   Question(qtext: 'A slug\'s blood is green..', qans: true);
  // ];
  int qnmbr=0;



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Center(
              child: Text(
                ques[qnmbr],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              color: Colors.green,
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      if(ans[qnmbr]==true)
                      {
                        Myscore.add(
                          const Icon(Icons.check,color: Colors.green,),
                        );
                      }
                      else
                      {
                        Myscore.add(
                          const Icon(Icons.close,color: Colors.red,),
                        );
                      }
                      qnmbr++;
                      if(qnmbr==ques.length) qnmbr=0;
                    });
                  },
                  child: const Text(
                      'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              color: Colors.red,
              child: TextButton(
                  onPressed: (){
                    setState(() {
                      if(ans[qnmbr]==false)
                      {
                        Myscore.add(
                          const Icon(Icons.check,color: Colors.green,),
                        );
                      }
                      else
                      {
                        Myscore.add(
                          const Icon(Icons.close,color: Colors.red,),
                        );
                      }
                      qnmbr++;
                      if(qnmbr==ques.length) qnmbr=0;
                    });
                  },
                  child: const Text(
                    'False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  )
              ),
            ),
          ),
        ),
        Row(
          children: Myscore,
        )
      ],
    );
  }
}


