import 'package:flutter/material.dart';

class DialogButtonRow extends StatefulWidget {
  const DialogButtonRow({super.key});

  @override
  State<DialogButtonRow> createState() => _DialogButtonRowState();
}

class _DialogButtonRowState extends State<DialogButtonRow> {
  void _showSortingOptions() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Build the sorting options here (e.g., dropdown, radio buttons)
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Colors.white,
          content: RadioButtonsItems(),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
            onPressed: () {}, icon: Icon(Icons.tune), label: Text('Filters')),
        Directionality(
          textDirection: TextDirection.rtl,
          child: TextButton.icon(
            onPressed: _showSortingOptions,
            icon: Icon(Icons.keyboard_arrow_down),
            label: Text('Sorting by'),
          ),
        ),
      ],
    );
  }
}


// Items
class RadioButtonsItems extends StatelessWidget {
  const RadioButtonsItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            title: Text(
              'Sale',
            ),
            value: 'sale',
            groupValue: 'sale', // Set the initial value
            onChanged: (value) {
              // Handle sorting option selection
            },
          ),
          Divider(
            height: 2,
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,

            title: Text('Top'),
            value: 'top',
            groupValue: 'sale', // Set the initial value
            onChanged: (value) {
              // Handle sorting option selection
            },
          ),
          Divider(
            height: 2,
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,

            title: Text('Newest'),
            value: 'newest',
            groupValue: 'sale', // Set the initial value
            onChanged: (value) {
              // Handle sorting option selection
            },
          ),
          Divider(
            height: 2,
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,

            title: Text('Price: low to high'),
            value: 'priceLoToHi',
            groupValue: 'sale', // Set the initial value
            onChanged: (value) {
              // Handle sorting option selection
            },
          ),
          Divider(
            height: 2,
          ),
          RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,

            title: Text('Price: high to low'),
            value: 'priceHiToLo',
            groupValue: 'sale', // Set the initial value
            onChanged: (value) {
              // Handle sorting option selection
            },
          ),
        ],
        // Add sorting options widgets here (e.g., DropdownButton, RadioListTile)
      ),
    );
  }
}
