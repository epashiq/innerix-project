

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:innerix_project/features/home/data/i_home_facde.dart';
import 'package:innerix_project/features/home/data/model/best_offer_item_model.dart';


class HomeProvider with ChangeNotifier {
  final IHomeFacde iHomeFacde;

  HomeProvider({required this.iHomeFacde});

  ApiResponse? apiResponse;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> fetchHomePage() async {
    _isLoading = true;
    log('Fetching home page data...');
    notifyListeners();

    final result = await iHomeFacde.fetchHomePage();

    result.fold(
      (failure) {
        log('Error: ${failure.errorMessage}');
        throw Exception('Failed to fetch home page data');
      },
      (success) {
        apiResponse = success;
        log('Home data fetched successfully: ');
     
      },
    );

    _isLoading = false;
    notifyListeners();
  }

//   List<BestOfferItem>? _bestOfferItem;

//   List<BestOfferItem>? get bestOffer => _bestOfferItem;

//   final dio = Dio();


// Future<ApiResponse> fetchData() async {
//   try {
//     final response = await dio.get(ApiUtils.homeUrl);
//     if (response.statusCode == 200) {
//       final data = response.data;
//       ApiResponse apiResponse = ApiResponse.fromJson(data);
//       return apiResponse;
//     } else {
//       throw Exception('Error fetching data');
//     }
//   } catch (e) {
//     throw Exception('Error: $e');
//   }
// }


}
