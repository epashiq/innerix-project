// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreModelImpl _$$StoreModelImplFromJson(Map<String, dynamic> json) =>
    _$StoreModelImpl(
      offers: Offers.fromJson(json['offers'] as Map<String, dynamic>),
      categories:
          Categories.fromJson(json['categories'] as Map<String, dynamic>),
      topSellingItems:
          Section.fromJson(json['topSellingItems'] as Map<String, dynamic>),
      bestOffers: Section.fromJson(json['bestOffers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StoreModelImplToJson(_$StoreModelImpl instance) =>
    <String, dynamic>{
      'offers': instance.offers,
      'categories': instance.categories,
      'topSellingItems': instance.topSellingItems,
      'bestOffers': instance.bestOffers,
    };

_$OffersImpl _$$OffersImplFromJson(Map<String, dynamic> json) => _$OffersImpl(
      title: json['title'] as String,
      items: json['items'] as List<dynamic>,
    );

Map<String, dynamic> _$$OffersImplToJson(_$OffersImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items,
    };

_$CategoriesImpl _$$CategoriesImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesImpl(
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => CategoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesImplToJson(_$CategoriesImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items,
    };

_$CategoryItemImpl _$$CategoryItemImplFromJson(Map<String, dynamic> json) =>
    _$CategoryItemImpl(
      categoryId: (json['categoryId'] as num).toInt(),
      categoryName: json['categoryName'] as String,
      categoryImage: json['categoryImage'] as String?,
    );

Map<String, dynamic> _$$CategoryItemImplToJson(_$CategoryItemImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'categoryImage': instance.categoryImage,
    };

_$SectionImpl _$$SectionImplFromJson(Map<String, dynamic> json) =>
    _$SectionImpl(
      title: json['title'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SectionImplToJson(_$SectionImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'items': instance.items,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productId: (json['productId'] as num).toInt(),
      sku: json['sku'] as String,
      loyaltyEarningPoints: (json['loyaltyEarningPoints'] as num).toInt(),
      minLoyaltyPointsRequired:
          (json['minLoyaltyPointsRequired'] as num).toInt(),
      name: json['name'] as String,
      description: json['description'] as String,
      shortDescription: json['shortDescription'] as String,
      thumbnailImage: json['thumbnailImage'] as String?,
      stockQuantity: (json['stockQuantity'] as num).toInt(),
      inStock: json['inStock'] as bool,
      featuredTag: json['featuredTag'] as bool,
      cancelAvailable: json['cancelAvailable'] as bool,
      returnAvailable: json['returnAvailable'] as bool,
      replacementAvailable: json['replacementAvailable'] as bool,
      cashOnDeliveryAvailable: json['cashOnDeliveryAvailable'] as bool,
      price: (json['price'] as num).toDouble(),
      offerInfo: json['offerInfo'] as String?,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'sku': instance.sku,
      'loyaltyEarningPoints': instance.loyaltyEarningPoints,
      'minLoyaltyPointsRequired': instance.minLoyaltyPointsRequired,
      'name': instance.name,
      'description': instance.description,
      'shortDescription': instance.shortDescription,
      'thumbnailImage': instance.thumbnailImage,
      'stockQuantity': instance.stockQuantity,
      'inStock': instance.inStock,
      'featuredTag': instance.featuredTag,
      'cancelAvailable': instance.cancelAvailable,
      'returnAvailable': instance.returnAvailable,
      'replacementAvailable': instance.replacementAvailable,
      'cashOnDeliveryAvailable': instance.cashOnDeliveryAvailable,
      'price': instance.price,
      'offerInfo': instance.offerInfo,
    };
