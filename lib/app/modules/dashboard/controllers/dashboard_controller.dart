import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/app/modules/dashboard/services/dashboard_service.dart';

import 'package:getx_clean_architecture/common/colors.dart';

import '../../../../common/ui.dart';
import '../../../models/user_model.dart';
import '../../../services/background/user_service.dart';
import '../../../models/available_within_hours_model.dart';
import '../../../models/featured_workspace_model.dart';
import '../../../models/my_reservation_model.dart';
import '../../../models/recommended_workSpaces.dart';
import '../../../models/type_of_work_space_model.dart';

class DashboardController extends GetxController {
  AnyDashboardService dashboardService;

  DashboardController({required this.dashboardService});

  final List<TypeOfWorkSpaceModelClass> typeOfWorkSpaceModel = [
    TypeOfWorkSpaceModelClass(
      'assest/images/barber_shop_icon.png',
      'Barbershop',
      AppColors.blueColor.color,
    ),
    TypeOfWorkSpaceModelClass(
      'assest/images/tattoo_studio_icon.png',
      'Tattoo Studio',
      AppColors.buttonColor.color,
    ),
    TypeOfWorkSpaceModelClass(
      'assest/images/medical_spa_icon.png',
      'Medical Spa',
      AppColors.medicalSpaBg.color,
    ),
    TypeOfWorkSpaceModelClass(
      'assest/images/beauty_salon_icon.png',
      'Beauty Saloon',
      AppColors.beautySaloonBg.color,
    ),
    TypeOfWorkSpaceModelClass(
      'assest/images/barber_shop_icon.png',
      'Barbershop',
      AppColors.blueColor.color,
    ),
    TypeOfWorkSpaceModelClass(
      'assest/images/tattoo_studio_icon.png',
      'Tattoo Studio',
      AppColors.buttonColor.color,
    ),
  ];

  final List<FeaturedWorkSpaceModelClass> featuredWorkSpaceModel = [
    FeaturedWorkSpaceModelClass(
      'assest/images/standerd_chair.png',
      'High Traffic, standard chair',
      "Houston, Texas",
    ),
    FeaturedWorkSpaceModelClass(
      'assest/images/dummy_barber_shop_image.png',
      'Four Beauty Saloon',
      "40 W, New York",
    ),
    FeaturedWorkSpaceModelClass(
      'assest/images/dummy_sallon_shop_image.png',
      'Saloon and Spa',
      "NY 10011, USA",
    ),
    FeaturedWorkSpaceModelClass(
      'assest/images/dummy_barber_shop_image.png',
      'Beauty Saloon',
      "NY 10011, USA",
    ),
    FeaturedWorkSpaceModelClass(
      'assest/images/standerd_chair.png',
      'Barbershop',
      "Bangalore-560016",
    ),
    FeaturedWorkSpaceModelClass(
      'assest/images/standerd_chair.png',
      'Unisex Saloon',
      "Phoenix Mall, Whitefield",
    ),
  ];
  final List<MyReservationModelClass> myreservationModelClass = [
    MyReservationModelClass('assest/images/standerd_chair.png'),
    MyReservationModelClass('assest/images/dummy_barber_shop_image.png'),
    MyReservationModelClass('assest/images/dummy_sallon_shop_image.png'),
    MyReservationModelClass('assest/images/dummy_barber_shop_image.png'),
    MyReservationModelClass('assest/images/standerd_chair.png'),
    MyReservationModelClass('assest/images/standerd_chair.png'),
  ];
  final List<AvailableWithINHoursModelClass> availableWithInHourModelClass = [
    AvailableWithINHoursModelClass('assest/images/dummy_barber_shop_image.png'),
    AvailableWithINHoursModelClass('assest/images/standerd_chair.png'),
    AvailableWithINHoursModelClass('assest/images/dummy_sallon_shop_image.png'),
    AvailableWithINHoursModelClass('assest/images/dummy_barber_shop_image.png'),
    AvailableWithINHoursModelClass('assest/images/dummy_sallon_shop_image.png'),
  ];
  final List<RecommendedWorkSpacesModelClass> recommendedWorkSpacesModelClass =
      [
        RecommendedWorkSpacesModelClass('assest/images/standerd_chair.png'),
        RecommendedWorkSpacesModelClass(
          'assest/images/dummy_barber_shop_image.png',
        ),
        RecommendedWorkSpacesModelClass(
          'assest/images/dummy_sallon_shop_image.png',
        ),
        RecommendedWorkSpacesModelClass(
          'assest/images/dummy_barber_shop_image.png',
        ),
        RecommendedWorkSpacesModelClass('assest/images/standerd_chair.png'),
        RecommendedWorkSpacesModelClass('assest/images/standerd_chair.png'),
      ];
  dynamic data = [];
  final loading = false.obs;
  final loadingMessage = ''.obs;
  final Rx<User> currentUser = Get.find<UserService>().user;

  @override
  void onInit() async {
    // await fetchData();
    super.onInit();
  }

  // Future<void> fetchData() async {
  //   try {
  //     loading.value = true;
  //     loadingMessage.value = 'fetching-data';
  //     // data = await dashboardService.fetchData();
  //     Future.delayed(const Duration(seconds: 5));
  //   } on DioException catch (e) {
  //     Get.showSnackbar(Ui.ErrorSnackBar(message: e.message.toString()));
  //   } finally {
  //     loading.value = false;
  //     loadingMessage.value = '';
  //   }
  // }
}
