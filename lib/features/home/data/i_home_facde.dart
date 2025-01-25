import 'package:dartz/dartz.dart';
import 'package:innerix_project/features/home/data/model/best_offer_item_model.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';

abstract class IHomeFacde {
  Future<Either<MainFailure,ApiResponse>> fetchHomePage()async{
    throw UnimplementedError('fetchHomePage() not implemented');
  }
}