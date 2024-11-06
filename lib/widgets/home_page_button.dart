import 'package:flutter/material.dart';

class HomePageButton extends StatefulWidget {
  final String buttonIconPath;
  final String buttonName;
  final VoidCallback onClick;

  const HomePageButton(
      {super.key,
      required this.buttonName,
      required this.buttonIconPath,
      required this.onClick});

  @override
  State<HomePageButton> createState() => _HomePageButtonState();
}

class _HomePageButtonState extends State<HomePageButton> {
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: widget.onClick,
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: _isPressed
              ? const Color.fromRGBO(220, 140, 50, 1)
              : const Color.fromRGBO(247, 170, 54, 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: const Color.fromRGBO(138, 60, 122, 1),
            style: BorderStyle.solid,
            width: 3,
          ),
          boxShadow: _isPressed
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(2, 2),
                    blurRadius: 5,
                  ),
                ]
              : [],
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(widget.buttonIconPath),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.buttonName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16, // Adjust text size
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
