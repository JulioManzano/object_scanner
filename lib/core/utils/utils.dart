import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/data/service/object_model_service.dart';
import 'package:untitled/models/api.graphql.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class Utils {
  static savePreference(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }

  static Future<String?> getPreference(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key);
  }

  static String getPlatform() {
    String text = 'A';
    if (defaultTargetPlatform == TargetPlatform.iOS) {
      text = 'I';
    } else if (defaultTargetPlatform == TargetPlatform.android) {
      text = 'A';
    } else {
      text = 'W';
    }
    return text;
  }

  static Future<Models$Query$Objectmodels$Results?> initModel(BuildContext context, double venueID) async {
    final res = await ObjectModelService().getModels(
      limit: 1,
      venueId: venueID,
      offset: 0,
    );

    if (res.isNotEmpty) {
      print("FIRST MODEL: ${res.first!.toJson()}");
      if(await Utils.checkModel(res.first)){
        return res.first!;
      }
      return null;
    }
    return null;
  }

  static Future<bool> checkModel(Models$Query$Objectmodels$Results? first) async {
    String? model = await getPreference("model_update");
    if(model ==  null) return true;

    DateTime? updateAt = DateTime.tryParse(model);
    if(updateAt ==  null) throw Exception("Fallo al convertir datetime - update model");

    print("DATE LOCATE: ${updateAt}");
    print("DATE REMOTE: ${first?.updatedAt}");

    return updateAt.isAfter(first!.updatedAt!);
  }

  static Future<bool> downloadModel(String link) async {
    print("Link");
    return true;
  }

  static Future<Uint8List> testComporessList(Uint8List list) async {
    var result = await FlutterImageCompress.compressWithList(
      list,
      minHeight: 100,
      minWidth: 100,
      quality: 20,
    );
    print("COMPRESS: ${result.length}");
    return result;
  }
}
