// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/authentication/data/i_auth_facade.dart' as _i416;
import '../../features/authentication/repo/i_auth_impl.dart' as _i324;
import '../../features/home/data/i_home_facde.dart' as _i573;
import '../../features/home/repo/i_home_impl.dart' as _i105;
import '../../features/profile/data/model/i_profile_facade.dart' as _i558;
import '../../features/profile/repo/i_profile_impl.dart' as _i211;
import 'injectable_module.dart' as _i109;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<_i361.Dio>(() => injectableModule.dio());
  gh.lazySingleton<_i558.IProfileFacade>(
      () => _i211.IProfileImpl(gh<_i361.Dio>()));
  gh.lazySingleton<_i573.IHomeFacde>(
      () => _i105.IHomeImpl(dio: gh<_i361.Dio>()));
  gh.lazySingleton<_i416.IAuthFacade>(
      () => _i324.IAuthImpl(dio: gh<_i361.Dio>()));
  return getIt;
}

class _$InjectableModule extends _i109.InjectableModule {}
