import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff193364),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ContactUsContainer(),
            Expanded(child: InformationsList()),
          ],
        ),
      ),
    );
  }
}

class InformationsList extends StatelessWidget {
  const InformationsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0, vertical: 16.0), // Adjust the padding as desired
      child: ListView(
        children: ListTile.divideTiles(
          context: context,
          tiles: [
            LocationTextRow(),
            EmailTextRow(),
            PhoneTextRow(),
          ],
          color: Colors.white.withOpacity(0.4),
        ).toList(),
      ),
    );
  }
}


class ContactUsContainer extends StatelessWidget {
  const ContactUsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
      height: 150,
      color: Color(0xff193364),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 5,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
          ),
          Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}


class LocationTextRow extends StatelessWidget {
  const LocationTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: Colors.white.withOpacity(0.4),
            )),
        child: Icon(
          Icons.location_on,
          color: Colors.white,
        ),
      ),
      title: Text(
        '27 Division St, New York, NY 10002, USA',
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}



class EmailTextRow extends StatelessWidget {
  const EmailTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: Colors.white.withOpacity(0.4),
            )),
        child: Icon(
          Icons.email,
          color: Colors.white,
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'stephubsupport@mail.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            'stephubsupport@mail.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}


class PhoneTextRow extends StatelessWidget {
  const PhoneTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              width: 1,
              color: Colors.white.withOpacity(0.4),
            )),
        child: Icon(
          Icons.phone,
          color: Colors.white,
        ),
      ),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '+17 1234567890',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          Text(
            '+17 1234567890',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
