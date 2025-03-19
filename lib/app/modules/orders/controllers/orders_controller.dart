import 'package:final_test_wizh/app/modules/orders/models/promo_tab_section_model.dart';
import 'package:get/get.dart';

class OrdersController extends GetxController {
  List<PromoTabSectionModel> promoTabSectionModel = [
    PromoTabSectionModel(title: 'Atraksi'),
    PromoTabSectionModel(title: 'Hotel'),
    PromoTabSectionModel(title: 'Vila & Apt.'),
    PromoTabSectionModel(title: 'Tempat Bermain'),
    PromoTabSectionModel(title: 'Spa & Kecantikan'),
  ];
  List<PromoTabSectionModel> yourRecomendedProme = [
    PromoTabSectionModel(title: 'Semua'),
    PromoTabSectionModel(title: 'Pesawat'),
    PromoTabSectionModel(title: 'Hotel'),
    PromoTabSectionModel(title: 'Vila & Apt. '),
    PromoTabSectionModel(title: 'Todo'),
    PromoTabSectionModel(title: 'Kereta APi'),
    PromoTabSectionModel(title: 'Bus & Travel'),
    PromoTabSectionModel(title: 'Sewa Mobil'),
    PromoTabSectionModel(title: 'Jemputan Bandara'),
    PromoTabSectionModel(title: 'Ferry'),
  ];
  List<String> isReschedule = ["Selesai", "E-tiket telah terbit"];
  
  // final count = 0.obs;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }

  // void increment() => count.value++;
}
