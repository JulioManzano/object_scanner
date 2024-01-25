import 'package:flutter/foundation.dart';
import 'package:graphql/client.dart';

import '../../core/config/graphql_provider.dart';
import '../../domain/models/user.dart';
import '../../models/api.graphql.dart';

class AuthService {
  Future<TokenAuth$Mutation$TokenAuth?> signInUsernameAndPassword(
      String username, String password) async {
    final GraphQLClient client = getGraphQLClient(service: 'token_auth_email');
    final MutationOptions options = MutationOptions(
      document: TOKEN_AUTH_MUTATION_DOCUMENT,
      variables: TokenAuthArguments(username: username, password: password)
          .toJson(),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      if (kDebugMode) {
        print("EXCEPTION");
        print(result.exception);
      }
    }

    if (!result.hasException && result.isNotLoading) {
      print("LOGIN: ${result.data!}");
      TokenAuth$Mutation$TokenAuth getAccount =
          TokenAuth$Mutation.fromJson(result.data!).tokenAuth!;
      return getAccount;
    }
    return null;
  }

  Future<VerifyAccount$Mutation$VerifyAccount?> verifyAccount(
      {required String token, required String platform}) async {
    final GraphQLClient client = getGraphQLClient(service: 'verify_account');
    final MutationOptions options = MutationOptions(
      document: VERIFY_ACCOUNT_MUTATION_DOCUMENT,
      variables:
          VerifyAccountArguments(token: token, platform: platform).toJson(),
    );

    final QueryResult result = await client.mutate(options);

    if (result.hasException) {
      if (kDebugMode) {
        print(result.exception);
      }
    }

    if (!result.hasException && result.isNotLoading) {
      VerifyAccount$Mutation$VerifyAccount getAccount =
          VerifyAccount$Mutation.fromJson(result.data!).verifyAccount!;
      return getAccount;
    }
    return null;
  }
}
