import 'package:dartz/dartz.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';

abstract class IAuthFacade {
  Future<Either<MainFailure,Unit>> login(String email,String password){
    throw UnimplementedError('login() not implemented');
  }
}