import 'package:flutter/material.dart';

class SizeButtons extends StatelessWidget {
  const SizeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "size",
            style: TextStyle(fontSize: 20, color: Color(0xff193364)),
          ),
          SizedBox(
            height: 8,
          ),
          Buttons(),
        ],
      ),
    );
  }
}



class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  int _selectedIndex = -1; // Track selected button index

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: List.generate(5, (index) { // Assuming 5 buttons
        return ElevatedButton(
          onPressed: () => setState(() => _selectedIndex = index),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            backgroundColor: _selectedIndex == index
                ? Color(0xff193364)
                : Color(0xfff2f7fc),
            foregroundColor: _selectedIndex == index
                ? Color(0xfff5c102)
                : Color(0xff193364),
            side: BorderSide.none,
          ),
          child: Text('${index + 39}'), // Adjust numbering if needed
        );
      }),
    );
  }
}
