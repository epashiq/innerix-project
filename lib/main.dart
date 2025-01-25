import 'package:flutter/material.dart';
import 'package:innerix_project/features/app_root/presentation/app_root.dart';
import 'package:innerix_project/features/authentication/data/i_auth_facade.dart';
import 'package:innerix_project/features/authentication/presentation/provider/auth_provider.dart';
import 'package:innerix_project/features/authentication/presentation/view/login_screen.dart';
import 'package:innerix_project/features/home/data/i_home_facde.dart';
import 'package:innerix_project/features/home/presentation/provider.dart/home_provider.dart';
import 'package:innerix_project/features/profile/data/model/i_profile_facade.dart';
import 'package:innerix_project/features/profile/presentation/provider/profile_provider.dart';
import 'package:innerix_project/general/di/injection.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependency();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Future<bool> userLoggedIn() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('email') != null;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) => HomeProvider(iHomeFacde: sl<IHomeFacde>())),
        ChangeNotifierProvider(
            create: (_) => AuthProvider(iAuthFacade: sl<IAuthFacade>())),
             ChangeNotifierProvider(
            create: (_) => ProfileProvider(sl<IProfileFacade>()))
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: FutureBuilder(
            future: userLoggedIn(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else if (snapshot.hasData && snapshot.data == true) {
                return const AppRoot();
              } else {
               return const LoginScreen();
              }
            },
          )),
    );
  }
}
