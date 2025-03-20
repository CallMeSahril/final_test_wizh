class PromoTabSectionModel {
  final String title;
  PromoTabSectionModel({required this.title});
}


class MapPromoTabSectionModel {
  final String title;
  final List<PromoTabSectionModel> promoTabSectionModel;
  MapPromoTabSectionModel({required this.title, required this.promoTabSectionModel});
}