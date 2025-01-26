import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:innerix_project/features/authentication/data/i_auth_facade.dart';
import 'package:innerix_project/general/main_failure/main_failures.dart';
import 'package:shared_preferences/shared_preferences.dart';
@LazySingleton(as: IAuthFacade)
class IAuthImpl implements IAuthFacade {
  final Dio dio;
  IAuthImpl({required this.dio});
  // @override
  // Future<Either<MainFailure, Unit>> login(String email, String password) async {
  //   try {
  //     final Response response = await dio.post(
  //       'https://app.ecominnerix.com/api/login',
  //       data: {
  //         'email': email,
  //         'password': password,
  //       },
  //       options: Options(
  //         headers: {
  //           'Accept': 'application/json',
  //         },
  //       ),
  //     );

  //     if (response.statusCode == 200) {
  //       log('Login successful');

  //       final String token = response.data['token'];

  //       // Save login details to SharedPreferences
  //       final prefs = await SharedPreferences.getInstance();
  //       await prefs.setString('token', token);
  //       await prefs.setString('email', email);

  //       log('Login details saved to SharedPreferences');
  //     } else {
  //       log('Login failed with status code: ${response.statusCode}');
  //     }
  //     return right(unit);
  //   } catch (e) {
  //     log('Login exception: $e');
  //     return left(MainFailure.serverFailure(errorMessage: e.toString()));
  //   }
  // }


  @override
Future<Either<MainFailure, Unit>> login(String email, String password) async {
  try {
    final Response response = await dio.post(
      'https://app.ecominnerix.com/api/login',
      data: {
        'email': email,
        'password': password,
      },
      options: Options(
        headers: {
          'Accept': 'application/json',
        },
      ),
    );

    if (response.statusCode == 200 && response.data['status'] == true) {
      log('Login successful');

      final String accessToken = response.data['access_token'];
      final String refreshToken = response.data['refresh_token'];
      log('Access Token: $accessToken');
      log('Refresh Token: $refreshToken');

      final prefs = await SharedPreferences.getInstance();
      final isAccessTokenSaved = await prefs.setString('access_token', accessToken);
      final isRefreshTokenSaved = await prefs.setString('refresh_token', refreshToken);

      if (isAccessTokenSaved && isRefreshTokenSaved) {
        log('Tokens saved to SharedPreferences successfully');
      } else {
        log('Failed to save tokens to SharedPreferences');
      }

      await prefs.setString('email', email);

      log('Login details saved to SharedPreferences');
      return right(unit);
    } else {
      log('Login failed with status code: ${response.statusCode}');
      return left(MainFailure.serverFailure(errorMessage: response.data['message']));
    }
  } catch (e) {
    log('Login exception: $e');
    return left(MainFailure.serverFailure(errorMessage: e.toString()));
  }
}

}
