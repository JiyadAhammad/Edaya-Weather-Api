import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

import 'domain/user/user.dart';
import 'presentation/constant/color/colors.dart';
import 'presentation/splash/splash_screen.dart';

const String SAVE_NAME = 'logedin';
late Box<UserModel> userDb;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(
    UserModelAdapter(),
  );
  userDb = await Hive.openBox<UserModel>('user');
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      designSize: const Size(
        360,
        800,
      ),
      builder: (
        BuildContext context,
        Widget? child,
      ) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            scaffoldBackgroundColor: theme,
            // primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        );
      },
    );
  }
}
