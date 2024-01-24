import 'package:go_router/go_router.dart';
import 'package:untitled/core/config/route_name.dart';
import 'package:untitled/presentation/screens/products/info/full/full_info_product_screen.dart';
import 'package:untitled/presentation/screens/test/ui/home_view.dart';
import 'package:untitled/presentation/widget/custom/camera_scan_screen.dart';

import '../../presentation/screens/products/new_product/new_product_screen.dart';
import '../../presentation/screens/wrapper/wrapper.dart';
import 'package:flutter/material.dart';

import '../../presentation/widget/custom/camera_scan_google.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const Wrapper(),
    ),
    //--------------------------------------------------------
    GoRoute(
      path: RouteName.product,
      builder: (_, state) => const FormProductScreen(),
      routes: [
        GoRoute(
          path: ":id",
          builder: (_, state) => FullInfoProductScreen(
            idProduct: state.pathParameters["id"],
          ),
        ),
      ],
    ),
    //--------------------------------------------------------
    GoRoute(
      path: RouteName.scanProduct,
      builder: (_, __) =>  ObjectDetectorView(),
    ),
  ],
);
