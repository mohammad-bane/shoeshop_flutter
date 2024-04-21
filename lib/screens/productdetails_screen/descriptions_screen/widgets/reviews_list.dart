import 'package:flutter/material.dart';

class ReviewsList extends StatelessWidget {
  const ReviewsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      children: [
        UserProfileContainer(),
        UserProfileContainer(),
        UserProfileContainer(),
        UserProfileContainer(),
      ],
    );
  }
}

class UserProfileContainer extends StatelessWidget {
  const UserProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    //For this reason, we put two columns because we want our divider to have no padding and be as wide as the page
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30.0, // Adjust profile image size
                    backgroundImage: AssetImage('assets/img/lana.jpg'),
                  ),
                  SizedBox(
                      width: 16.0), // Spacing between profile image and text
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Emily Johnson',
                              style: TextStyle(
                                  fontSize: 16.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ...List.generate(
                                    4,
                                    (index) => Icon(
                                          Icons.star,
                                          color: Color(0xfff5c102),
                                          size: 18,
                                        )), // Generate 3 icons
                                Icon(
                                  Icons.star_border,
                                  color: Color(0xfff5c102),
                                  size: 18,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 4.0), // Spacing between name and date
                        Text(
                          '23 Jan 2024',
                          style: TextStyle(fontSize: 12.0, color: Colors.grey),
                        ),
                        SizedBox(
                            height: 4.0), // Spacing between date and rating
                        // Spacing between rating and text below
                        Text(
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan tortor posuere ac ut consequat semper viverra nam. Dolor sed viverra ipsum nunc aliquet bibendum enim. In arcu cursus euismod quis viverra nibh cras pulvinar. Magnis dis parturient montes nascetur ridiculus mus mauris vitae',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
        ),
      ],
    );
  }
}
