import 'package:graphql/client.dart';

import 'enviroment.dart';

GraphQLClient getGraphQLClient({required String service}) {
  String currentUri = Enviroment.httpLink.uri.toString();
  if (Enviroment.httpLink.uri.toString().contains('?')) {
    var uriList = Enviroment.httpLink.uri.toString().split('?');
    currentUri = uriList[0];
  }

  HttpLink httpLink = HttpLink(
    '$currentUri?$service',
    defaultHeaders: Enviroment.httpLink.defaultHeaders,
  );

  return GraphQLClient(
    cache: GraphQLCache(),
    link: httpLink,
  );
}

GraphQLClient getGraphQLPublicClient({required String service}) {
  String currentUri = Enviroment.getPublic().uri.toString();
  if (Enviroment.getPublic().uri.toString().contains('?')) {
    var uriList = Enviroment.getPublic().uri.toString().split('?');
    currentUri = uriList[0];
  }
  HttpLink httpLink = HttpLink(
    '$currentUri?$service',
    defaultHeaders: Enviroment.getPublic().defaultHeaders,
  );

  return GraphQLClient(
    cache: GraphQLCache(),
    link: httpLink,
  );
}
