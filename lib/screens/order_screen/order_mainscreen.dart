import 'package:flutter/material.dart';
import 'widgets/quantitytextcomponents.dart';
import 'widgets/shippingstatuscomponents.dart';
import 'widgets/order_appbar.dart';

class OrderHistoryScreen extends StatelessWidget {
  const OrderHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: OrderScreenAppbar(),
        body: ListView(
          padding: EdgeInsets.only(top: 8),
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            StatusContainersHistory(),
            QuantityContainerHistory(),
                        StatusContainersHistory(),

          ],
        ),
      ),
    );
  }
}



