import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:untitled/core/utils/extensions/file_extensions.dart';
import 'package:untitled/data/models/img_crop.dart';

import '../../core/config/graphql_provider.dart';
import '../../models/api.graphql.dart';

class ResourceService {
  Future<List<Resources$Query$Resources$Results?>?> getResources({
    required int limit,
    required int offset,
    String? search,
  }) async {
    final GraphQLClient client = getGraphQLClient(service: 'get_resources');
    final QueryOptions options = QueryOptions(
      document: RESOURCES_QUERY_DOCUMENT,
      variables: ResourcesArguments(
        limit: limit,
        offset: offset,
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
      return Resources$Query.fromJson(result.data!).resources!.results!;
    }
    return null;
  }

  Future<Resource$Query$Resource?> getResource({
    required int resourceID,
  }) async {
    final GraphQLClient client = getGraphQLClient(service: 'get_resource');
    final QueryOptions options = QueryOptions(
      document: RESOURCE_QUERY_DOCUMENT,
      variables: ResourcesArguments().toJson(),
    );

    final QueryResult result = await client.query(options);

    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception.toString());
      }
    }
    if (!result.hasException && result.isNotLoading) {
      return Resource$Query.fromJson(result.data!).resource!;
    }
    return null;
  }
  Future<bool> createResources({
    required int resourceId, //product_id
    required List<ImgCrop> files,
  }) async {

    List<MultipartFile> filesUp = [];
    print("LLEGO 1");

    for (var file in files.indexed) {

      Uint8List byteDataImage = file.$2.uint8list;
      MultipartFile multipartFileImage = MultipartFile.fromBytes(
        'image${file.$1}',
        byteDataImage,
        filename: file.$2.file.name,
        contentType: MediaType("image", file.$2.file.ext),
      );
      filesUp.add(multipartFileImage);

    }
    print("LLEGO 2 ");

    final GraphQLClient client = getGraphQLClient(service: 'create_resources');
    final MutationOptions options = MutationOptions(
      document: CREATE_RESOURCES_MUTATION_DOCUMENT,
      variables: CreateResourcesArguments(
        file: filesUp,
        resource_ext: files.first.file.ext,
        resource_id: resourceId,
        resource_name:  'Product',
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
  Future<bool> createResource({
    required String coordinates,
    required int resourceId, //product_id
   // required String resourceName, // 'Product'
    required File file,
  }) async {

    Uint8List byteDataImage = file.readAsBytesSync();
    MultipartFile multipartFileImage = MultipartFile.fromBytes(
      'image1',
      byteDataImage,
      filename: file.name,
      contentType: MediaType("image", file.ext),
    );

    final GraphQLClient client = getGraphQLClient(service: 'create_resource');
    final MutationOptions options = MutationOptions(
      document: CREATE_RESOURCE_MUTATION_DOCUMENT,
      variables: CreateResourceArguments(
        coordinates: ["coordinates"],
        file: multipartFileImage,
        resource_ext: file.ext,
        resource_id: resourceId,
        resource_name:  'Product',
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
