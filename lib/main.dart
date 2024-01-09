import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/core/config/router.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/presentation/provider/data_info/main_provider.dart';
import 'package:untitled/presentation/provider/data_info/navigation_provider.dart';
import 'package:untitled/presentation/provider/data_info/user_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => MainProvider()),
          ChangeNotifierProvider(create: (_) => UserProvider()),
          ChangeNotifierProvider(create: (_) => NavigationProvider()),
        ],
        child: MaterialApp.router(
          title: 'Demo AA',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
            useMaterial3: true,
          ),
          routerConfig: appRouter,
        ),
      ),
    );
  }
}
