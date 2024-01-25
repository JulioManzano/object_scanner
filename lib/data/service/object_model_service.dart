import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

import '../../core/config/graphql_provider.dart';
import '../../models/api.graphql.dart';

class ObjectModelService {
  Future<List<Models$Query$Objectmodels$Results?>> getModels({
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
        ordering: ordering,
        search: search,
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

  Future<int?> createModel({
    required int venueId,
    String? code,
  }) async {
    final GraphQLClient client = getGraphQLClient(service: 'create_model');
    final MutationOptions options = MutationOptions(
      document: CREATE_MODEL_MUTATION_DOCUMENT,
      variables: CreateModelArguments(
        venue_id: venueId, //todo: change when implement store
      ).toJson(),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception.toString());
      }
    }

    if (!result.hasException && result.isNotLoading) {
      print("MODEL CREATE: ${result.data}");
      return CreateModel$Mutation.fromJson(result.data!)
          .createObjectModel
          ?.objectmodel
          ?.id ?? -1;
    }
    return null;
  }
}
