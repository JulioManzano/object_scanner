import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

import '../../core/config/graphql_provider.dart';
import '../../models/api.graphql.dart';

class ObjectModelService {
  Future<List<Object?>> getProducts({
    required int limit,
    required int offset,
    String? search,
    String? ordering,
    required double venueId,
  }) async {
    final GraphQLClient client = getGraphQLClient(service: 'get_models');
    final QueryOptions options = QueryOptions(
      document: MODELS_QUERY_DOCUMENT,
      variables: ModelsArguments(
        limit: limit,
        offset: offset,
        venue_id: venueId,
        ordering: ordering, search: search,
      ).toJson(),
    );

    final QueryResult result = await client.query(options);

    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception.toString());
      }
    }
    if (!result.hasException && result.isNotLoading) {
      return Models$Query.fromJson(result.data!).objectmodels!.results!;
    }
    return [];
  }
}
