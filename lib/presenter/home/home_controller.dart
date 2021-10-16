import 'package:evento001/models/breeds_model.dart';
import 'package:get/get.dart';

import 'package:evento001/repository/repository.dart';

class HomeController extends GetxController {
  final AllRepository repository;
  HomeController({
    required this.repository,
  });

  List<BreedsModel> breeds = [];

  @override
  void onInit() async {
    var breeds = await repository.breedsGet();

    super.onInit();
  }
}
