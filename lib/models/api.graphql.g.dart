// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyAccount$Mutation$VerifyAccount$Profile
    _$VerifyAccount$Mutation$VerifyAccount$ProfileFromJson(
            Map<String, dynamic> json) =>
        VerifyAccount$Mutation$VerifyAccount$Profile()
          ..id = json['id'] as int?
          ..firstName = json['first_name'] as String?
          ..lastName = json['last_name'] as String?
          ..role = json['role'] as String?
          ..gender = json['gender'] as String?;

Map<String, dynamic> _$VerifyAccount$Mutation$VerifyAccount$ProfileToJson(
        VerifyAccount$Mutation$VerifyAccount$Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'role': instance.role,
      'gender': instance.gender,
    };

VerifyAccount$Mutation$VerifyAccount
    _$VerifyAccount$Mutation$VerifyAccountFromJson(Map<String, dynamic> json) =>
        VerifyAccount$Mutation$VerifyAccount()
          ..profile = json['profile'] == null
              ? null
              : VerifyAccount$Mutation$VerifyAccount$Profile.fromJson(
                  json['profile'] as Map<String, dynamic>)
          ..token = json['token'] as String?;

Map<String, dynamic> _$VerifyAccount$Mutation$VerifyAccountToJson(
        VerifyAccount$Mutation$VerifyAccount instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
      'token': instance.token,
    };

VerifyAccount$Mutation _$VerifyAccount$MutationFromJson(
        Map<String, dynamic> json) =>
    VerifyAccount$Mutation()
      ..verifyAccount = json['verify_account'] == null
          ? null
          : VerifyAccount$Mutation$VerifyAccount.fromJson(
              json['verify_account'] as Map<String, dynamic>);

Map<String, dynamic> _$VerifyAccount$MutationToJson(
        VerifyAccount$Mutation instance) =>
    <String, dynamic>{
      'verify_account': instance.verifyAccount?.toJson(),
    };

TokenAuth$Mutation$TokenAuth$Profile
    _$TokenAuth$Mutation$TokenAuth$ProfileFromJson(Map<String, dynamic> json) =>
        TokenAuth$Mutation$TokenAuth$Profile()
          ..id = json['id'] as int?
          ..firstName = json['first_name'] as String?
          ..lastName = json['last_name'] as String?
          ..role = json['role'] as String?
          ..gender = json['gender'] as String?;

Map<String, dynamic> _$TokenAuth$Mutation$TokenAuth$ProfileToJson(
        TokenAuth$Mutation$TokenAuth$Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'role': instance.role,
      'gender': instance.gender,
    };

TokenAuth$Mutation$TokenAuth _$TokenAuth$Mutation$TokenAuthFromJson(
        Map<String, dynamic> json) =>
    TokenAuth$Mutation$TokenAuth()
      ..profile = json['profile'] == null
          ? null
          : TokenAuth$Mutation$TokenAuth$Profile.fromJson(
              json['profile'] as Map<String, dynamic>)
      ..token = json['token'] as String?
      ..message = json['message'] as String?;

Map<String, dynamic> _$TokenAuth$Mutation$TokenAuthToJson(
        TokenAuth$Mutation$TokenAuth instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
      'token': instance.token,
      'message': instance.message,
    };

TokenAuth$Mutation _$TokenAuth$MutationFromJson(Map<String, dynamic> json) =>
    TokenAuth$Mutation()
      ..tokenAuth = json['token_auth'] == null
          ? null
          : TokenAuth$Mutation$TokenAuth.fromJson(
              json['token_auth'] as Map<String, dynamic>);

Map<String, dynamic> _$TokenAuth$MutationToJson(TokenAuth$Mutation instance) =>
    <String, dynamic>{
      'token_auth': instance.tokenAuth?.toJson(),
    };

Products$Query$Products$Results _$Products$Query$Products$ResultsFromJson(
        Map<String, dynamic> json) =>
    Products$Query$Products$Results()
      ..id = json['id'] as int?
      ..code = json['code'] as String?
      ..description = json['description'] as String?
      ..image = json['image'] as String?
      ..imageThumb = json['image_thumb'] as String?
      ..isActive = json['is_active'] as bool?
      ..images =
          (json['images'] as List<dynamic>?)?.map((e) => e as String?).toList()
      ..isSoldOut = json['is_sold_out'] as bool?
      ..name = json['name'] as String?
      ..quantityAvailable = json['quantity_available'] as int?
      ..priceUnit = (json['price_unit'] as num?)?.toDouble()
      ..registerAt = json['register_at'] == null
          ? null
          : DateTime.parse(json['register_at'] as String);

