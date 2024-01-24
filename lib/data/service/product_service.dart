import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

import '../../core/config/graphql_provider.dart';
import '../../models/api.graphql.dart';

class ProductService {
  Future<Products$Query$Products$Results?> getProduct(int productId) async {
    final GraphQLClient client = getGraphQLClient(service: 'get_product');
    final QueryOptions options = QueryOptions(
      document: PRODUCT_QUERY_DOCUMENT,
      variables: ProductArguments(id: productId).toJson(),
    );

    final QueryResult result = await client.query(options);

    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception.toString());
      }
    }
    if (!result.hasException && result.isNotLoading) {
      var tempProduct = Product$Query.fromJson(result.data!).product;
      return Products$Query$Products$Results.fromJson(tempProduct!.toJson());
    }
    return null;
  }

  Future<List<Products$Query$Products$Results?>> getProducts({
    required int limit,
    required int offset,
    String? search,
    String? ordering,
  }) async {
    final GraphQLClient client = getGraphQLClient(service: 'get_products');
    final QueryOptions options = QueryOptions(
      document: PRODUCTS_QUERY_DOCUMENT,
      variables: ProductsArguments(
        limit: limit,
        offset: offset,
        is_active: true,
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
      return Products$Query.fromJson(result.data!).products!.results!;
    }
    return [];
  }

  Future<int?> createProduct({
    required String name,
    required String description,
    required double priceUnit,
    String? code,
  }) async {
    final GraphQLClient client = getGraphQLClient(service: 'create_product');
    final MutationOptions options = MutationOptions(
      document: CREATE_PRODUCT_MUTATION_DOCUMENT,
      variables: CreateProductArguments(
        name: name,
        description: description,
        price_unit: priceUnit,
        code: code,
        venue_id: 1, //todo: change when implement store
      ).toJson(),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception.toString());
      }
    }

    if (!result.hasException && result.isNotLoading) {
      return CreateProduct$Mutation.fromJson(result.data!).createProduct!.product!.id!;
    }
    return null;
  }

  Future<bool> updateProduct({
    required int id,
    String? name,
    String? description,
    double? priceUnit,
    bool? isActive,
  }) async {
    final GraphQLClient client = getGraphQLClient(service: 'update_product');
    final MutationOptions options = MutationOptions(
      document: UPDATE_PRODUCT_MUTATION_DOCUMENT,
      variables: UpdateProductArguments(
        id: id,
        name: name,
        is_active: isActive,
        description: description,
        price_unit: priceUnit,
      ).toJson(),
    );

    final QueryResult result = await client.mutate(options);
    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception.toString());
      }
    }
    if (!result.hasException && result.isNotLoading) {
      return true;
    }
    return false;
  }
}
