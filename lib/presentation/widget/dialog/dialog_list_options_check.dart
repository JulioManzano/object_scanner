import 'package:flutter/material.dart';


class DialogListOptionsCheck extends StatefulWidget {
  const DialogListOptionsCheck({
    super.key,
    required this.options,
  });

  final List<String> options;

  @override
  State<DialogListOptionsCheck> createState() => _DialogListOptionsCheckState();
}

class _DialogListOptionsCheckState extends State<DialogListOptionsCheck> {
  List<String> optionsSelect = [];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0, // Change as per your requirement
      width: 300.0, // Change as per your requirement
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

            trailing: Checkbox(
              value: optionsSelect.contains(widget.options[index]),
              onChanged: (bool? check) {
                setState(() {
                  if (check != null && check) {
                    optionsSelect.add(widget.options[index]);
                  } else {
                    optionsSelect.remove(widget.options[index]);
                  }
                });
              },
            ),
          );
        },
      ),
    );
  }
}