Map<String, dynamic> _$Products$Query$Products$ResultsToJson(
        Products$Query$Products$Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'image': instance.image,
      'image_thumb': instance.imageThumb,
      'is_active': instance.isActive,
      'images': instance.images,
      'is_sold_out': instance.isSoldOut,
      'name': instance.name,
      'quantity_available': instance.quantityAvailable,
      'price_unit': instance.priceUnit,
      'register_at': instance.registerAt?.toIso8601String(),
    };

Products$Query$Products _$Products$Query$ProductsFromJson(
        Map<String, dynamic> json) =>
    Products$Query$Products()
      ..totalCount = json['totalCount'] as int?
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Products$Query$Products$Results.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Products$Query$ProductsToJson(
        Products$Query$Products instance) =>
    <String, dynamic>{
      'totalCount': instance.totalCount,
      'results': instance.results?.map((e) => e?.toJson()).toList(),
    };

Products$Query _$Products$QueryFromJson(Map<String, dynamic> json) =>
    Products$Query()
      ..products = json['products'] == null
          ? null
          : Products$Query$Products.fromJson(
              json['products'] as Map<String, dynamic>);

Map<String, dynamic> _$Products$QueryToJson(Products$Query instance) =>
    <String, dynamic>{
      'products': instance.products?.toJson(),
    };

Product$Query$Product _$Product$Query$ProductFromJson(
        Map<String, dynamic> json) =>
    Product$Query$Product()
      ..id = json['id'] as int?
      ..code = json['code'] as String?
      ..description = json['description'] as String?
      ..image = json['image'] as String?
      ..imageThumb = json['image_thumb'] as String?
      ..isActive = json['is_active'] as bool?
      ..images =
          (json['images'] as List<dynamic>?)?.map((e) => e as String?).toList()
      ..isSoldOut = json['is_sold_out'] as bool?
      ..name = json['name'] as String?
      ..quantityAvailable = json['quantity_available'] as int?
      ..priceUnit = (json['price_unit'] as num?)?.toDouble()
      ..registerAt = json['register_at'] == null
          ? null
          : DateTime.parse(json['register_at'] as String);

Map<String, dynamic> _$Product$Query$ProductToJson(
        Product$Query$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'description': instance.description,
      'image': instance.image,
      'image_thumb': instance.imageThumb,
      'is_active': instance.isActive,
      'images': instance.images,
      'is_sold_out': instance.isSoldOut,
      'name': instance.name,
      'quantity_available': instance.quantityAvailable,
      'price_unit': instance.priceUnit,
      'register_at': instance.registerAt?.toIso8601String(),
    };

Product$Query _$Product$QueryFromJson(Map<String, dynamic> json) =>
    Product$Query()
      ..product = json['product'] == null
          ? null
          : Product$Query$Product.fromJson(
              json['product'] as Map<String, dynamic>);

Map<String, dynamic> _$Product$QueryToJson(Product$Query instance) =>
    <String, dynamic>{
      'product': instance.product?.toJson(),
    };

CreateProduct$Mutation$CreateProduct$Product
    _$CreateProduct$Mutation$CreateProduct$ProductFromJson(
            Map<String, dynamic> json) =>
        CreateProduct$Mutation$CreateProduct$Product()..id = json['id'] as int?;

