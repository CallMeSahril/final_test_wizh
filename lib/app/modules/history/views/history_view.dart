import 'package:final_test_wizh/app/modules/history/widget/oders_old.dart';
import 'package:final_test_wizh/app/modules/orders/widgets/is_empty.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(title: Text('Riwayat')),
        body: Column(
          children: [
            TabBar(
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.black12,
              isScrollable: true,
              labelColor: Colors.blue,
              tabs: [Tab(text: "Pesanan Lama"), Tab(text: "Refund Lama")],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TabBarView(
                children: [
                  OrdersOld(),
                  IsEmpty(title: "Tidak ada Refund Lama"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
