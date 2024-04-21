import 'package:flutter/material.dart';

class ProductItemsWrap extends StatelessWidget {
  const ProductItemsWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        runSpacing: 8,
        spacing: 8,
        children: [
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
          testingg(),
        ],
      ),
    );
  }
}

class testingg extends StatelessWidget {
  const testingg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 14,
      //margin: EdgeInsets.only(left: 8,),
      height: 340,
      child: BestSellerProductItems(),
    );
  }
}

class BestSellerProductItems extends StatelessWidget {
  const BestSellerProductItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 340,
        width: 210,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffE8EFF4),
        ),
        //width: MediaQuery.of(context).size.width * 0.20,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ImageContainer(),
                  ContainersIcons(),
                  SaleTextContainer()
                ],
              ),
              SizedBox(
                height: 8,
              ),
              BellowContainerTexts(),
            ],
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        //margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
        height: MediaQuery.of(context).size.width * 0.6,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                image: AssetImage('assets/img/6969.jpg'), fit: BoxFit.fill)));
  }
}

class ContainersIcons extends StatelessWidget {
  const ContainersIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 8,
      child: Column(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.shopping_basket_outlined)),
        ],
      ),
    );
  }
}

class BellowContainerTexts extends StatelessWidget {
  const BellowContainerTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [
                ...List.generate(
                    4,
                    (index) => Icon(Icons.star,
                        color: Colors.yellow)), // Generate 3 icons
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                ),
                Text(
                  '(23)',
                  style: TextStyle(color: Color(0xff8894aa)),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          'Seekers Hiking Boot',
          style: TextStyle(color: Color(0xff8894aa)),
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              '\$89.99',
              style: TextStyle(
                  decoration: TextDecoration.lineThrough, color: Colors.grey),
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              '\$73.99',
              style: TextStyle(color: Colors.red, fontSize: 18),
            ),
          ],
        )
      ],
    );
  }
}

class SaleTextContainer extends StatelessWidget {
  const SaleTextContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: 8,
        top: 8,
        child: Container(
          alignment: Alignment.center,
          width: 50,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            color: Color(0xff51ba74),
          ),
          child: Text(
            'Sale',
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}
