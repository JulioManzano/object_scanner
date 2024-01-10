import 'package:graphql/client.dart';

import 'link_def.dart';

class Enviroment {
  static HttpLink httpLink = HttpLink(
    publicUrl,
    defaultHeaders: {
      'Authorization': 'Bearer lsdkjEwehwueWsdkjhDsdfeu',
    },
  );

  static setPrivate(String token) {
    httpLink = HttpLink(
      privateUrl,
      defaultHeaders: {
        'Authorization': 'Token $token',
      },
    );
  }

  static setPublic() {
    httpLink = HttpLink(
      publicUrl,
      defaultHeaders: {
        'Authorization': 'Bearer lsdkjEwehwueWsdkjhDsdfeu',
      },
    );
  }

  static HttpLink getPublic() {
    return HttpLink(
      publicUrl,
      defaultHeaders: {
        'Authorization': 'Bearer lsdkjEwehwueWsdkjhDsdfeu',
        'Content-Type': 'multipart/form-data'
      },
    );
  }
}
