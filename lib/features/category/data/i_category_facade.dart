import 'package:dartz/dartz.dart';
import 'package:innerix_project/features/category/data/model/category_model.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';

abstract class ICategoryFacade {
  Future<Either<MainFailure,CategoryResponse>> fetchChCategory(int categoryId)async{
    throw UnimplementedError();
  }
}