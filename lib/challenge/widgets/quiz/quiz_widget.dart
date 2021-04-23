import 'package:flutter/material.dart';
import 'package:learn_flutter/challenge/widgets/awnser/awnser_widget.dart';

import 'package:learn_flutter/core/core.dart';
import 'package:learn_flutter/shared/models/awnser_model.dart';
import 'package:learn_flutter/shared/models/question_model.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;

  const QuizWidget({
    Key? key,
    required this.question,
    required this.onSelected,
  }) : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AwnserModel awnser(int index) => widget.question.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 64,
          ),
          Text(
            widget.question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          for (var i = 0; i < widget.question.awnsers.length; i++)
            AwnserWidget(
              awnser: awnser(i),
              disabled: indexSelected != -1,
              isSelected: indexSelected == i,
              onTap: (value) {
                indexSelected = i;
                setState(() {});
                Future.delayed(Duration(milliseconds: 250))
                    .then((_) => widget.onSelected(value));
              },
            ),
        ],
      ),
    );
  }
}
