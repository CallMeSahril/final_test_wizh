import 'package:final_test_wizh/app/modules/orders/models/promo_tab_section_model.dart';
import 'package:flutter/material.dart';

class PromoTabSection extends StatefulWidget {
  final List<PromoTabSectionModel> promoTabSectionModel;
  const PromoTabSection({super.key, required this.promoTabSectionModel});

  @override
  State<PromoTabSection> createState() => _PromoTabSectionState();
}

class _PromoTabSectionState extends State<PromoTabSection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.promoTabSectionModel.length,
      child: Column(
        children: [
          TabBar(
            tabAlignment: TabAlignment.start,
            dividerColor: Colors.transparent,
            isScrollable: true,
            labelColor: Colors.blue,
            indicator: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue.withAlpha((0.2 * 255).toInt()),
            ),

            indicatorColor: Colors.transparent,
            tabs:
                widget.promoTabSectionModel
                    .map((e) => _buildTapCustome(title: e.title))
                    .toList(),
          ),

          const SizedBox(height: 8),
          Container(
            constraints: BoxConstraints(maxHeight: 250),
            child: TabBarView(
              children:
                  widget.promoTabSectionModel
                      .map((e) => _buildTabContent(e.title))
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Container _buildTapCustome({required String title}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.transparent),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Tab(text: title),
    );
  }

  Widget _buildTabContent(String title) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder:
                (context, index) => Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Center(child: Text('Logo Here')),
                      ),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Deskripsi",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Text(
                        "Harga",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
          ),
        ),
        ElevatedButton(onPressed: () {}, child: Text('Lihat Semua')),
        SizedBox(height: 8),
      ],
    );
  }
}
