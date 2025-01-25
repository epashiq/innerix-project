// import 'dart:developer';

// import 'package:flutter/foundation.dart';
// import 'package:innerix_project/features/category/data/i_category_facade.dart';
// import 'package:innerix_project/features/category/data/model/category_model.dart';

// class CategoryProvider with ChangeNotifier{
//   final ICategoryFacade iCategoryFacade;
//   CategoryProvider({required this.iCategoryFacade});

//    CategoryResponse? categoryResponse;
//   bool _isLoading = false;

//   bool get isLoading => _isLoading;

//   Future<void> fetchChCategory(int categoryId) async {
//     _isLoading = true;
//     log('Fetching home page data...');
//     notifyListeners();

//     final result = await iCategoryFacade.fetchChCategory(categoryId);

//     result.fold(
//       (failure) {
//         log('Error: ${failure.errorMessage}');
//         throw Exception('Failed to fetch home page data');
//       },
//       (success) {
//         categoryResponse = success;
//         log('Home data fetched successfully: ');
//         return success;
     
//       },
//     );

//     _isLoading = false;
//     notifyListeners();
//   }
// }


import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:innerix_project/features/category/data/i_category_facade.dart';
import 'package:innerix_project/features/category/data/model/category_model.dart';

class CategoryProvider with ChangeNotifier {
  final ICategoryFacade iCategoryFacade;
  CategoryProvider({required this.iCategoryFacade});

  CategoryResponse? categoryResponse;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  // Change return type from Future<void> to Future<CategoryResponse>
  Future<CategoryResponse> fetchChCategory(int categoryId) async {
    _isLoading = true;
    log('Fetching category data...');
    notifyListeners();

    final result = await iCategoryFacade.fetchChCategory(categoryId);

    // Instead of throwing an exception, we now return the CategoryResponse
    return result.fold(
      (failure) {
        log('Error: ${failure.errorMessage}');
        throw Exception('Failed to fetch category data');
      },
      (success) {
        categoryResponse = success;
        log('Category data fetched successfully');
        return success; // Return the CategoryResponse
      },
    );
  }
}
