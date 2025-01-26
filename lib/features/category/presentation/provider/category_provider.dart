
// import 'dart:developer';
// import 'package:flutter/material.dart';
// import 'package:innerix_project/features/home/data/model/best_offer_item_model.dart';
// import 'package:innerix_project/features/category/data/i_category_facade.dart';

// class CategoryProvider with ChangeNotifier {
//   final ICategoryFacade iCategoryFacade;
//   CategoryProvider({required this.iCategoryFacade});

//   ApiResponse? categoryResponse;
//   bool _isLoading = false;

//   bool get isLoading => _isLoading;

//   Future<void> fetchChCategory(int categoryId) async {
//     _isLoading = true;
//     log('Fetching category data...');
//     notifyListeners();

//     final result = await iCategoryFacade.fetchChCategory(categoryId);  

//     result.fold(
//       (failure) {
//         log('Error: ${failure.errorMessage}');
//         _isLoading = false;
//         notifyListeners();
//         throw Exception('Failed to fetch category data');  
//       },
//       (success) {
//         categoryResponse = success;
//         log('Category data fetched successfully');
//         _isLoading = false;
//         notifyListeners();
//       },
//     );
//   }
// }



import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:innerix_project/features/home/data/model/best_offer_item_model.dart';

class CategoryProvider extends ChangeNotifier {
  final dio = Dio();
  int currentPage = 1;
  int totalPages = 1;
  List<ApiResponse> products = [];
  bool isLoading = false;

  Future<void> fetchCategoryProducts(int categoryId, {bool isPaginated = false}) async {
    if (isPaginated) {
      isLoading = true;
      notifyListeners();
    }

    final url = 'https://app.ecominnerix.com/api/categories?page=$currentPage';
    try {
      final response = await dio.get(url);
      if (response.statusCode == 200) {
        final data = response.data; // No need for json.decode here
        final categoryData = data['data'] as List; // List of products
        final pageData = categoryData
            .map((json) => ApiResponse.fromJson(json))
            .toList();

        if (isPaginated) {
          products.addAll(pageData);
        } else {
          products = pageData;
        }

        currentPage = data['current_page']; // Current page from response
        totalPages = data['last_page']; // Total pages from response
      } else {
        throw Exception('Failed to load products');
      }
    } catch (error) {
      throw Exception('Failed to load products: $error');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  bool get hasNextPage => currentPage < totalPages;
}



