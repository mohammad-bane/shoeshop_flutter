import 'package:flutter/material.dart';

class QuantityContainerHistory extends StatelessWidget {
  const QuantityContainerHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          color: Color.fromARGB(197, 241, 243, 245),
          width: MediaQuery.of(context).size.width,
          height: 180,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OrdersTextandPrice(),
              ContainerOfButtons(),
            ],
          ),
        ),
        //it is a divider after container
        Divider(
          thickness: 8,
          color: Color(0xfff3f7f9),
        ),
      ],
    );
  }
}

// first and second row which are:             'Velocity Runners, 41, white'
class OrdersTextandPrice extends StatelessWidget {
  const OrdersTextandPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          QuantityAndPriceRow(),
          QuantityAndPriceRow(),
        ],
      ),
    );
  }
}

class QuantityAndPriceRow extends StatelessWidget {
  const QuantityAndPriceRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Velocity Runners, 41, white',
            style: TextStyle(fontSize: 18, color: Color(0xff60708e)),
          ),
          Text(
            '1 × \$73.99',
            style: TextStyle(fontSize: 18, color: Color(0xff60708e)),
          )
        ],
      ),
    );
  }
}

//Repeat order and leav a reviw Button
class ContainerOfButtons extends StatelessWidget {
  const ContainerOfButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RepeatorderButton(),
        LeavereviewButton(),
      ],
    );
  }
}

class RepeatorderButton extends StatelessWidget {
  const RepeatorderButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Icon(
                  Icons.repeat,
                  size: 24,
                  color: Color(0xff193364),
                ),
                Text(
                  'repeat order',
                  style: TextStyle(color: Color(0xff193364), fontSize: 18),
                )
              ],
            )),
      ],
    );
  }
}

class LeavereviewButton extends StatelessWidget {
  const LeavereviewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  'leave a review',
                  style: TextStyle(color: Color(0xff193364), fontSize: 18),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 16,
                  color: Color(0xff193364),
                ),
              ],
            ))
      ],
    );
  }
}
