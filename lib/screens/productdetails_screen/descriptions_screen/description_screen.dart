import 'package:flutter/material.dart';
import 'Appbar.dart';

class DescriptionScreen extends StatelessWidget {
  const DescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: DescriptionAppbar(),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          children: [ShoesNameText(), ShoesDescriptionsText()],
        ),
      ),
    ));
  }
}

class ShoesNameText extends StatelessWidget {
  const ShoesNameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: Text(
        'Flex Fit Training Shoes',
        style: TextStyle(
            color: Color(0xff193364),
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}

class ShoesDescriptionsText extends StatelessWidget {
  const ShoesDescriptionsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1, style: TextStyle(color: Colors.grey, fontSize: 18)),
          SizedBox(height: 32),
          Text(text2, style: TextStyle(color: Colors.grey, fontSize: 18)),
        ],
      ),
    );
  }

  String get text1 =>
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan tortor posuere ac ut consequat semper viverra nam. Dolor sed viverra ipsum nunc aliquet bibendum enim. In arcu cursus euismod quis viverra nibh cras pulvinar. Magnis dis parturient montes nascetur ridiculus mus mauris vitae. Auctor eu augue ut lectus arcu bibendum at varius vel. Amet nulla facilisi morbi tempus iaculis urna id. Risus nullam eget felis eget nunc lobortis. Non diam phasellus vestibulum lorem sed. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Lectus magna fringilla urna porttitor rhoncus dolor purus non enim. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra.';

  String get text2 =>
      'Scelerisque eleifend donec pretium vulputate. Semper viverra nam libero justo laoreet sit amet cursus. Ridiculus mus mauris vitae ultricies leo integer malesuada nunc vel. Nec ullamcorper sit amet risus. Mauris cursus mattis molestie a. Velit laoreet id donec ultrices tincidunt arcu non sodales neque. Eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus. Lacus sed turpis tincidunt id aliquet risus feugiat in. Leo a diam sollicitudin tempor id eu nisl. Fusce ut placerat orci nulla pellentesque dignissim enim. Feugiat in ante metus dictum at tempor commodo ullamcorper. Enim praesent elementum facilisis leo. Mi eget mauris pharetra et. Fringilla est ullamcorper eget nulla facilisi. Mattis rhoncus urna neque viverra justo nec ultrices dui. Nec ultrices dui sapien eget mi proin. Sit amet consectetur adipiscing elit ut aliquam.';
}
