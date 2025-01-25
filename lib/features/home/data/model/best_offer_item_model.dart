class BestOfferItem {
  final int productId;
  final String sku;
  final int loyaltyEarningPoints;
  final int minLoyaltyPointsRequired;
  final String name;
  final String description;
  final String shortDescription;
  final String? thumbnailImage;
  final int stockQuantity;
  final bool inStock;
  final bool featuredTag;
  final bool cancelAvailable;
  final bool returnAvailable;
  final bool replacementAvailable;
  final bool cashOnDeliveryAvailable;
  final double price;
  final String? offerInfo;

  BestOfferItem({
    required this.productId,
    required this.sku,
    required this.loyaltyEarningPoints,
    required this.minLoyaltyPointsRequired,
    required this.name,
    required this.description,
    required this.shortDescription,
    this.thumbnailImage,
    required this.stockQuantity,
    required this.inStock,
    required this.featuredTag,
    required this.cancelAvailable,
    required this.returnAvailable,
    required this.replacementAvailable,
    required this.cashOnDeliveryAvailable,
    required this.price,
    this.offerInfo,
  });

  // Factory constructor to create an instance from JSON
  factory BestOfferItem.fromJson(Map<String, dynamic> json) {
    return BestOfferItem(
      productId: json['product_id'],
      sku: json['sku'],
      loyaltyEarningPoints: json['loyalty_earning_points'],
      minLoyaltyPointsRequired: json['min_loyalty_points_required'],
      name: json['name'],
      description: json['description'],
      shortDescription: json['short_description'],
      thumbnailImage: json['thumbnail_image'],
      stockQuantity: json['stock_quantity'],
      inStock: json['in_stock'],
      featuredTag: json['featured_tag'],
      cancelAvailable: json['cancel_available'],
      returnAvailable: json['return_available'],
      replacementAvailable: json['replacement_available'],
      cashOnDeliveryAvailable: json['cash_on_delivery_available'],
      price: json['price'].toDouble(),
      offerInfo: json['offer_info'],
    );
  }
}

class CategoriesItem {
  final int categoryId;
  final String categoryName;
  final String? categoryImage;

  CategoriesItem({
    required this.categoryId,
    required this.categoryName,
    this.categoryImage,
  });

  // Factory constructor to create an instance from JSON
  factory CategoriesItem.fromJson(Map<String, dynamic> json) {
    return CategoriesItem(
      categoryId: json['category_id'],
      categoryName: json['category_name'],
      categoryImage: json['category_image'],
    );
  }
}

class ApiResponse {
  final List<BestOfferItem> bestOffers;
  final List<CategoriesItem> categories;

  ApiResponse({
    required this.bestOffers,
    required this.categories,
  });

  // Factory constructor to create an instance from JSON
  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      bestOffers: (json['best_offers']['items'] as List)
          .map((item) => BestOfferItem.fromJson(item))
          .toList(),
      categories: (json['categories']['items'] as List)
          .map((item) => CategoriesItem.fromJson(item))
          .toList(),
    );
  }
}