Map<String, dynamic> _$CreateProduct$Mutation$CreateProduct$ProductToJson(
        CreateProduct$Mutation$CreateProduct$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateProduct$Mutation$CreateProduct
    _$CreateProduct$Mutation$CreateProductFromJson(Map<String, dynamic> json) =>
        CreateProduct$Mutation$CreateProduct()
          ..product = json['product'] == null
              ? null
              : CreateProduct$Mutation$CreateProduct$Product.fromJson(
                  json['product'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateProduct$Mutation$CreateProductToJson(
        CreateProduct$Mutation$CreateProduct instance) =>
    <String, dynamic>{
      'product': instance.product?.toJson(),
    };

CreateProduct$Mutation _$CreateProduct$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateProduct$Mutation()
      ..createProduct = json['create_product'] == null
          ? null
          : CreateProduct$Mutation$CreateProduct.fromJson(
              json['create_product'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateProduct$MutationToJson(
        CreateProduct$Mutation instance) =>
    <String, dynamic>{
      'create_product': instance.createProduct?.toJson(),
    };

UpdateProduct$Mutation$UpdateProduct$Product
    _$UpdateProduct$Mutation$UpdateProduct$ProductFromJson(
            Map<String, dynamic> json) =>
        UpdateProduct$Mutation$UpdateProduct$Product()..id = json['id'] as int?;

Map<String, dynamic> _$UpdateProduct$Mutation$UpdateProduct$ProductToJson(
        UpdateProduct$Mutation$UpdateProduct$Product instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

UpdateProduct$Mutation$UpdateProduct
    _$UpdateProduct$Mutation$UpdateProductFromJson(Map<String, dynamic> json) =>
        UpdateProduct$Mutation$UpdateProduct()
          ..product = json['product'] == null
              ? null
              : UpdateProduct$Mutation$UpdateProduct$Product.fromJson(
                  json['product'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateProduct$Mutation$UpdateProductToJson(
        UpdateProduct$Mutation$UpdateProduct instance) =>
    <String, dynamic>{
      'product': instance.product?.toJson(),
    };

UpdateProduct$Mutation _$UpdateProduct$MutationFromJson(
        Map<String, dynamic> json) =>
    UpdateProduct$Mutation()
      ..updateProduct = json['update_product'] == null
          ? null
          : UpdateProduct$Mutation$UpdateProduct.fromJson(
              json['update_product'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateProduct$MutationToJson(
        UpdateProduct$Mutation instance) =>
    <String, dynamic>{
      'update_product': instance.updateProduct?.toJson(),
    };

Profiles$Query$Profiles$Results _$Profiles$Query$Profiles$ResultsFromJson(
        Map<String, dynamic> json) =>
    Profiles$Query$Profiles$Results()
      ..id = json['id'] as int?
      ..firstName = json['first_name'] as String?
      ..middleName = json['middle_name'] as String?
      ..lastName = json['last_name'] as String?
      ..role = json['role'] as String?;

Map<String, dynamic> _$Profiles$Query$Profiles$ResultsToJson(
        Profiles$Query$Profiles$Results instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'middle_name': instance.middleName,
      'last_name': instance.lastName,
      'role': instance.role,
    };

Profiles$Query$Profiles _$Profiles$Query$ProfilesFromJson(
        Map<String, dynamic> json) =>
    Profiles$Query$Profiles()
      ..results = (json['results'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Profiles$Query$Profiles$Results.fromJson(
                  e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Profiles$Query$ProfilesToJson(
        Profiles$Query$Profiles instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e?.toJson()).toList(),
    };

Profiles$Query _$Profiles$QueryFromJson(Map<String, dynamic> json) =>
    Profiles$Query()
      ..profiles = json['profiles'] == null
          ? null
          : Profiles$Query$Profiles.fromJson(
              json['profiles'] as Map<String, dynamic>);

Map<String, dynamic> _$Profiles$QueryToJson(Profiles$Query instance) =>
    <String, dynamic>{
      'profiles': instance.profiles?.toJson(),
    };

Profile$Query$Profile _$Profile$Query$ProfileFromJson(
        Map<String, dynamic> json) =>
    Profile$Query$Profile()
      ..id = json['id'] as int?
      ..firstName = json['first_name'] as String?
      ..lastName = json['last_name'] as String?
      ..middleName = json['middle_name'] as String?
      ..role = json['role'] as String?;

Map<String, dynamic> _$Profile$Query$ProfileToJson(
        Profile$Query$Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'role': instance.role,
    };

Profile$Query _$Profile$QueryFromJson(Map<String, dynamic> json) =>
    Profile$Query()
      ..profile = json['profile'] == null
          ? null
          : Profile$Query$Profile.fromJson(
              json['profile'] as Map<String, dynamic>);

Map<String, dynamic> _$Profile$QueryToJson(Profile$Query instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
    };

CreateUserWithProfile$Mutation$CreateUserWithProfile$User
    _$CreateUserWithProfile$Mutation$CreateUserWithProfile$UserFromJson(
            Map<String, dynamic> json) =>
        CreateUserWithProfile$Mutation$CreateUserWithProfile$User()
          ..id = json['id'] as int?
          ..username = json['username'] as String?
          ..firstName = json['first_name'] as String?
          ..lastName = json['last_name'] as String?;

Map<String,
    dynamic> _$CreateUserWithProfile$Mutation$CreateUserWithProfile$UserToJson(
        CreateUserWithProfile$Mutation$CreateUserWithProfile$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };

CreateUserWithProfile$Mutation$CreateUserWithProfile
    _$CreateUserWithProfile$Mutation$CreateUserWithProfileFromJson(
            Map<String, dynamic> json) =>
        CreateUserWithProfile$Mutation$CreateUserWithProfile()
          ..user = json['user'] == null
              ? null
              : CreateUserWithProfile$Mutation$CreateUserWithProfile$User
                  .fromJson(json['user'] as Map<String, dynamic>);

Map<String, dynamic>
    _$CreateUserWithProfile$Mutation$CreateUserWithProfileToJson(
            CreateUserWithProfile$Mutation$CreateUserWithProfile instance) =>
        <String, dynamic>{
          'user': instance.user?.toJson(),
        };

CreateUserWithProfile$Mutation _$CreateUserWithProfile$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateUserWithProfile$Mutation()
      ..createUserWithProfile = json['create_user_with_profile'] == null
          ? null
          : CreateUserWithProfile$Mutation$CreateUserWithProfile.fromJson(
              json['create_user_with_profile'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateUserWithProfile$MutationToJson(
        CreateUserWithProfile$Mutation instance) =>
    <String, dynamic>{
      'create_user_with_profile': instance.createUserWithProfile?.toJson(),
    };

UpdateProfile$Mutation$UpdateProfile$Profile
    _$UpdateProfile$Mutation$UpdateProfile$ProfileFromJson(
            Map<String, dynamic> json) =>
        UpdateProfile$Mutation$UpdateProfile$Profile()
          ..id = json['id'] as int?
          ..ci = json['ci'] as int?
          ..firstName = json['first_name'] as String?
          ..lastName = json['last_name'] as String?
          ..middleName = json['middle_name'] as String?
          ..homeAddress = json['home_address'] as String?
          ..mobilePhone = json['mobile_phone'] as int?;

Map<String, dynamic> _$UpdateProfile$Mutation$UpdateProfile$ProfileToJson(
        UpdateProfile$Mutation$UpdateProfile$Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ci': instance.ci,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'home_address': instance.homeAddress,
      'mobile_phone': instance.mobilePhone,
    };

UpdateProfile$Mutation$UpdateProfile
    _$UpdateProfile$Mutation$UpdateProfileFromJson(Map<String, dynamic> json) =>
        UpdateProfile$Mutation$UpdateProfile()
          ..profile = json['profile'] == null
              ? null
              : UpdateProfile$Mutation$UpdateProfile$Profile.fromJson(
                  json['profile'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateProfile$Mutation$UpdateProfileToJson(
        UpdateProfile$Mutation$UpdateProfile instance) =>
    <String, dynamic>{
      'profile': instance.profile?.toJson(),
    };

UpdateProfile$Mutation _$UpdateProfile$MutationFromJson(
        Map<String, dynamic> json) =>
    UpdateProfile$Mutation()
      ..updateProfile = json['update_profile'] == null
          ? null
          : UpdateProfile$Mutation$UpdateProfile.fromJson(
              json['update_profile'] as Map<String, dynamic>);

Map<String, dynamic> _$UpdateProfile$MutationToJson(
        UpdateProfile$Mutation instance) =>
    <String, dynamic>{
      'update_profile': instance.updateProfile?.toJson(),
    };

VerifyAccountArguments _$VerifyAccountArgumentsFromJson(
        Map<String, dynamic> json) =>
    VerifyAccountArguments(
      token: json['token'] as String,
      platform: json['platform'] as String,
    );

Map<String, dynamic> _$VerifyAccountArgumentsToJson(
        VerifyAccountArguments instance) =>
    <String, dynamic>{
      'token': instance.token,
      'platform': instance.platform,
    };

TokenAuthArguments _$TokenAuthArgumentsFromJson(Map<String, dynamic> json) =>
    TokenAuthArguments(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$TokenAuthArgumentsToJson(TokenAuthArguments instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

ProductsArguments _$ProductsArgumentsFromJson(Map<String, dynamic> json) =>
    ProductsArguments(
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
      search: json['search'] as String?,
      venue_id: (json['venue_id'] as num?)?.toDouble(),
      is_active: json['is_active'] as bool?,
    );

Map<String, dynamic> _$ProductsArgumentsToJson(ProductsArguments instance) =>
    <String, dynamic>{
      'limit': instance.limit,
      'offset': instance.offset,
      'search': instance.search,
      'venue_id': instance.venue_id,
      'is_active': instance.is_active,
    };

ProductArguments _$ProductArgumentsFromJson(Map<String, dynamic> json) =>
    ProductArguments(
      id: json['id'] as int,
    );

Map<String, dynamic> _$ProductArgumentsToJson(ProductArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateProductArguments _$CreateProductArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateProductArguments(
      description: json['description'] as String,
      name: json['name'] as String,
      price_unit: (json['price_unit'] as num).toDouble(),
      code: json['code'] as String?,
    );

Map<String, dynamic> _$CreateProductArgumentsToJson(
        CreateProductArguments instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'price_unit': instance.price_unit,
      'code': instance.code,
    };

UpdateProductArguments _$UpdateProductArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpdateProductArguments(
      description: json['description'] as String?,
      is_active: json['is_active'] as bool?,
      name: json['name'] as String?,
      id: json['id'] as int,
      price_unit: (json['price_unit'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$UpdateProductArgumentsToJson(
        UpdateProductArguments instance) =>
    <String, dynamic>{
      'description': instance.description,
      'is_active': instance.is_active,
      'name': instance.name,
      'id': instance.id,
      'price_unit': instance.price_unit,
    };

ProfilesArguments _$ProfilesArgumentsFromJson(Map<String, dynamic> json) =>
    ProfilesArguments(
      id: (json['id'] as num?)?.toDouble(),
      ordering: json['ordering'] as String,
      search: json['search'] as String,
      limit: json['limit'] as int?,
      offset: json['offset'] as int?,
    );

Map<String, dynamic> _$ProfilesArgumentsToJson(ProfilesArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ordering': instance.ordering,
      'search': instance.search,
      'limit': instance.limit,
      'offset': instance.offset,
    };

ProfileArguments _$ProfileArgumentsFromJson(Map<String, dynamic> json) =>
    ProfileArguments(
      id: json['id'] as int,
    );

Map<String, dynamic> _$ProfileArgumentsToJson(ProfileArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateUserWithProfileArguments _$CreateUserWithProfileArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateUserWithProfileArguments(
      username: json['username'] as String,
      password: json['password'] as String,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      role: json['role'] as String,
      mobile_phone: json['mobile_phone'] as int,
    );

Map<String, dynamic> _$CreateUserWithProfileArgumentsToJson(
        CreateUserWithProfileArguments instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'role': instance.role,
      'mobile_phone': instance.mobile_phone,
    };

UpdateProfileArguments _$UpdateProfileArgumentsFromJson(
        Map<String, dynamic> json) =>
    UpdateProfileArguments(
      id: json['id'] as int,
      gender: json['gender'] as String?,
      middle_name: json['middle_name'] as String,
      ci: json['ci'] as int?,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      mobile_phone: json['mobile_phone'] as int,
      social_reason: json['social_reason'] as String?,
      nit_billing: json['nit_billing'] as String?,
      home_address: json['home_address'] as String?,
    );

Map<String, dynamic> _$UpdateProfileArgumentsToJson(
        UpdateProfileArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gender': instance.gender,
      'middle_name': instance.middle_name,
      'ci': instance.ci,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'mobile_phone': instance.mobile_phone,
      'social_reason': instance.social_reason,
      'nit_billing': instance.nit_billing,
      'home_address': instance.home_address,
    };
