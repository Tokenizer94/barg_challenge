import 'package:barg_challenge/src/core/util/util.dart';
import 'package:flutter/material.dart';

class CustomRichTextWidget extends StatelessWidget {
  final String title;
  final String content;
  final int maxLines;
  const CustomRichTextWidget({
    Key? key,
    required this.title,
    required this.content,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: title,
            style: styleGenerator(fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: content,
            style: styleGenerator(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
