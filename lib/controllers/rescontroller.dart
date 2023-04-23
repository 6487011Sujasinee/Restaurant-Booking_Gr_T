import 'package:get/state_manager.dart';
import 'package:pj_gr_t/models/callapi.dart';
import 'package:pj_gr_t/services/remote_api.dart';

class RestaurantController extends GetxController {
  var Res_list = <Restaurant>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchRestaurants();
    super.onInit();
  }

  void fetchRestaurants() async {
    try {
      isLoading(true);
      var restaurants = await RemoteServices.fetchRestaurant();
      if (restaurants != null) {
        Res_list.value = restaurants;
      }
    } finally {
      isLoading(false);
    }
  }
}
