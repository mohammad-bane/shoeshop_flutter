import 'package:flutter/material.dart';

class ColorToggleButtons extends StatelessWidget {
  const ColorToggleButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Color",
            style: TextStyle(fontSize: 20, color: Color(0xff193364)),
          ),
          SizedBox(
            height: 8,
          ),
          ColorButtons(
            onColorSelected: (int) {},
          ),
        ],
      ),
    );
  }
}

class ColorButtons extends StatefulWidget {
  final void Function(int) onColorSelected;

  ColorButtons({required this.onColorSelected});

  @override
  _ColorButtonsState createState() => _ColorButtonsState();
}

class _ColorButtonsState extends State<ColorButtons> {
  List<bool> _isSelected = [true, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      hoverColor: Colors.white,
      highlightColor: Colors.white,
      splashColor: Colors.white,
      renderBorder: false,
      isSelected: _isSelected,
      fillColor: Colors.transparent,
      children: [
        CircleAvatar(
          backgroundColor: Color(0xffff6262),
          child: _isSelected[0] ? Icon(Icons.check, color: Colors.white) : null,
        ),
        CircleAvatar(
          backgroundColor: Color(0xff63c7ff),
          child: _isSelected[1] ? Icon(Icons.check, color: Colors.white) : null,
        ),
        CircleAvatar(
          backgroundColor: Color(0xfff8e7cd),
          child: _isSelected[2] ? Icon(Icons.check, color: Colors.white) : null,
        ),
        CircleAvatar(
          backgroundColor: Color(0xff193364),
          child: _isSelected[3] ? Icon(Icons.check, color: Colors.white) : null,
        ),
        CircleAvatar(
          backgroundColor: Colors.black,
          child: _isSelected[4] ? Icon(Icons.check, color: Colors.white) : null,
        ),
      ],
      onPressed: (int index) {
        setState(() {
          _isSelected = List.generate(5, (i) => i == index);
          widget.onColorSelected(index);
        });
      },
    );
  }
}
