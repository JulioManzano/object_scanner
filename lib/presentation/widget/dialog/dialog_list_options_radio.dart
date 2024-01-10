import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../styles/text_style.dart';

class DialogListOptionsRadio extends StatefulWidget {
  const DialogListOptionsRadio({
    super.key,
    required this.options,
    required this.title,
  });

  final List<String> options;
  final String title;

  @override
  State<DialogListOptionsRadio> createState() => _DialogListOptionsRadioState();
}

class _DialogListOptionsRadioState extends State<DialogListOptionsRadio> {
  String? selectOption;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            widget.title,
            style: StyleTxt.title,
          ),
        ),
        Container(
          constraints: const BoxConstraints(
            maxHeight: 300,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: widget.options.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                onTap: () {
                  Navigator.of(context).pop(widget.options[index]);
                },
                title: Text(
                  widget.options[index],
                ),
                leading: Radio<String>(
                  value: widget.options[index],
                  groupValue: selectOption,
                  onChanged: (String? valor) {
                    setState(() {
                      selectOption = valor;
                    });
                  },
                ),
              );
            },
          ),
        ),
        Wrap(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(selectOption);
              },
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
              ),
              child: const Text(
                "Seleccionar",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
