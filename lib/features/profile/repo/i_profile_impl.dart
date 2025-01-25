import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:innerix_project/features/profile/data/model/i_profile_facade.dart';
import 'package:innerix_project/features/profile/data/model/user_model.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';
@LazySingleton(as: IProfileFacade)
class IProfileImpl implements IProfileFacade {
  final Dio dio;

  IProfileImpl(this.dio);

  @override
  Future<Either<MainFailure, User>> fetchUser() async {
    try {
      final response = await dio.get(
        'https://app.ecominnerix.com/api/login',
       
        options: Options(
          
          headers: {
            'Accept': 'application/json',
          },
        ),
      );

      if (response.statusCode == 200 && response.data['status'] == true) {
        final user = User.fromJson(response.data['user']);
        return right(user);
      } else {
        return left(MainFailure.serverFailure(
            errorMessage: response.data['message'] ?? 'Unknown error occurred'));
      }
    } catch (e) {
 
      return left(MainFailure.serverFailure(errorMessage: e.toString()));
    }
  }
}
