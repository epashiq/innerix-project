import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:innerix_project/features/authentication/data/i_auth_facade.dart';

class AuthProvider with ChangeNotifier {
  final IAuthFacade iAuthFacade;

  AuthProvider({required this.iAuthFacade});

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();

    log('Attempting login...');
    final result = await iAuthFacade.login(email, password);

    result.fold(
      (failure) {
        log('Login failed: ${failure.errorMessage}');
      },
      (success) {
        log('Login successful');
      },
    );

    _isLoading = false;
    notifyListeners();
  }
}
