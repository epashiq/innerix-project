import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @lazySingleton
  Dio dio() {
    final dio = Dio();

    dio.options = BaseOptions(
      baseUrl: 'https://app.ecominnerix.com/api/v1',
    );

    return dio;
  }
}
