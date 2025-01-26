import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:innerix_project/features/category/data/i_category_facade.dart';
import 'package:innerix_project/features/home/data/model/best_offer_item_model.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';
import 'package:innerix_project/general/utils/api_utils.dart';
@LazySingleton(as: ICategoryFacade)
class ICategoryImpl implements ICategoryFacade{
  final Dio dio;
  ICategoryImpl({required this.dio});
  @override
  Future<Either<MainFailure, ApiResponse>> fetchChCategory(int categoryId) async{
      try {
      final response = await dio.get('${ApiUtils.homeUrl}/$categoryId');
      if (response.statusCode == 200) {
        final data = response.data;
        ApiResponse apiResponse = ApiResponse.fromJson(data);
        return right(apiResponse);
      } else {
        throw Exception('Error fetching data');
      }
    } catch (e) {
      return left(
        MainFailure.serverFailure(errorMessage: e.toString()),
      );
    }
  }
  }

