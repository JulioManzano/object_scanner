import 'package:flutter/material.dart';
import 'package:untitled/presentation/screens/navigation/home/widget/body_home.dart';
import 'package:untitled/presentation/widget/components/app_bar_basic.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarBasic(
        title: "Inicio",
      ),
      body: BodyHome(),
    );
  }
}
