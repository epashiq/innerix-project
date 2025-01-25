import 'package:dartz/dartz.dart';
import 'package:innerix_project/features/profile/data/model/user_model.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';

abstract class IProfileFacade {
  Future<Either<MainFailure,User>> fetchUser()async{
    throw UnimplementedError('fetchUser() not implemented');
  }
}