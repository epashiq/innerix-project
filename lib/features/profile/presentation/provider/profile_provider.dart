import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:innerix_project/features/profile/data/model/i_profile_facade.dart';
import 'package:innerix_project/features/profile/data/model/user_model.dart';

class ProfileProvider extends ChangeNotifier {
  final IProfileFacade iProfileFacade;

  ProfileProvider(this.iProfileFacade);

  User? _user;
  User? get user => _user;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

   final nameController =
        TextEditingController();
    final emailController =
        TextEditingController();
    final phoneController =
        TextEditingController();

  Future<void> fetchUserProfile() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();

    final result = await iProfileFacade.fetchUser();

    result.fold(
      (failure) {
        _errorMessage = failure.errorMessage;
        log('failed to load user');
      },
      (user) {
        _user = user;
        log('success to load user');
      },
    );

    _isLoading = false;
    notifyListeners();
  }

  Future<void> updateUserProfile(
      String name, String email, String phone) async {
    _isLoading = true;
    notifyListeners();

    final result = await iProfileFacade.editProfile(
      name: name,
      email: email,
      phone: phone,
    );

    result.fold(
      (failure) {
        _errorMessage = failure.errorMessage;
      },
      (updatedUser) {
        _user = updatedUser;
        _errorMessage = null;
      },
    );

    _isLoading = false;
    notifyListeners();
  }
}
