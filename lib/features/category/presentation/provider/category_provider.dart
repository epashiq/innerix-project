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
        final data = response.data; 
        final categoryData = data['data'] as List; 
        final pageData = categoryData
            .map((json) => ApiResponse.fromJson(json))
            .toList();

        if (isPaginated) {
          products.addAll(pageData);
        } else {
          products = pageData;
        }

        currentPage = data['current_page']; 
        totalPages = data['last_page'];
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



