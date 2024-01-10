import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';

class DialogListOptions extends StatelessWidget {
  const DialogListOptions({
    super.key,
    required this.options,
  });

  final List<String> options;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0, // Change as per your requirement
      width: 300.0, // Change as per your requirement
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: options.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {
              Navigator.of(context).pop(options[index]);
            },
            title: Text(
              options[index],
            ),
            selectedColor: kPrimaryColor,
          );
        },
      ),
    );
  }
}
