// class LoginResponse {
//   final bool status;
//   final String message;
//   final User user;
//   final String accessToken;
//   final String refreshToken;

//   LoginResponse({
//     required this.status,
//     required this.message,
//     required this.user,
//     required this.accessToken,
//     required this.refreshToken,
//   });

//   // Factory method to create a LoginResponse object from JSON
//   factory LoginResponse.fromJson(Map<String, dynamic> json) {
//     return LoginResponse(
//       status: json['status'] ?? false,
//       message: json['message'] ?? '',
//       user: User.fromJson(json['user']),
//       accessToken: json['access_token'] ?? '',
//       refreshToken: json['refresh_token'] ?? '',
//     );
//   }

//   // Method to convert a LoginResponse object to JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'status': status,
//       'message': message,
//       'user': user.toJson(),
//       'access_token': accessToken,
//       'refresh_token': refreshToken,
//     };
//   }

//   @override
//   String toString() {
//     return 'LoginResponse(status: $status, message: $message, user: $user, accessToken: $accessToken, refreshToken: $refreshToken)';
//   }
// }

class User {
  final int userId;
  final int? shopId;
  final String email;
  final String phoneNumber;
  final String name;
  final String profileImage;
  final int userRole;
  final String gender;
  final int age;
  final String? roles;

  User({
    required this.userId,
    this.shopId,
    required this.email,
    required this.phoneNumber,
    required this.name,
    required this.profileImage,
    required this.userRole,
    required this.gender,
    required this.age,
    this.roles,
  });

  // Factory method to create a User object from JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['user_id'] ?? 0,
      shopId: json['shop_id'],
      email: json['email'] ?? '',
      phoneNumber: json['phone_number'] ?? '',
      name: json['name'] ?? '',
      profileImage: json['profile_image'] ?? '',
      userRole: json['user_role'] ?? 0,
      gender: json['gender'] ?? '',
      age: json['age'] ?? 0,
      roles: json['roles'],
    );
  }

  // Method to convert a User object to JSON
  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'shop_id': shopId,
      'email': email,
      'phone_number': phoneNumber,
      'name': name,
      'profile_image': profileImage,
      'user_role': userRole,
      'gender': gender,
      'age': age,
      'roles': roles,
    };
  }

  // @override
  // String toString() {
  //   return 'User(userId: $userId, shopId: $shopId, email: $email, phoneNumber: $phoneNumber, name: $name, profileImage: $profileImage, userRole: $userRole, gender: $gender, age: $age, roles: $roles)';
  // }
}
