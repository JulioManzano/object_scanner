import 'package:go_router/go_router.dart';
import 'package:untitled/views/camera_scan_screen.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, __) => const CameraScanScreen(),
    ),
  ],
);
