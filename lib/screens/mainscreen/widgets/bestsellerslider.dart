import 'package:flutter/material.dart';
import 'package:shoes_store/screens/productdetails_screen/details_mainscreen.dart';

class BestSellerSlider extends StatelessWidget {
  const BestSellerSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
      height: 350,
      //color: const Color.fromARGB(255, 184, 184, 36),
      //width: MediaQuery.of(context).size.width * 0.55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          BestSellerItems(),
          BestSellerItems(),
          BestSellerItems(),
          BestSellerItems(),
          BestSellerItems(),
        ],
      ),
    );
  }
}

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetails()));},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
        height: 340,
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
                image: AssetImage('assets/img/product.jpg'), fit: BoxFit.fill)));
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
                        color: Color(0xfff5c102))), // Generate 3 icons
                Icon(
                  Icons.star_border,
                  color: Color(0xfff5c102),
                ),
                Text('(23)'),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Text('FlexFit Training Shoes'),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text('\$89.99', style: TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey),),
            SizedBox(width: 16,),
            Text('\$73.99', style: TextStyle(color: Colors.red,fontSize: 18),),
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
