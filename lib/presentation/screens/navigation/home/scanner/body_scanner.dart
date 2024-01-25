import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/core/config/route_name.dart';
import 'package:untitled/core/constants/constants.dart';
import 'package:untitled/core/utils/utils.dart';
import 'package:untitled/presentation/widget/components/basic_button.dart';

class BodyScanner extends StatelessWidget {
  const BodyScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Utils.initModel(context, 1),
        //todo : change venueID 2p parameter
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data != null) {
              if (snapshot.data == null) {
                return wBasicBody(context);
              } else {
                return FutureBuilder(
                  future: Utils.downloadModel(snapshot.data!.file!),
                  builder: (context, snapshot) {
                    if(snapshot.connectionState == ConnectionState.done) {
                      if(snapshot.data ?? false) {
                        return wBasicBody(context);
                      }
                      return const Center(
                        child: Text("Fallo al obtener los datos"),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(color: kPrimaryColor),
                    );
                  },
                );
              }
            }
            return const Center(
              child: Text("Fallo al obtener los datos"),
            );
          }
          return const Center(
            child: CircularProgressIndicator(color: kPrimaryColor),
          );
        });
  }

  Widget wBasicBody(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemBuilder: (_, index) {
              return Container();
            },
            itemCount: 3,
          ),
        ),
        const SizedBox(height: 12),
        BasicButton(
          onTap: () {
            context.push(RouteName.scanProduct);
          },
          textButton: "Escanear",
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
