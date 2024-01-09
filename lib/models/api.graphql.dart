// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Users$Query$Users$Results extends JsonSerializable with EquatableMixin {
  Users$Query$Users$Results();

  factory Users$Query$Users$Results.fromJson(Map<String, dynamic> json) =>
      _$Users$Query$Users$ResultsFromJson(json);

  int? id;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;

  @JsonKey(name: 'is_staff')
  bool? isStaff;

  @JsonKey(name: 'is_superuser')
  bool? isSuperuser;

  String? roles;

  @override
  List<Object?> get props =>
      [id, firstName, lastName, isStaff, isSuperuser, roles];

  @override
  Map<String, dynamic> toJson() => _$Users$Query$Users$ResultsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Users$Query$Users extends JsonSerializable with EquatableMixin {
  Users$Query$Users();

  factory Users$Query$Users.fromJson(Map<String, dynamic> json) =>
      _$Users$Query$UsersFromJson(json);

  List<Users$Query$Users$Results?>? results;

  @override
  List<Object?> get props => [results];

  @override
  Map<String, dynamic> toJson() => _$Users$Query$UsersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Users$Query extends JsonSerializable with EquatableMixin {
  Users$Query();

  factory Users$Query.fromJson(Map<String, dynamic> json) =>
      _$Users$QueryFromJson(json);

  Users$Query$Users? users;

  @override
  List<Object?> get props => [users];

  @override
  Map<String, dynamic> toJson() => _$Users$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerifyAccount$Mutation$VerifyAccount$Profile extends JsonSerializable
    with EquatableMixin {
  VerifyAccount$Mutation$VerifyAccount$Profile();

  factory VerifyAccount$Mutation$VerifyAccount$Profile.fromJson(
          Map<String, dynamic> json) =>
      _$VerifyAccount$Mutation$VerifyAccount$ProfileFromJson(json);

  int? id;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;

  String? rol;

  String? gender;

  @override
  List<Object?> get props => [id, firstName, lastName, rol, gender];

  @override
  Map<String, dynamic> toJson() =>
      _$VerifyAccount$Mutation$VerifyAccount$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerifyAccount$Mutation$VerifyAccount extends JsonSerializable
    with EquatableMixin {
  VerifyAccount$Mutation$VerifyAccount();

  factory VerifyAccount$Mutation$VerifyAccount.fromJson(
          Map<String, dynamic> json) =>
      _$VerifyAccount$Mutation$VerifyAccountFromJson(json);

  VerifyAccount$Mutation$VerifyAccount$Profile? profile;

  String? token;

  @override
  List<Object?> get props => [profile, token];

  @override
  Map<String, dynamic> toJson() =>
      _$VerifyAccount$Mutation$VerifyAccountToJson(this);
}

@JsonSerializable(explicitToJson: true)
class VerifyAccount$Mutation extends JsonSerializable with EquatableMixin {
  VerifyAccount$Mutation();

  factory VerifyAccount$Mutation.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccount$MutationFromJson(json);

  @JsonKey(name: 'verify_account')
  VerifyAccount$Mutation$VerifyAccount? verifyAccount;

  @override
  List<Object?> get props => [verifyAccount];

  @override
  Map<String, dynamic> toJson() => _$VerifyAccount$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TokenAuthEmail$Mutation$TokenAuth$Profile extends JsonSerializable
    with EquatableMixin {
  TokenAuthEmail$Mutation$TokenAuth$Profile();

  factory TokenAuthEmail$Mutation$TokenAuth$Profile.fromJson(
          Map<String, dynamic> json) =>
      _$TokenAuthEmail$Mutation$TokenAuth$ProfileFromJson(json);

  int? id;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;

  String? rol;

  String? gender;

  @override
  List<Object?> get props => [id, firstName, lastName, rol, gender];

  @override
  Map<String, dynamic> toJson() =>
      _$TokenAuthEmail$Mutation$TokenAuth$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TokenAuthEmail$Mutation$TokenAuth extends JsonSerializable
    with EquatableMixin {
  TokenAuthEmail$Mutation$TokenAuth();

  factory TokenAuthEmail$Mutation$TokenAuth.fromJson(
          Map<String, dynamic> json) =>
      _$TokenAuthEmail$Mutation$TokenAuthFromJson(json);

  TokenAuthEmail$Mutation$TokenAuth$Profile? profile;

  String? token;

  String? message;

  @override
  List<Object?> get props => [profile, token, message];

  @override
  Map<String, dynamic> toJson() =>
      _$TokenAuthEmail$Mutation$TokenAuthToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TokenAuthEmail$Mutation extends JsonSerializable with EquatableMixin {
  TokenAuthEmail$Mutation();

  factory TokenAuthEmail$Mutation.fromJson(Map<String, dynamic> json) =>
      _$TokenAuthEmail$MutationFromJson(json);

  @JsonKey(name: 'token_auth')
  TokenAuthEmail$Mutation$TokenAuth? tokenAuth;

  @override
  List<Object?> get props => [tokenAuth];

  @override
  Map<String, dynamic> toJson() => _$TokenAuthEmail$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UsersArguments extends JsonSerializable with EquatableMixin {
  UsersArguments({
    required this.password,
    required this.email,
    this.limit,
    this.offset,
  });

  @override
  factory UsersArguments.fromJson(Map<String, dynamic> json) =>
      _$UsersArgumentsFromJson(json);

  late String password;

  late String email;

  final int? limit;

  final int? offset;

  @override
  List<Object?> get props => [password, email, limit, offset];

  @override
  Map<String, dynamic> toJson() => _$UsersArgumentsToJson(this);
}

final USERS_QUERY_DOCUMENT_OPERATION_NAME = 'Users';
final USERS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Users'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'email')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'users'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'email'),
            value: VariableNode(name: NameNode(value: 'email')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'results'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'limit'),
                value: VariableNode(name: NameNode(value: 'limit')),
              ),
              ArgumentNode(
                name: NameNode(value: 'offset'),
                value: VariableNode(name: NameNode(value: 'offset')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'first_name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'last_name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'is_staff'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'is_superuser'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'roles'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          )
        ]),
      )
    ]),
  )
]);

