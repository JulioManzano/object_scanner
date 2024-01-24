// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

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

  String? role;

  String? gender;

  @override
  List<Object?> get props => [id, firstName, lastName, role, gender];

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
class TokenAuth$Mutation$TokenAuth$Profile extends JsonSerializable
    with EquatableMixin {
  TokenAuth$Mutation$TokenAuth$Profile();

  factory TokenAuth$Mutation$TokenAuth$Profile.fromJson(
          Map<String, dynamic> json) =>
      _$TokenAuth$Mutation$TokenAuth$ProfileFromJson(json);

  int? id;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;

  String? role;

  String? gender;

  @override
  List<Object?> get props => [id, firstName, lastName, role, gender];

  @override
  Map<String, dynamic> toJson() =>
      _$TokenAuth$Mutation$TokenAuth$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TokenAuth$Mutation$TokenAuth extends JsonSerializable
    with EquatableMixin {
  TokenAuth$Mutation$TokenAuth();

  factory TokenAuth$Mutation$TokenAuth.fromJson(Map<String, dynamic> json) =>
      _$TokenAuth$Mutation$TokenAuthFromJson(json);

  TokenAuth$Mutation$TokenAuth$Profile? profile;

  String? token;

  String? message;

  @override
  List<Object?> get props => [profile, token, message];

  @override
  Map<String, dynamic> toJson() => _$TokenAuth$Mutation$TokenAuthToJson(this);
}

@JsonSerializable(explicitToJson: true)
class TokenAuth$Mutation extends JsonSerializable with EquatableMixin {
  TokenAuth$Mutation();

  factory TokenAuth$Mutation.fromJson(Map<String, dynamic> json) =>
      _$TokenAuth$MutationFromJson(json);

  @JsonKey(name: 'token_auth')
  TokenAuth$Mutation$TokenAuth? tokenAuth;

  @override
  List<Object?> get props => [tokenAuth];

  @override
  Map<String, dynamic> toJson() => _$TokenAuth$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Products$Query$Products$Results extends JsonSerializable
    with EquatableMixin {
  Products$Query$Products$Results();

  factory Products$Query$Products$Results.fromJson(Map<String, dynamic> json) =>
      _$Products$Query$Products$ResultsFromJson(json);

  int? id;

  String? code;

  String? description;

  String? image;

  @JsonKey(name: 'image_thumb')
  String? imageThumb;

  @JsonKey(name: 'is_active')
  bool? isActive;

  List<String?>? images;

  @JsonKey(name: 'is_sold_out')
  bool? isSoldOut;

  String? name;

  @JsonKey(name: 'quantity_available')
  int? quantityAvailable;

  @JsonKey(name: 'price_unit')
  double? priceUnit;

  @JsonKey(name: 'register_at')
  DateTime? registerAt;

  @override
  List<Object?> get props => [
        id,
        code,
        description,
        image,
        imageThumb,
        isActive,
        images,
        isSoldOut,
        name,
        quantityAvailable,
        priceUnit,
        registerAt
      ];

  @override
  Map<String, dynamic> toJson() =>
      _$Products$Query$Products$ResultsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Products$Query$Products extends JsonSerializable with EquatableMixin {
  Products$Query$Products();

  factory Products$Query$Products.fromJson(Map<String, dynamic> json) =>
      _$Products$Query$ProductsFromJson(json);

  int? totalCount;

  List<Products$Query$Products$Results?>? results;

  @override
  List<Object?> get props => [totalCount, results];

  @override
  Map<String, dynamic> toJson() => _$Products$Query$ProductsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Products$Query extends JsonSerializable with EquatableMixin {
  Products$Query();

  factory Products$Query.fromJson(Map<String, dynamic> json) =>
      _$Products$QueryFromJson(json);

  Products$Query$Products? products;

  @override
  List<Object?> get props => [products];

  @override
  Map<String, dynamic> toJson() => _$Products$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Product$Query$Product extends JsonSerializable with EquatableMixin {
  Product$Query$Product();

  factory Product$Query$Product.fromJson(Map<String, dynamic> json) =>
      _$Product$Query$ProductFromJson(json);

  int? id;

  String? code;

  String? description;

  String? image;

  @JsonKey(name: 'image_thumb')
  String? imageThumb;

  @JsonKey(name: 'is_active')
  bool? isActive;

  List<String?>? images;

  @JsonKey(name: 'is_sold_out')
  bool? isSoldOut;

  String? name;

  @JsonKey(name: 'quantity_available')
  int? quantityAvailable;

  @JsonKey(name: 'price_unit')
  double? priceUnit;

  @JsonKey(name: 'register_at')
  DateTime? registerAt;

  @override
  List<Object?> get props => [
        id,
        code,
        description,
        image,
        imageThumb,
        isActive,
        images,
        isSoldOut,
        name,
        quantityAvailable,
        priceUnit,
        registerAt
      ];

  @override
  Map<String, dynamic> toJson() => _$Product$Query$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Product$Query extends JsonSerializable with EquatableMixin {
  Product$Query();

  factory Product$Query.fromJson(Map<String, dynamic> json) =>
      _$Product$QueryFromJson(json);

  Product$Query$Product? product;

  @override
  List<Object?> get props => [product];

  @override
  Map<String, dynamic> toJson() => _$Product$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateProduct$Mutation$CreateProduct$Product extends JsonSerializable
    with EquatableMixin {
  CreateProduct$Mutation$CreateProduct$Product();

  factory CreateProduct$Mutation$CreateProduct$Product.fromJson(
          Map<String, dynamic> json) =>
      _$CreateProduct$Mutation$CreateProduct$ProductFromJson(json);

  int? id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateProduct$Mutation$CreateProduct$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateProduct$Mutation$CreateProduct extends JsonSerializable
    with EquatableMixin {
  CreateProduct$Mutation$CreateProduct();

  factory CreateProduct$Mutation$CreateProduct.fromJson(
          Map<String, dynamic> json) =>
      _$CreateProduct$Mutation$CreateProductFromJson(json);

  CreateProduct$Mutation$CreateProduct$Product? product;

  @override
  List<Object?> get props => [product];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateProduct$Mutation$CreateProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateProduct$Mutation extends JsonSerializable with EquatableMixin {
  CreateProduct$Mutation();

  factory CreateProduct$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateProduct$MutationFromJson(json);

  @JsonKey(name: 'create_product')
  CreateProduct$Mutation$CreateProduct? createProduct;

  @override
  List<Object?> get props => [createProduct];

  @override
  Map<String, dynamic> toJson() => _$CreateProduct$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProduct$Mutation$UpdateProduct$Product extends JsonSerializable
    with EquatableMixin {
  UpdateProduct$Mutation$UpdateProduct$Product();

  factory UpdateProduct$Mutation$UpdateProduct$Product.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateProduct$Mutation$UpdateProduct$ProductFromJson(json);

  int? id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateProduct$Mutation$UpdateProduct$ProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProduct$Mutation$UpdateProduct extends JsonSerializable
    with EquatableMixin {
  UpdateProduct$Mutation$UpdateProduct();

  factory UpdateProduct$Mutation$UpdateProduct.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateProduct$Mutation$UpdateProductFromJson(json);

  UpdateProduct$Mutation$UpdateProduct$Product? product;

  @override
  List<Object?> get props => [product];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateProduct$Mutation$UpdateProductToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProduct$Mutation extends JsonSerializable with EquatableMixin {
  UpdateProduct$Mutation();

  factory UpdateProduct$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateProduct$MutationFromJson(json);

  @JsonKey(name: 'update_product')
  UpdateProduct$Mutation$UpdateProduct? updateProduct;

  @override
  List<Object?> get props => [updateProduct];

  @override
  Map<String, dynamic> toJson() => _$UpdateProduct$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Profiles$Query$Profiles$Results extends JsonSerializable
    with EquatableMixin {
  Profiles$Query$Profiles$Results();

  factory Profiles$Query$Profiles$Results.fromJson(Map<String, dynamic> json) =>
      _$Profiles$Query$Profiles$ResultsFromJson(json);

  int? id;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'middle_name')
  String? middleName;

  @JsonKey(name: 'last_name')
  String? lastName;

  String? role;

  @override
  List<Object?> get props => [id, firstName, middleName, lastName, role];

  @override
  Map<String, dynamic> toJson() =>
      _$Profiles$Query$Profiles$ResultsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Profiles$Query$Profiles extends JsonSerializable with EquatableMixin {
  Profiles$Query$Profiles();

  factory Profiles$Query$Profiles.fromJson(Map<String, dynamic> json) =>
      _$Profiles$Query$ProfilesFromJson(json);

  List<Profiles$Query$Profiles$Results?>? results;

  @override
  List<Object?> get props => [results];

  @override
  Map<String, dynamic> toJson() => _$Profiles$Query$ProfilesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Profiles$Query extends JsonSerializable with EquatableMixin {
  Profiles$Query();

  factory Profiles$Query.fromJson(Map<String, dynamic> json) =>
      _$Profiles$QueryFromJson(json);

  Profiles$Query$Profiles? profiles;

  @override
  List<Object?> get props => [profiles];

  @override
  Map<String, dynamic> toJson() => _$Profiles$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Profile$Query$Profile extends JsonSerializable with EquatableMixin {
  Profile$Query$Profile();

  factory Profile$Query$Profile.fromJson(Map<String, dynamic> json) =>
      _$Profile$Query$ProfileFromJson(json);

  int? id;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;

  @JsonKey(name: 'middle_name')
  String? middleName;

  String? role;

  @override
  List<Object?> get props => [id, firstName, lastName, middleName, role];

  @override
  Map<String, dynamic> toJson() => _$Profile$Query$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Profile$Query extends JsonSerializable with EquatableMixin {
  Profile$Query();

  factory Profile$Query.fromJson(Map<String, dynamic> json) =>
      _$Profile$QueryFromJson(json);

  Profile$Query$Profile? profile;

  @override
  List<Object?> get props => [profile];

  @override
  Map<String, dynamic> toJson() => _$Profile$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUserWithProfile$Mutation$CreateUserWithProfile$User
    extends JsonSerializable with EquatableMixin {
  CreateUserWithProfile$Mutation$CreateUserWithProfile$User();

  factory CreateUserWithProfile$Mutation$CreateUserWithProfile$User.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUserWithProfile$Mutation$CreateUserWithProfile$UserFromJson(json);

  int? id;

  String? username;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;

  @override
  List<Object?> get props => [id, username, firstName, lastName];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateUserWithProfile$Mutation$CreateUserWithProfile$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUserWithProfile$Mutation$CreateUserWithProfile
    extends JsonSerializable with EquatableMixin {
  CreateUserWithProfile$Mutation$CreateUserWithProfile();

  factory CreateUserWithProfile$Mutation$CreateUserWithProfile.fromJson(
          Map<String, dynamic> json) =>
      _$CreateUserWithProfile$Mutation$CreateUserWithProfileFromJson(json);

  CreateUserWithProfile$Mutation$CreateUserWithProfile$User? user;

  @override
  List<Object?> get props => [user];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateUserWithProfile$Mutation$CreateUserWithProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateUserWithProfile$Mutation extends JsonSerializable
    with EquatableMixin {
  CreateUserWithProfile$Mutation();

  factory CreateUserWithProfile$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateUserWithProfile$MutationFromJson(json);

  @JsonKey(name: 'create_user_with_profile')
  CreateUserWithProfile$Mutation$CreateUserWithProfile? createUserWithProfile;

  @override
  List<Object?> get props => [createUserWithProfile];

  @override
  Map<String, dynamic> toJson() => _$CreateUserWithProfile$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfile$Mutation$UpdateProfile$Profile extends JsonSerializable
    with EquatableMixin {
  UpdateProfile$Mutation$UpdateProfile$Profile();

  factory UpdateProfile$Mutation$UpdateProfile$Profile.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateProfile$Mutation$UpdateProfile$ProfileFromJson(json);

  int? id;

  int? ci;

  @JsonKey(name: 'first_name')
  String? firstName;

  @JsonKey(name: 'last_name')
  String? lastName;

  @JsonKey(name: 'middle_name')
  String? middleName;

  @JsonKey(name: 'home_address')
  String? homeAddress;

  @JsonKey(name: 'mobile_phone')
  int? mobilePhone;

  @override
  List<Object?> get props =>
      [id, ci, firstName, lastName, middleName, homeAddress, mobilePhone];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateProfile$Mutation$UpdateProfile$ProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfile$Mutation$UpdateProfile extends JsonSerializable
    with EquatableMixin {
  UpdateProfile$Mutation$UpdateProfile();

  factory UpdateProfile$Mutation$UpdateProfile.fromJson(
          Map<String, dynamic> json) =>
      _$UpdateProfile$Mutation$UpdateProfileFromJson(json);

  UpdateProfile$Mutation$UpdateProfile$Profile? profile;

  @override
  List<Object?> get props => [profile];

  @override
  Map<String, dynamic> toJson() =>
      _$UpdateProfile$Mutation$UpdateProfileToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfile$Mutation extends JsonSerializable with EquatableMixin {
  UpdateProfile$Mutation();

  factory UpdateProfile$Mutation.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfile$MutationFromJson(json);

  @JsonKey(name: 'update_profile')
  UpdateProfile$Mutation$UpdateProfile? updateProfile;

  @override
  List<Object?> get props => [updateProfile];

  @override
  Map<String, dynamic> toJson() => _$UpdateProfile$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateResource$Mutation$CreateResource$Resource extends JsonSerializable
    with EquatableMixin {
  CreateResource$Mutation$CreateResource$Resource();

  factory CreateResource$Mutation$CreateResource$Resource.fromJson(
          Map<String, dynamic> json) =>
      _$CreateResource$Mutation$CreateResource$ResourceFromJson(json);

  int? id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateResource$Mutation$CreateResource$ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateResource$Mutation$CreateResource extends JsonSerializable
    with EquatableMixin {
  CreateResource$Mutation$CreateResource();

  factory CreateResource$Mutation$CreateResource.fromJson(
          Map<String, dynamic> json) =>
      _$CreateResource$Mutation$CreateResourceFromJson(json);

  CreateResource$Mutation$CreateResource$Resource? resource;

  @override
  List<Object?> get props => [resource];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateResource$Mutation$CreateResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateResource$Mutation extends JsonSerializable with EquatableMixin {
  CreateResource$Mutation();

  factory CreateResource$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateResource$MutationFromJson(json);

  @JsonKey(name: 'create_resource')
  CreateResource$Mutation$CreateResource? createResource;

  @override
  List<Object?> get props => [createResource];

  @override
  Map<String, dynamic> toJson() => _$CreateResource$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateResources$Mutation$CreateResources$Resource extends JsonSerializable
    with EquatableMixin {
  CreateResources$Mutation$CreateResources$Resource();

  factory CreateResources$Mutation$CreateResources$Resource.fromJson(
          Map<String, dynamic> json) =>
      _$CreateResources$Mutation$CreateResources$ResourceFromJson(json);

  int? id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateResources$Mutation$CreateResources$ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateResources$Mutation$CreateResources extends JsonSerializable
    with EquatableMixin {
  CreateResources$Mutation$CreateResources();

  factory CreateResources$Mutation$CreateResources.fromJson(
          Map<String, dynamic> json) =>
      _$CreateResources$Mutation$CreateResourcesFromJson(json);

  CreateResources$Mutation$CreateResources$Resource? resource;

  @override
  List<Object?> get props => [resource];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateResources$Mutation$CreateResourcesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateResources$Mutation extends JsonSerializable with EquatableMixin {
  CreateResources$Mutation();

  factory CreateResources$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateResources$MutationFromJson(json);

  @JsonKey(name: 'create_resources')
  CreateResources$Mutation$CreateResources? createResources;

  @override
  List<Object?> get props => [createResources];

  @override
  Map<String, dynamic> toJson() => _$CreateResources$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Resources$Query$Resources$Results extends JsonSerializable
    with EquatableMixin {
  Resources$Query$Resources$Results();

  factory Resources$Query$Resources$Results.fromJson(
          Map<String, dynamic> json) =>
      _$Resources$Query$Resources$ResultsFromJson(json);

  int? id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() =>
      _$Resources$Query$Resources$ResultsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Resources$Query$Resources extends JsonSerializable with EquatableMixin {
  Resources$Query$Resources();

  factory Resources$Query$Resources.fromJson(Map<String, dynamic> json) =>
      _$Resources$Query$ResourcesFromJson(json);

  int? totalCount;

  List<Resources$Query$Resources$Results?>? results;

  @override
  List<Object?> get props => [totalCount, results];

  @override
  Map<String, dynamic> toJson() => _$Resources$Query$ResourcesToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Resources$Query extends JsonSerializable with EquatableMixin {
  Resources$Query();

  factory Resources$Query.fromJson(Map<String, dynamic> json) =>
      _$Resources$QueryFromJson(json);

  Resources$Query$Resources? resources;

  @override
  List<Object?> get props => [resources];

  @override
  Map<String, dynamic> toJson() => _$Resources$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Resource$Query$Resource extends JsonSerializable with EquatableMixin {
  Resource$Query$Resource();

  factory Resource$Query$Resource.fromJson(Map<String, dynamic> json) =>
      _$Resource$Query$ResourceFromJson(json);

  int? id;

  @JsonKey(name: 'resource_id')
  int? resourceId;

  @JsonKey(name: 'resource_name')
  String? resourceName;

  String? type;

  String? image;

  @JsonKey(name: 'image_thumb')
  String? imageThumb;

  @override
  List<Object?> get props =>
      [id, resourceId, resourceName, type, image, imageThumb];

  @override
  Map<String, dynamic> toJson() => _$Resource$Query$ResourceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Resource$Query extends JsonSerializable with EquatableMixin {
  Resource$Query();

  factory Resource$Query.fromJson(Map<String, dynamic> json) =>
      _$Resource$QueryFromJson(json);

  Resource$Query$Resource? resource;

  @override
  List<Object?> get props => [resource];

  @override
  Map<String, dynamic> toJson() => _$Resource$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateModel$Mutation$CreateObjectModel$Objectmodel
    extends JsonSerializable with EquatableMixin {
  CreateModel$Mutation$CreateObjectModel$Objectmodel();

  factory CreateModel$Mutation$CreateObjectModel$Objectmodel.fromJson(
          Map<String, dynamic> json) =>
      _$CreateModel$Mutation$CreateObjectModel$ObjectmodelFromJson(json);

  int? id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateModel$Mutation$CreateObjectModel$ObjectmodelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateModel$Mutation$CreateObjectModel extends JsonSerializable
    with EquatableMixin {
  CreateModel$Mutation$CreateObjectModel();

  factory CreateModel$Mutation$CreateObjectModel.fromJson(
          Map<String, dynamic> json) =>
      _$CreateModel$Mutation$CreateObjectModelFromJson(json);

  CreateModel$Mutation$CreateObjectModel$Objectmodel? objectmodel;

  @override
  List<Object?> get props => [objectmodel];

  @override
  Map<String, dynamic> toJson() =>
      _$CreateModel$Mutation$CreateObjectModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateModel$Mutation extends JsonSerializable with EquatableMixin {
  CreateModel$Mutation();

  factory CreateModel$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateModel$MutationFromJson(json);

  @JsonKey(name: 'create_object_model')
  CreateModel$Mutation$CreateObjectModel? createObjectModel;

  @override
  List<Object?> get props => [createObjectModel];

  @override
  Map<String, dynamic> toJson() => _$CreateModel$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Model$Query$Objectmodel$Venue extends JsonSerializable
    with EquatableMixin {
  Model$Query$Objectmodel$Venue();

  factory Model$Query$Objectmodel$Venue.fromJson(Map<String, dynamic> json) =>
      _$Model$Query$Objectmodel$VenueFromJson(json);

  int? id;

  String? name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() => _$Model$Query$Objectmodel$VenueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Model$Query$Objectmodel extends JsonSerializable with EquatableMixin {
  Model$Query$Objectmodel();

  factory Model$Query$Objectmodel.fromJson(Map<String, dynamic> json) =>
      _$Model$Query$ObjectmodelFromJson(json);

  int? id;

  String? name;

  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  Model$Query$Objectmodel$Venue? venue;

  String? file;

  @override
  List<Object?> get props => [id, name, createdAt, venue, file];

  @override
  Map<String, dynamic> toJson() => _$Model$Query$ObjectmodelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Model$Query extends JsonSerializable with EquatableMixin {
  Model$Query();

  factory Model$Query.fromJson(Map<String, dynamic> json) =>
      _$Model$QueryFromJson(json);

  Model$Query$Objectmodel? objectmodel;

  @override
  List<Object?> get props => [objectmodel];

  @override
  Map<String, dynamic> toJson() => _$Model$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Models$Query$Objectmodels$Results$Venue extends JsonSerializable
    with EquatableMixin {
  Models$Query$Objectmodels$Results$Venue();

  factory Models$Query$Objectmodels$Results$Venue.fromJson(
          Map<String, dynamic> json) =>
      _$Models$Query$Objectmodels$Results$VenueFromJson(json);

  int? id;

  String? name;

  @override
  List<Object?> get props => [id, name];

  @override
  Map<String, dynamic> toJson() =>
      _$Models$Query$Objectmodels$Results$VenueToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Models$Query$Objectmodels$Results extends JsonSerializable
    with EquatableMixin {
  Models$Query$Objectmodels$Results();

  factory Models$Query$Objectmodels$Results.fromJson(
          Map<String, dynamic> json) =>
      _$Models$Query$Objectmodels$ResultsFromJson(json);

  int? id;

  String? name;

  @JsonKey(name: 'created_at')
  DateTime? createdAt;

  Models$Query$Objectmodels$Results$Venue? venue;

  String? file;

  @override
  List<Object?> get props => [id, name, createdAt, venue, file];

  @override
  Map<String, dynamic> toJson() =>
      _$Models$Query$Objectmodels$ResultsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Models$Query$Objectmodels extends JsonSerializable with EquatableMixin {
  Models$Query$Objectmodels();

  factory Models$Query$Objectmodels.fromJson(Map<String, dynamic> json) =>
      _$Models$Query$ObjectmodelsFromJson(json);

  List<Models$Query$Objectmodels$Results?>? results;

  @override
  List<Object?> get props => [results];

  @override
  Map<String, dynamic> toJson() => _$Models$Query$ObjectmodelsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Models$Query extends JsonSerializable with EquatableMixin {
  Models$Query();

  factory Models$Query.fromJson(Map<String, dynamic> json) =>
      _$Models$QueryFromJson(json);

  Models$Query$Objectmodels? objectmodels;

  @override
  List<Object?> get props => [objectmodels];

  @override
  Map<String, dynamic> toJson() => _$Models$QueryToJson(this);
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

final VERIFY_ACCOUNT_MUTATION_DOCUMENT_OPERATION_NAME = 'VerifyAccount';
final VERIFY_ACCOUNT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'VerifyAccount'),
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
                name: NameNode(value: 'role'),
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
class TokenAuthArguments extends JsonSerializable with EquatableMixin {
  TokenAuthArguments({
    required this.username,
    required this.password,
  });

  @override
  factory TokenAuthArguments.fromJson(Map<String, dynamic> json) =>
      _$TokenAuthArgumentsFromJson(json);

  late String username;

  late String password;

  @override
  List<Object?> get props => [username, password];

  @override
  Map<String, dynamic> toJson() => _$TokenAuthArgumentsToJson(this);
}

final TOKEN_AUTH_MUTATION_DOCUMENT_OPERATION_NAME = 'TokenAuth';
final TOKEN_AUTH_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TokenAuth'),
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
                name: NameNode(value: 'role'),
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

class TokenAuthMutation
    extends GraphQLQuery<TokenAuth$Mutation, TokenAuthArguments> {
  TokenAuthMutation({required this.variables});

  @override
  final DocumentNode document = TOKEN_AUTH_MUTATION_DOCUMENT;

  @override
  final String operationName = TOKEN_AUTH_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final TokenAuthArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  TokenAuth$Mutation parse(Map<String, dynamic> json) =>
      TokenAuth$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ProductsArguments extends JsonSerializable with EquatableMixin {
  ProductsArguments({
    this.limit,
    this.offset,
    this.search,
    this.is_active,
  });

  @override
  factory ProductsArguments.fromJson(Map<String, dynamic> json) =>
      _$ProductsArgumentsFromJson(json);

  final int? limit;

  final int? offset;

  final String? search;

  final bool? is_active;

  @override
  List<Object?> get props => [limit, offset, search, is_active];

  @override
  Map<String, dynamic> toJson() => _$ProductsArgumentsToJson(this);
}

final PRODUCTS_QUERY_DOCUMENT_OPERATION_NAME = 'Products';
final PRODUCTS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Products'),
    variableDefinitions: [
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'is_active')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'products'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'ordering'),
            value: StringValueNode(
              value: 'name',
              isBlock: false,
            ),
          ),
          ArgumentNode(
            name: NameNode(value: 'is_active'),
            value: VariableNode(name: NameNode(value: 'is_active')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
                name: NameNode(value: 'code'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'description'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'image_thumb'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'is_active'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'images'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'is_sold_out'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'quantity_available'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'price_unit'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'register_at'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class ProductsQuery extends GraphQLQuery<Products$Query, ProductsArguments> {
  ProductsQuery({required this.variables});

  @override
  final DocumentNode document = PRODUCTS_QUERY_DOCUMENT;

  @override
  final String operationName = PRODUCTS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ProductsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Products$Query parse(Map<String, dynamic> json) =>
      Products$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ProductArguments extends JsonSerializable with EquatableMixin {
  ProductArguments({required this.id});

  @override
  factory ProductArguments.fromJson(Map<String, dynamic> json) =>
      _$ProductArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$ProductArgumentsToJson(this);
}

final PRODUCT_QUERY_DOCUMENT_OPERATION_NAME = 'Product';
final PRODUCT_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Product'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'product'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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
            name: NameNode(value: 'code'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'description'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image_thumb'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'is_active'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'images'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'is_sold_out'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'quantity_available'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'price_unit'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'register_at'),
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

class ProductQuery extends GraphQLQuery<Product$Query, ProductArguments> {
  ProductQuery({required this.variables});

  @override
  final DocumentNode document = PRODUCT_QUERY_DOCUMENT;

  @override
  final String operationName = PRODUCT_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ProductArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Product$Query parse(Map<String, dynamic> json) =>
      Product$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateProductArguments extends JsonSerializable with EquatableMixin {
  CreateProductArguments({
    required this.description,
    required this.name,
    required this.price_unit,
    this.code,
    required this.venue_id,
  });

  @override
  factory CreateProductArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateProductArgumentsFromJson(json);

  late String description;

  late String name;

  late double price_unit;

  final String? code;

  late int venue_id;

  @override
  List<Object?> get props => [description, name, price_unit, code, venue_id];

  @override
  Map<String, dynamic> toJson() => _$CreateProductArgumentsToJson(this);
}

final CREATE_PRODUCT_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateProduct';
final CREATE_PRODUCT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price_unit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'venue_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'create_product'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'price_unit'),
            value: VariableNode(name: NameNode(value: 'price_unit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
          ),
          ArgumentNode(
            name: NameNode(value: 'description'),
            value: VariableNode(name: NameNode(value: 'description')),
          ),
          ArgumentNode(
            name: NameNode(value: 'venue_id'),
            value: VariableNode(name: NameNode(value: 'venue_id')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product'),
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
              )
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateProductMutation
    extends GraphQLQuery<CreateProduct$Mutation, CreateProductArguments> {
  CreateProductMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_PRODUCT_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_PRODUCT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateProductArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreateProduct$Mutation parse(Map<String, dynamic> json) =>
      CreateProduct$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateProductArguments extends JsonSerializable with EquatableMixin {
  UpdateProductArguments({
    this.description,
    this.is_active,
    this.name,
    required this.id,
    this.price_unit,
  });

  @override
  factory UpdateProductArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductArgumentsFromJson(json);

  final String? description;

  final bool? is_active;

  final String? name;

  late int id;

  final double? price_unit;

  @override
  List<Object?> get props => [description, is_active, name, id, price_unit];

  @override
  Map<String, dynamic> toJson() => _$UpdateProductArgumentsToJson(this);
}

final UPDATE_PRODUCT_MUTATION_DOCUMENT_OPERATION_NAME = 'UpdateProduct';
final UPDATE_PRODUCT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProduct'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'description')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'is_active')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'price_unit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_product'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'description'),
            value: VariableNode(name: NameNode(value: 'description')),
          ),
          ArgumentNode(
            name: NameNode(value: 'is_active'),
            value: VariableNode(name: NameNode(value: 'is_active')),
          ),
          ArgumentNode(
            name: NameNode(value: 'price_unit'),
            value: VariableNode(name: NameNode(value: 'price_unit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'name'),
            value: VariableNode(name: NameNode(value: 'name')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'product'),
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
              )
            ]),
          )
        ]),
      )
    ]),
  )
]);

class UpdateProductMutation
    extends GraphQLQuery<UpdateProduct$Mutation, UpdateProductArguments> {
  UpdateProductMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_PRODUCT_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_PRODUCT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateProductArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  UpdateProduct$Mutation parse(Map<String, dynamic> json) =>
      UpdateProduct$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ProfilesArguments extends JsonSerializable with EquatableMixin {
  ProfilesArguments({
    required this.ordering,
    required this.search,
    this.limit,
    this.offset,
  });

  @override
  factory ProfilesArguments.fromJson(Map<String, dynamic> json) =>
      _$ProfilesArgumentsFromJson(json);

  late String ordering;

  late String search;

  final int? limit;

  final int? offset;

  @override
  List<Object?> get props => [ordering, search, limit, offset];

  @override
  Map<String, dynamic> toJson() => _$ProfilesArgumentsToJson(this);
}

final PROFILES_QUERY_DOCUMENT_OPERATION_NAME = 'Profiles';
final PROFILES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Profiles'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ordering')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
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
        name: NameNode(value: 'profiles'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'ordering'),
            value: VariableNode(name: NameNode(value: 'ordering')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
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
                name: NameNode(value: 'middle_name'),
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
                name: NameNode(value: 'role'),
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

class ProfilesQuery extends GraphQLQuery<Profiles$Query, ProfilesArguments> {
  ProfilesQuery({required this.variables});

  @override
  final DocumentNode document = PROFILES_QUERY_DOCUMENT;

  @override
  final String operationName = PROFILES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ProfilesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Profiles$Query parse(Map<String, dynamic> json) =>
      Profiles$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ProfileArguments extends JsonSerializable with EquatableMixin {
  ProfileArguments({required this.id});

  @override
  factory ProfileArguments.fromJson(Map<String, dynamic> json) =>
      _$ProfileArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$ProfileArgumentsToJson(this);
}

final PROFILE_QUERY_DOCUMENT_OPERATION_NAME = 'Profile';
final PROFILE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Profile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'profile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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
            name: NameNode(value: 'middle_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'role'),
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

class ProfileQuery extends GraphQLQuery<Profile$Query, ProfileArguments> {
  ProfileQuery({required this.variables});

  @override
  final DocumentNode document = PROFILE_QUERY_DOCUMENT;

  @override
  final String operationName = PROFILE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ProfileArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Profile$Query parse(Map<String, dynamic> json) =>
      Profile$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateUserWithProfileArguments extends JsonSerializable
    with EquatableMixin {
  CreateUserWithProfileArguments({
    required this.username,
    required this.password,
    required this.first_name,
    required this.last_name,
    required this.role,
    required this.mobile_phone,
  });

  @override
  factory CreateUserWithProfileArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateUserWithProfileArgumentsFromJson(json);

  late String username;

  late String password;

  late String first_name;

  late String last_name;

  late String role;

  late int mobile_phone;

  @override
  List<Object?> get props =>
      [username, password, first_name, last_name, role, mobile_phone];

  @override
  Map<String, dynamic> toJson() => _$CreateUserWithProfileArgumentsToJson(this);
}

final CREATE_USER_WITH_PROFILE_MUTATION_DOCUMENT_OPERATION_NAME =
    'CreateUserWithProfile';
final CREATE_USER_WITH_PROFILE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateUserWithProfile'),
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'role')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mobile_phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'create_user_with_profile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'username'),
            value: VariableNode(name: NameNode(value: 'username')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first_name'),
            value: VariableNode(name: NameNode(value: 'first_name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last_name'),
            value: VariableNode(name: NameNode(value: 'last_name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'password'),
            value: VariableNode(name: NameNode(value: 'password')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mobile_phone'),
            value: VariableNode(name: NameNode(value: 'mobile_phone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'role'),
            value: VariableNode(name: NameNode(value: 'role')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'user'),
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
                name: NameNode(value: 'username'),
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
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateUserWithProfileMutation extends GraphQLQuery<
    CreateUserWithProfile$Mutation, CreateUserWithProfileArguments> {
  CreateUserWithProfileMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_USER_WITH_PROFILE_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CREATE_USER_WITH_PROFILE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateUserWithProfileArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreateUserWithProfile$Mutation parse(Map<String, dynamic> json) =>
      CreateUserWithProfile$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class UpdateProfileArguments extends JsonSerializable with EquatableMixin {
  UpdateProfileArguments({
    required this.id,
    this.gender,
    required this.middle_name,
    this.ci,
    required this.first_name,
    required this.last_name,
    required this.mobile_phone,
    this.social_reason,
    this.nit_billing,
    this.home_address,
  });

  @override
  factory UpdateProfileArguments.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileArgumentsFromJson(json);

  late int id;

  final String? gender;

  late String middle_name;

  final int? ci;

  late String first_name;

  late String last_name;

  late int mobile_phone;

  final String? social_reason;

  final String? nit_billing;

  final String? home_address;

  @override
  List<Object?> get props => [
        id,
        gender,
        middle_name,
        ci,
        first_name,
        last_name,
        mobile_phone,
        social_reason,
        nit_billing,
        home_address
      ];

  @override
  Map<String, dynamic> toJson() => _$UpdateProfileArgumentsToJson(this);
}

final UPDATE_PROFILE_MUTATION_DOCUMENT_OPERATION_NAME = 'UpdateProfile';
final UPDATE_PROFILE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfile'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gender')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'middle_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ci')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'last_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mobile_phone')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'social_reason')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nit_billing')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'home_address')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'update_profile'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'first_name'),
            value: VariableNode(name: NameNode(value: 'first_name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last_name'),
            value: VariableNode(name: NameNode(value: 'last_name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'ci'),
            value: VariableNode(name: NameNode(value: 'ci')),
          ),
          ArgumentNode(
            name: NameNode(value: 'gender'),
            value: VariableNode(name: NameNode(value: 'gender')),
          ),
          ArgumentNode(
            name: NameNode(value: 'middle_name'),
            value: VariableNode(name: NameNode(value: 'middle_name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'mobile_phone'),
            value: VariableNode(name: NameNode(value: 'mobile_phone')),
          ),
          ArgumentNode(
            name: NameNode(value: 'social_reason'),
            value: VariableNode(name: NameNode(value: 'social_reason')),
          ),
          ArgumentNode(
            name: NameNode(value: 'nit_billing'),
            value: VariableNode(name: NameNode(value: 'nit_billing')),
          ),
          ArgumentNode(
            name: NameNode(value: 'home_address'),
            value: VariableNode(name: NameNode(value: 'home_address')),
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
                name: NameNode(value: 'ci'),
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
                name: NameNode(value: 'middle_name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'home_address'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'mobile_phone'),
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

class UpdateProfileMutation
    extends GraphQLQuery<UpdateProfile$Mutation, UpdateProfileArguments> {
  UpdateProfileMutation({required this.variables});

  @override
  final DocumentNode document = UPDATE_PROFILE_MUTATION_DOCUMENT;

  @override
  final String operationName = UPDATE_PROFILE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final UpdateProfileArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  UpdateProfile$Mutation parse(Map<String, dynamic> json) =>
      UpdateProfile$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateResourceArguments extends JsonSerializable with EquatableMixin {
  CreateResourceArguments({
    required this.file,
    required this.coordinates,
    required this.resource_name,
    required this.resource_ext,
    required this.resource_id,
  });

  @override
  factory CreateResourceArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateResourceArgumentsFromJson(json);

  late Object file;

  late List<String?> coordinates;

  late String resource_name;

  late String resource_ext;

  late int resource_id;

  @override
  List<Object?> get props =>
      [file, coordinates, resource_name, resource_ext, resource_id];

  @override
  Map<String, dynamic> toJson() => _$CreateResourceArgumentsToJson(this);
}

final CREATE_RESOURCE_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateResource';
final CREATE_RESOURCE_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateResource'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'file')),
        type: NamedTypeNode(
          name: NameNode(value: 'Upload'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'coordinates')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'String'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resource_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resource_ext')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resource_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'create_resource'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'file'),
            value: VariableNode(name: NameNode(value: 'file')),
          ),
          ArgumentNode(
            name: NameNode(value: 'coordinates'),
            value: VariableNode(name: NameNode(value: 'coordinates')),
          ),
          ArgumentNode(
            name: NameNode(value: 'resource_name'),
            value: VariableNode(name: NameNode(value: 'resource_name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'resource_ext'),
            value: VariableNode(name: NameNode(value: 'resource_ext')),
          ),
          ArgumentNode(
            name: NameNode(value: 'resource_id'),
            value: VariableNode(name: NameNode(value: 'resource_id')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'resource'),
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
              )
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateResourceMutation
    extends GraphQLQuery<CreateResource$Mutation, CreateResourceArguments> {
  CreateResourceMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_RESOURCE_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_RESOURCE_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateResourceArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreateResource$Mutation parse(Map<String, dynamic> json) =>
      CreateResource$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateResourcesArguments extends JsonSerializable with EquatableMixin {
  CreateResourcesArguments({
    required this.file,
    required this.resource_name,
    required this.resource_ext,
    required this.resource_id,
  });

  @override
  factory CreateResourcesArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateResourcesArgumentsFromJson(json);

  late List<Object?> file;

  late String resource_name;

  late String resource_ext;

  late int resource_id;

  @override
  List<Object?> get props => [file, resource_name, resource_ext, resource_id];

  @override
  Map<String, dynamic> toJson() => _$CreateResourcesArgumentsToJson(this);
}

final CREATE_RESOURCES_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateResources';
final CREATE_RESOURCES_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateResources'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'file')),
        type: ListTypeNode(
          type: NamedTypeNode(
            name: NameNode(value: 'Upload'),
            isNonNull: false,
          ),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resource_name')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resource_ext')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'resource_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'create_resources'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'files'),
            value: VariableNode(name: NameNode(value: 'file')),
          ),
          ArgumentNode(
            name: NameNode(value: 'resource_name'),
            value: VariableNode(name: NameNode(value: 'resource_name')),
          ),
          ArgumentNode(
            name: NameNode(value: 'resource_ext'),
            value: VariableNode(name: NameNode(value: 'resource_ext')),
          ),
          ArgumentNode(
            name: NameNode(value: 'resource_id'),
            value: VariableNode(name: NameNode(value: 'resource_id')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'resource'),
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
              )
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateResourcesMutation
    extends GraphQLQuery<CreateResources$Mutation, CreateResourcesArguments> {
  CreateResourcesMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_RESOURCES_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CREATE_RESOURCES_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateResourcesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  CreateResources$Mutation parse(Map<String, dynamic> json) =>
      CreateResources$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ResourcesArguments extends JsonSerializable with EquatableMixin {
  ResourcesArguments({
    this.limit,
    this.offset,
    this.search,
  });

  @override
  factory ResourcesArguments.fromJson(Map<String, dynamic> json) =>
      _$ResourcesArgumentsFromJson(json);

  final int? limit;

  final int? offset;

  final String? search;

  @override
  List<Object?> get props => [limit, offset, search];

  @override
  Map<String, dynamic> toJson() => _$ResourcesArgumentsToJson(this);
}

final RESOURCES_QUERY_DOCUMENT_OPERATION_NAME = 'Resources';
final RESOURCES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Resources'),
    variableDefinitions: [
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resources'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'totalCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
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
              )
            ]),
          ),
        ]),
      )
    ]),
  )
]);

class ResourcesQuery extends GraphQLQuery<Resources$Query, ResourcesArguments> {
  ResourcesQuery({required this.variables});

  @override
  final DocumentNode document = RESOURCES_QUERY_DOCUMENT;

  @override
  final String operationName = RESOURCES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ResourcesArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Resources$Query parse(Map<String, dynamic> json) =>
      Resources$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ResourceArguments extends JsonSerializable with EquatableMixin {
  ResourceArguments({required this.id});

  @override
  factory ResourceArguments.fromJson(Map<String, dynamic> json) =>
      _$ResourceArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$ResourceArgumentsToJson(this);
}

final RESOURCE_QUERY_DOCUMENT_OPERATION_NAME = 'Resource';
final RESOURCE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Resource'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'resource'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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
            name: NameNode(value: 'resource_id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'resource_name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image_thumb'),
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

class ResourceQuery extends GraphQLQuery<Resource$Query, ResourceArguments> {
  ResourceQuery({required this.variables});

  @override
  final DocumentNode document = RESOURCE_QUERY_DOCUMENT;

  @override
  final String operationName = RESOURCE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ResourceArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Resource$Query parse(Map<String, dynamic> json) =>
      Resource$Query.fromJson(json);
}

final CREATE_MODEL_MUTATION_DOCUMENT_OPERATION_NAME = 'CreateModel';
final CREATE_MODEL_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateModel'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'create_object_model'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'venue_id'),
            value: IntValueNode(value: '1'),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'objectmodel'),
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
              )
            ]),
          )
        ]),
      )
    ]),
  )
]);

class CreateModelMutation
    extends GraphQLQuery<CreateModel$Mutation, JsonSerializable> {
  CreateModelMutation();

  @override
  final DocumentNode document = CREATE_MODEL_MUTATION_DOCUMENT;

  @override
  final String operationName = CREATE_MODEL_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];

  @override
  CreateModel$Mutation parse(Map<String, dynamic> json) =>
      CreateModel$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ModelArguments extends JsonSerializable with EquatableMixin {
  ModelArguments({required this.id});

  @override
  factory ModelArguments.fromJson(Map<String, dynamic> json) =>
      _$ModelArgumentsFromJson(json);

  late int id;

  @override
  List<Object?> get props => [id];

  @override
  Map<String, dynamic> toJson() => _$ModelArgumentsToJson(this);
}

final MODEL_QUERY_DOCUMENT_OPERATION_NAME = 'Model';
final MODEL_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Model'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'objectmodel'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'created_at'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'venue'),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'file'),
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

class ModelQuery extends GraphQLQuery<Model$Query, ModelArguments> {
  ModelQuery({required this.variables});

  @override
  final DocumentNode document = MODEL_QUERY_DOCUMENT;

  @override
  final String operationName = MODEL_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ModelArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Model$Query parse(Map<String, dynamic> json) => Model$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class ModelsArguments extends JsonSerializable with EquatableMixin {
  ModelsArguments({
    this.ordering,
    this.search,
    this.limit,
    this.offset,
    this.venue_id,
  });

  @override
  factory ModelsArguments.fromJson(Map<String, dynamic> json) =>
      _$ModelsArgumentsFromJson(json);

  final String? ordering;

  final String? search;

  final int? limit;

  final int? offset;

  final double? venue_id;

  @override
  List<Object?> get props => [ordering, search, limit, offset, venue_id];

  @override
  Map<String, dynamic> toJson() => _$ModelsArgumentsToJson(this);
}

final MODELS_QUERY_DOCUMENT_OPERATION_NAME = 'Models';
final MODELS_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Models'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'ordering')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
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
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'venue_id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Decimal'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'objectmodels'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'ordering'),
            value: VariableNode(name: NameNode(value: 'ordering')),
          ),
          ArgumentNode(
            name: NameNode(value: 'search'),
            value: VariableNode(name: NameNode(value: 'search')),
          ),
          ArgumentNode(
            name: NameNode(value: 'venue_id'),
            value: VariableNode(name: NameNode(value: 'venue_id')),
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
                name: NameNode(value: 'name'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'created_at'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'venue'),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'file'),
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

class ModelsQuery extends GraphQLQuery<Models$Query, ModelsArguments> {
  ModelsQuery({required this.variables});

  @override
  final DocumentNode document = MODELS_QUERY_DOCUMENT;

  @override
  final String operationName = MODELS_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final ModelsArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];

  @override
  Models$Query parse(Map<String, dynamic> json) => Models$Query.fromJson(json);
}
