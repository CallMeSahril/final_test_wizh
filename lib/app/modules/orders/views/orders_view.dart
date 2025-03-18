import 'package:final_test_wizh/app/modules/orders/widgets/help_containt.dart';
import 'package:final_test_wizh/app/modules/orders/widgets/is_empty.dart';
import 'package:final_test_wizh/app/modules/orders/widgets/promo_trip.dart';
import 'package:final_test_wizh/app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/orders_controller.dart';

class OrdersView extends GetView<OrdersController> {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: const CustomAppBar(title: 'Your Orders'),
      body: ListView(
        children: [
          IsEmpty(),
          HelpContaint(),
          PromoTrip(promoTabSectionModel: controller.promoTabSectionModel),
          PromoTrip(promoTabSectionModel: controller.yourRecomendedProme),
        ],
      ),
    );
  }
}
