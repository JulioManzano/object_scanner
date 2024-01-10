import 'package:flutter/material.dart';

import '../../presentation/widget/dialog/dialog_list_options.dart';
import '../../presentation/widget/dialog/dialog_list_options_check.dart';
import '../../presentation/widget/dialog/dialog_list_options_radio.dart';
import '../../styles/text_style.dart';
import '../constants/constants.dart';

class DialogUtils {
  static showSnackBar(
    BuildContext context, {
    required String title,
    bool error = false,
  }) {
    final snackBar = SnackBar(
      content: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: error ? Colors.redAccent : Colors.green,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static Future<bool?> basicDialog(
    BuildContext context, {
    required String title,
    String? description,
    String? acceptText,
  }) async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              title,
              style: StyleTxt.subtitle,
            ),
            content: description == null ? null : Text(description),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                ),
                child: Text(
                  acceptText ?? "Aceptar",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        });
    return res;
  }

  static Future<bool?> confirmButton(
    BuildContext context, {
    required String title,
    String? description,
    String? acceptText,
    String? cancelText,
  }) async {
    var res = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              title,
              style: StyleTxt.subtitle,
            ),
            content: description == null ? null : Text(description),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.grey.shade100,
                ),
                child: Text(
                  cancelText ?? "Cancelar",
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                style: TextButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                ),
                child: Text(
                  acceptText ?? "Aceptar",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        });
    return res;
  }

  static Future<String?> getOptionWithList(
    List<String> options,
    BuildContext context, {
    String title = "Seleccionar una opcion",
  }) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: DialogListOptions(options: options),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
          ],
        );
      },
    );
  }

  static Future<List<String>> getOptionWithListCheck(
    List<String> options,
    BuildContext context, {
    String title = "Seleccionar una opcion",
  }) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: DialogListOptionsCheck(options: options),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.close),
            ),
          ],
        );
      },
    );
  }

  static Future<String?> getOptionWithListRadio(
    List<String> options,
    BuildContext context, {
    String title = "Seleccionar una opcion",
  }) async {
    return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: DialogListOptionsRadio(
            options: options,
            title: title,
          ),
        );
      },
    );
  }

  static Future<String?> showDialogInputText(
    BuildContext context, {
    String? title,
    String? hintText,
    String? textSet,
  }) async {
    TextEditingController textController = TextEditingController(text: textSet);

    final res = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title ?? 'Ingrese un Texto'),
          content: TextField(
            controller: textController,
            decoration: InputDecoration(
              hintText: hintText ?? 'Ingrese aquí',
              hintStyle: TextStyle(
                color: Colors.grey.shade500,
              ),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancelar'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pop(textController.text); // Cerrar la ventana flotante
              },
              style: ElevatedButton.styleFrom(backgroundColor: kPrimaryColor),
              child: const Text(
                'Aceptar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );

    return res;
  }
}