class UsersQuery extends GraphQLQuery<Users$Query, UsersArguments> {
  UsersQuery({required this.variables});

  @override
  final DocumentNode document = USERS_QUERY_DOCUMENT;

  @override
  final String operationName = USERS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final UsersArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Users$Query parse(Map<String, dynamic> json) => Users$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class VerifyAccountArguments extends JsonSerializable with EquatableMixin {
  VerifyAccountArguments({
    required this.token,
    required this.platform,
  });

  @override
  factory VerifyAccountArguments.fromJson(Map<String, dynamic> json) =>
      _$VerifyAccountArgumentsFromJson(json);

  late String token;

  late String platform;

  @override
  List<Object?> get props => [token, platform];

  @override
  Map<String, dynamic> toJson() => _$VerifyAccountArgumentsToJson(this);
}

final VERIFY_ACCOUNT_MUTATION_DOCUMENT_OPERATION_NAME = 'verifyAccount';
final VERIFY_ACCOUNT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'verifyAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'platform')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'verify_account'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'token'),
            value: VariableNode(name: NameNode(value: 'token')),
          ),
          ArgumentNode(
            name: NameNode(value: 'platform'),
            value: VariableNode(name: NameNode(value: 'platform')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'profile'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'first_name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'last_name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'rol'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class VerifyAccountMutation
    extends GraphQLQuery<VerifyAccount$Mutation, VerifyAccountArguments> {
  VerifyAccountMutation({required this.variables});

  @override
  final DocumentNode document = VERIFY_ACCOUNT_MUTATION_DOCUMENT;

  @override
  final String operationName = VERIFY_ACCOUNT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final VerifyAccountArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  VerifyAccount$Mutation parse(Map<String, dynamic> json) =>
      VerifyAccount$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class TokenAuthEmailArguments extends JsonSerializable with EquatableMixin {
  TokenAuthEmailArguments({
    required this.username,
    required this.password,
  });

  @override
  factory TokenAuthEmailArguments.fromJson(Map<String, dynamic> json) =>
      _$TokenAuthEmailArgumentsFromJson(json);

  late String username;

  late String password;

  @override
  List<Object?> get props => [username, password];

  @override
  Map<String, dynamic> toJson() => _$TokenAuthEmailArgumentsToJson(this);
}

final TOKEN_AUTH_EMAIL_MUTATION_DOCUMENT_OPERATION_NAME = 'tokenAuthEmail';
final TOKEN_AUTH_EMAIL_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'tokenAuthEmail'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'username')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'password')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'token_auth'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'profile'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'first_name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'last_name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'rol'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'gender'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'token'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'message'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      )
    ]),
  )
]);

class TokenAuthEmailMutation
    extends GraphQLQuery<TokenAuthEmail$Mutation, TokenAuthEmailArguments> {
  TokenAuthEmailMutation({required this.variables});

  @override
  final DocumentNode document = TOKEN_AUTH_EMAIL_MUTATION_DOCUMENT;

  @override
  final String operationName =
      TOKEN_AUTH_EMAIL_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final TokenAuthEmailArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  TokenAuthEmail$Mutation parse(Map<String, dynamic> json) =>
      TokenAuthEmail$Mutation.fromJson(json);
}
