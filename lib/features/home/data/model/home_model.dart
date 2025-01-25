import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class StoreModel with _$StoreModel {
  const factory StoreModel({
    required Offers offers,
    required Categories categories,
    required Section topSellingItems,
    required Section bestOffers,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}

@freezed
class Offers with _$Offers {
  const factory Offers({
    required String title,
    required List<dynamic> items,
  }) = _Offers;

  factory Offers.fromJson(Map<String, dynamic> json) =>
      _$OffersFromJson(json);
}

@freezed
class Categories with _$Categories {
  const factory Categories({
    required String title,
    required List<CategoryItem> items,
  }) = _Categories;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}

@freezed
class CategoryItem with _$CategoryItem {
  const factory CategoryItem({
    required int categoryId,
    required String categoryName,
    String? categoryImage,
  }) = _CategoryItem;

  factory CategoryItem.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemFromJson(json);
}

@freezed
class Section with _$Section {
  const factory Section({
    required String title,
    required List<Product> items,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    required int productId,
    required String sku,
    required int loyaltyEarningPoints,
    required int minLoyaltyPointsRequired,
    required String name,
    required String description,
    required String shortDescription,
    String? thumbnailImage,
    required int stockQuantity,
    required bool inStock,
    required bool featuredTag,
    required bool cancelAvailable,
    required bool returnAvailable,
    required bool replacementAvailable,
    required bool cashOnDeliveryAvailable,
    required double price,
    String? offerInfo,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
