import 'package:final_test_wizh/app/modules/history/widget/build_containt_order.dart';
import 'package:final_test_wizh/app/modules/orders/widgets/help_containt.dart';
import 'package:final_test_wizh/app/modules/orders/widgets/promo_trip.dart';
import 'package:final_test_wizh/app/routes/app_pages.dart';
import 'package:final_test_wizh/app/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/orders_controller.dart';

class OrdersView extends GetView<OrdersController> {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: CustomAppBar(
        title: 'Your Orders',
        actions: [
          InkWell(
            onTap: () => Get.toNamed(Routes.HISTORY),
            child: Icon(Icons.history, size: 30),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          // IsEmpty(title: "Tidak ada order aktif",),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Text(
              "Tiket Aktif",
              style: Theme.of(
                context,
              ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            itemCount: controller.isReschedule.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder:
                (context, index) =>
                    BuildContaintOrder(title: controller.isReschedule[index]),
          ),
          HelpContaint(),
          PromoTrip(
            icon: Icons.phone_android,
            promoTabSectionModel: controller.promoTabSectionModel,
          ),
          PromoTrip(
            icon: Icons.card_travel,
            promoTabSectionModel: controller.yourRecomendedProme,
          ),
        ],
      ),
    );
  }
}
