import 'package:dartz/dartz.dart';
import 'package:innerix_project/features/home/data/model/best_offer_item_model.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';

abstract class ICategoryFacade {
  Future<Either<MainFailure,ApiResponse>> fetchChCategory(int categoryId)async{
    throw UnimplementedError();
  }
}