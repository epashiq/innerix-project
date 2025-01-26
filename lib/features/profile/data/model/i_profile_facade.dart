import 'package:dartz/dartz.dart';
import 'package:innerix_project/features/profile/data/model/user_model.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';

abstract class IProfileFacade {
  Future<Either<MainFailure,User>> fetchUser()async{
    throw UnimplementedError('fetchUser() not implemented');
  }

   Future<Either<MainFailure, User>> editProfile({
    required String name,
    required String email,
    required String phone,
  }) async {
    throw UnimplementedError('editProfile() unimplemented');
  }
}