import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loreto_mobprob/screens/home_screen.dart';
import 'package:loreto_mobprob/screens/newsfeed_screen.dart';
import 'package:loreto_mobprob/material_ui.dart';

void main(){
  runApp(const MyApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Facebook Replication",
          initialRoute: '/home',
          routes: {
            "/newsfeed": (context) => const NewsFeedScreen(),
            "/home": (context) => const HomeScreen(),
          }
        ); //Material APp
      },
    ); //ScreenUtilInit
  }
}