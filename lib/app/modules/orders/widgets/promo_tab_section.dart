import 'package:final_test_wizh/app/modules/orders/models/promo_tab_section_model.dart';
import 'package:flutter/material.dart';

class PromoTabSection extends StatefulWidget {
  final bool isDicount;
  final MapPromoTabSectionModel promoTabSectionModel;
  const PromoTabSection({
    super.key,
    required this.promoTabSectionModel,
    this.isDicount = false,
  });

  @override
  State<PromoTabSection> createState() => _PromoTabSectionState();
}

class _PromoTabSectionState extends State<PromoTabSection> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: widget.promoTabSectionModel.promoTabSectionModel.length,
      child: Column(
        children: [
          TabBar(
            tabAlignment: TabAlignment.start,

            dividerColor: Colors.transparent,
            isScrollable: true,
            indicator: BoxDecoration(
              // border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(8),
              color: Colors.white, // Ubah warna latar tab aktif menjadi putih
            ),

            indicatorColor: Colors.transparent,
            tabs:
                widget.promoTabSectionModel.promoTabSectionModel
                    .map((e) => _buildTabCustom(title: e.title))
                    .toList(),
          ),

          const SizedBox(height: 8),
          widget.isDicount
              ? Container(
                constraints: BoxConstraints(maxHeight: 340),
                child: TabBarView(
                  children:
                      widget.promoTabSectionModel.promoTabSectionModel
                          .map((e) => _buildTabContentDisc(e.title))
                          .toList(),
                ),
              )
              : Container(
                constraints: BoxConstraints(maxHeight: 250),
                child: TabBarView(
                  children:
                      widget.promoTabSectionModel.promoTabSectionModel
                          .map((e) => _buildTabContentPromo(e.title))
                          .toList(),
                ),
              ),
        ],
      ),
    );
  }

  Widget _buildTabCustom({required String title}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(title, style: TextStyle(fontSize: 14, color: Colors.black)),
    );
  }

  Widget _buildTabContentDisc(String title) {
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
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            decoration: BoxDecoration(),
                            child: const Center(child: Text('Logo Here')),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Deskripsi",
                                  style: Theme.of(context).textTheme.bodySmall
                                      ?.copyWith(color: Colors.grey),
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: "3.8",
                                    style: Theme.of(context).textTheme.bodySmall
                                        ?.copyWith(color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: "/5 (13 Review)",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(color: Colors.grey),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Stack(
                                      children: [
                                        Text(
                                          "Rp 1.500.000",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(color: Colors.grey),
                                        ),
                                        Positioned(
                                          top: 8,
                                          left: 0,
                                          right: 0,
                                          child: Transform.rotate(
                                            angle: -0.1,
                                            child: Container(
                                              height: 1,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "Rp 1.000.000",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall?.copyWith(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0,
                        top: 100,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                          child: Text(
                            "THR Termeriah",
                            style: TextTheme.of(
                              context,
                            ).titleSmall?.copyWith(color: Colors.white,fontSize: 8),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Lihat Semua",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  Widget _buildTabContentPromo(String title) {
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
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(),
                        child: const Center(child: Text('Logo Here')),
                      ),
                    ],
                  ),
                ),
          ),
        ),
        SizedBox(height: 8),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                "Lihat Semua",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
