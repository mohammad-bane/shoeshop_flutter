import 'package:flutter/material.dart';

import 'description_screen.dart';

class DescriptionsText extends StatelessWidget {
  const DescriptionsText({
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
            "Descriptions",
            style: TextStyle(fontSize: 20, color: Color(0xff193364)),
          ),
          SizedBox(
            height: 8,
          ),
          DescriptionFieldText(),
          ReadmoreButton(),
        ],
      ),
    );
  }
}

class ReadmoreButton extends StatelessWidget {
  const ReadmoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style:
            ButtonStyle(maximumSize: MaterialStatePropertyAll(Size(110, 50))),
        onPressed: () {
          Navigator.push(
            context, // Pass the current context
            MaterialPageRoute(
                builder: (context) =>
                    DescriptionScreen()), // Specify the target page
          );
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('read more'),
            Icon(
              Icons.arrow_forward_ios,
              size: 12,
            )
          ],
        ));
  }
}

class DescriptionFieldText extends StatelessWidget {
  const DescriptionFieldText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 16),
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan tortor posuere ac ut consequat semper viverra nam. Dolor sed viverra ipsum nunc aliquet bibendum enim. In arcu cursus euismod quis viverra nibh cras pulvinar. Magnis dis parturient montes nascetur ridiculus mus mauris vitae. Auctor eu augue ut lectus arcu bibendum at varius vel. Amet nulla facilisi morbi tempus iaculis urna id. Risus nullam eget felis eget nunc lobortis. Non diam phasellus vestibulum lorem sed. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Lectus magna fringilla urna porttitor rhoncus dolor purus non enim. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra.');
  }
}
