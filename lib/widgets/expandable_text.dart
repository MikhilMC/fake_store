import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String textContent;
  final int maxCharacters;

  const ExpandableText({
    super.key,
    required this.textContent,
    this.maxCharacters = 100,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final String displayText = _isExpanded
        ? widget.textContent
        : widget.textContent.length > widget.maxCharacters
            ? "${widget.textContent.substring(0, widget.maxCharacters)}.."
            : widget.textContent;
    return Wrap(
      textDirection: TextDirection.rtl,
      children: [
        Text(
          displayText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // const SizedBox(height: 8.0),
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Text(
            _isExpanded ? 'Show less' : 'Show more',
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
