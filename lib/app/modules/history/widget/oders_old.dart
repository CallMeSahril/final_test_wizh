import 'package:final_test_wizh/app/modules/history/widget/build_containt_order.dart';
import 'package:final_test_wizh/app/modules/history/widget/build_warning.dart';
import 'package:flutter/material.dart';

class OrdersOld extends StatelessWidget {
  OrdersOld({super.key});
  final List<bool> isReschedule = [
    false,
    true,
    false,
    true,
    false,
    false,
    true,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          BuildWarning(),
          ListView.builder(
            itemCount: isReschedule.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder:
                (context, index) =>
                    BuildContaintOrder(isReschedule: isReschedule[index]),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
              },
              child: Column(
                children: [Icon(Icons.filter_list), Text("Filter")],
              ),
            ),
            InkWell(
              onTap: () {
              },
              child: Column(children: [Icon(Icons.sort), Text("Urutkan")]),
            ),
          ],
        ),
      ),
    );
  }
}
