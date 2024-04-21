import 'package:flutter/material.dart';

class OrderContainer extends StatelessWidget {
  final String orderNumber;
  final String shippingText;
  final IconData shippingIcon;
  final Color shippingColor;
  final String price;
  final DateTime dateTime;

  const OrderContainer({
    super.key,
    required this.orderNumber,
    required this.shippingText,
    required this.shippingIcon,
    required this.shippingColor,
    required this.price,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OrdernumberRow(
                orderNumber: orderNumber,
                shippingText: shippingText,
                shippingIcon: shippingIcon,
                shippingColor: shippingColor,
              ),
              DateAndPriceRow(
                dateTime: dateTime,
                price: price,
              ),
              Divider(
                thickness: 8,
                color: Color(0xfff3f7f9),
              ),
            ],
          ),
        ),
      ],
    );
  }
}


class StatusContainersHistory extends StatelessWidget {
  const StatusContainersHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrderContainer(
          orderNumber: '#456345',
          shippingText: 'Shipping',
          shippingIcon: Icons.local_shipping_outlined,
          shippingColor: Color(0xfff7cc31),
          price: '354.32',
          dateTime: DateTime(2024, 2, 2, 20, 32),
        ),
        OrderContainer(
          orderNumber: '#859685',
          shippingText: 'Delivered',
          shippingIcon: Icons.check,
          shippingColor: Colors.green,
          price: '354.32',
          dateTime: DateTime(2024, 2, 2, 20, 32),
        ),
        OrderContainer(
          orderNumber: '#698758',
          shippingText: 'Canceled',
          shippingIcon: Icons.close,
          shippingColor: Colors.red,
          price: '354.32',
          dateTime: DateTime(2024, 2, 2, 20, 32),
        ),
      ],
    );
  }
}
class OrdernumberRow extends StatelessWidget {
  final String orderNumber;
  final String shippingText;
  final IconData shippingIcon;
  final Color shippingColor;

  const OrdernumberRow({
    super.key,
    required this.orderNumber,
    required this.shippingText,
    required this.shippingIcon,
    required this.shippingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(orderNumber,
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: Color(0xff193364))),
        SizedBox(
          width: 20,
        ),
        ShippingTextIcon(
          shippingText: shippingText,
          shippingIcon: shippingIcon,
          shippingColor: shippingColor,
        ),
      ],
    );
  }
}

class ShippingTextIcon extends StatelessWidget {
  final String shippingText;
  final IconData shippingIcon;
  final Color shippingColor;

  const ShippingTextIcon({
    super.key,
    required this.shippingText,
    required this.shippingIcon,
    required this.shippingColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(shippingText,
            style: TextStyle(
              color: shippingColor,
              fontSize: 19,
            )),
        SizedBox(
          width: 8,
        ),
        Icon(
          shippingIcon,
          color: shippingColor,
          size: 24,
        )
      ],
    );
  }
}

class DateAndPriceRow extends StatelessWidget {
  final DateTime dateTime;
  final String price;

  const DateAndPriceRow({
    super.key,
    required this.dateTime,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            '${dateTime.day} ${_getMonthName(dateTime.month)}, ${dateTime.year}, at ${_formatTime(dateTime)}',
            style: TextStyle(fontSize: 16, color: Color(0xff60708e))),
        Text('\$$price',
            style: TextStyle(fontSize: 16, color: Color(0xff193364)))
      ],
    );
  }

  String _getMonthName(int month) {
    List<String> monthNames = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return monthNames[month - 1];
  }

  String _formatTime(DateTime dateTime) {
    int hour = dateTime.hour;
    int minute = dateTime.minute;
    String amPm = hour >= 12 ? 'pm' : 'am';
    hour = hour % 12;
    hour = hour == 0 ? 12 : hour;
    String minuteString = minute.toString().padLeft(2, '0');
    return '$hour:$minuteString $amPm';
  }
}