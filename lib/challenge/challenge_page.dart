import 'package:flutter/material.dart';
import 'package:learn_flutter/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:learn_flutter/challenge/widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: SafeArea(top: true, child: QuestionIndicatorWidget()),
        preferredSize: Size.fromHeight(60),
      ),
      body: QuizWidget(title: "O que o Flutter faz em sua totalidade?"),
    );
  }
}
