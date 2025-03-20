import 'package:final_test_wizh/app/modules/orders/models/promo_tab_section_model.dart';
import 'package:final_test_wizh/app/modules/orders/widgets/promo_tab_section.dart';
import 'package:flutter/material.dart';

class PromoTrip extends StatelessWidget {
  final bool? isDiscount;
  final MapPromoTabSectionModel promoTabSectionModel;
  final IconData icon;
  const PromoTrip({
    super.key,
    required this.promoTabSectionModel,
    required this.icon,  this.isDiscount = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon),
              // Container(
              //   padding: const EdgeInsets.all(4),
              //   decoration: BoxDecoration(
              //     border: Border.all(color: Colors.black),
              //   ),
              //   child: const Text("Logo"),
              // ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  promoTabSectionModel.title,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          PromoTabSection(promoTabSectionModel: promoTabSectionModel,isDicount: isDiscount! ,),
        ],
      ),
    );
  }
}
