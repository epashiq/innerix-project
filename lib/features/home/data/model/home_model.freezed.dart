// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StoreModel _$StoreModelFromJson(Map<String, dynamic> json) {
  return _StoreModel.fromJson(json);
}

/// @nodoc
mixin _$StoreModel {
  Offers get offers => throw _privateConstructorUsedError;
  Categories get categories => throw _privateConstructorUsedError;
  Section get topSellingItems => throw _privateConstructorUsedError;
  Section get bestOffers => throw _privateConstructorUsedError;

  /// Serializes this StoreModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StoreModelCopyWith<StoreModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoreModelCopyWith<$Res> {
  factory $StoreModelCopyWith(
          StoreModel value, $Res Function(StoreModel) then) =
      _$StoreModelCopyWithImpl<$Res, StoreModel>;
  @useResult
  $Res call(
      {Offers offers,
      Categories categories,
      Section topSellingItems,
      Section bestOffers});

  $OffersCopyWith<$Res> get offers;
  $CategoriesCopyWith<$Res> get categories;
  $SectionCopyWith<$Res> get topSellingItems;
  $SectionCopyWith<$Res> get bestOffers;
}

/// @nodoc
class _$StoreModelCopyWithImpl<$Res, $Val extends StoreModel>
    implements $StoreModelCopyWith<$Res> {
  _$StoreModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? categories = null,
    Object? topSellingItems = null,
    Object? bestOffers = null,
  }) {
    return _then(_value.copyWith(
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as Offers,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Categories,
      topSellingItems: null == topSellingItems
          ? _value.topSellingItems
          : topSellingItems // ignore: cast_nullable_to_non_nullable
              as Section,
      bestOffers: null == bestOffers
          ? _value.bestOffers
          : bestOffers // ignore: cast_nullable_to_non_nullable
              as Section,
    ) as $Val);
  }

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OffersCopyWith<$Res> get offers {
    return $OffersCopyWith<$Res>(_value.offers, (value) {
      return _then(_value.copyWith(offers: value) as $Val);
    });
  }

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoriesCopyWith<$Res> get categories {
    return $CategoriesCopyWith<$Res>(_value.categories, (value) {
      return _then(_value.copyWith(categories: value) as $Val);
    });
  }

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionCopyWith<$Res> get topSellingItems {
    return $SectionCopyWith<$Res>(_value.topSellingItems, (value) {
      return _then(_value.copyWith(topSellingItems: value) as $Val);
    });
  }

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionCopyWith<$Res> get bestOffers {
    return $SectionCopyWith<$Res>(_value.bestOffers, (value) {
      return _then(_value.copyWith(bestOffers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StoreModelImplCopyWith<$Res>
    implements $StoreModelCopyWith<$Res> {
  factory _$$StoreModelImplCopyWith(
          _$StoreModelImpl value, $Res Function(_$StoreModelImpl) then) =
      __$$StoreModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Offers offers,
      Categories categories,
      Section topSellingItems,
      Section bestOffers});

  @override
  $OffersCopyWith<$Res> get offers;
  @override
  $CategoriesCopyWith<$Res> get categories;
  @override
  $SectionCopyWith<$Res> get topSellingItems;
  @override
  $SectionCopyWith<$Res> get bestOffers;
}

/// @nodoc
class __$$StoreModelImplCopyWithImpl<$Res>
    extends _$StoreModelCopyWithImpl<$Res, _$StoreModelImpl>
    implements _$$StoreModelImplCopyWith<$Res> {
  __$$StoreModelImplCopyWithImpl(
      _$StoreModelImpl _value, $Res Function(_$StoreModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offers = null,
    Object? categories = null,
    Object? topSellingItems = null,
    Object? bestOffers = null,
  }) {
    return _then(_$StoreModelImpl(
      offers: null == offers
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as Offers,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as Categories,
      topSellingItems: null == topSellingItems
          ? _value.topSellingItems
          : topSellingItems // ignore: cast_nullable_to_non_nullable
              as Section,
      bestOffers: null == bestOffers
          ? _value.bestOffers
          : bestOffers // ignore: cast_nullable_to_non_nullable
              as Section,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreModelImpl implements _StoreModel {
  const _$StoreModelImpl(
      {required this.offers,
      required this.categories,
      required this.topSellingItems,
      required this.bestOffers});

  factory _$StoreModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreModelImplFromJson(json);

  @override
  final Offers offers;
  @override
  final Categories categories;
  @override
  final Section topSellingItems;
  @override
  final Section bestOffers;

  @override
  String toString() {
    return 'StoreModel(offers: $offers, categories: $categories, topSellingItems: $topSellingItems, bestOffers: $bestOffers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreModelImpl &&
            (identical(other.offers, offers) || other.offers == offers) &&
            (identical(other.categories, categories) ||
                other.categories == categories) &&
            (identical(other.topSellingItems, topSellingItems) ||
                other.topSellingItems == topSellingItems) &&
            (identical(other.bestOffers, bestOffers) ||
                other.bestOffers == bestOffers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, offers, categories, topSellingItems, bestOffers);

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreModelImplCopyWith<_$StoreModelImpl> get copyWith =>
      __$$StoreModelImplCopyWithImpl<_$StoreModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreModelImplToJson(
      this,
    );
  }
}

abstract class _StoreModel implements StoreModel {
  const factory _StoreModel(
      {required final Offers offers,
      required final Categories categories,
      required final Section topSellingItems,
      required final Section bestOffers}) = _$StoreModelImpl;

  factory _StoreModel.fromJson(Map<String, dynamic> json) =
      _$StoreModelImpl.fromJson;

  @override
  Offers get offers;
  @override
  Categories get categories;
  @override
  Section get topSellingItems;
  @override
  Section get bestOffers;

  /// Create a copy of StoreModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StoreModelImplCopyWith<_$StoreModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Offers _$OffersFromJson(Map<String, dynamic> json) {
  return _Offers.fromJson(json);
}

/// @nodoc
mixin _$Offers {
  String get title => throw _privateConstructorUsedError;
  List<dynamic> get items => throw _privateConstructorUsedError;

  /// Serializes this Offers to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Offers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OffersCopyWith<Offers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersCopyWith<$Res> {
  factory $OffersCopyWith(Offers value, $Res Function(Offers) then) =
      _$OffersCopyWithImpl<$Res, Offers>;
  @useResult
  $Res call({String title, List<dynamic> items});
}

/// @nodoc
class _$OffersCopyWithImpl<$Res, $Val extends Offers>
    implements $OffersCopyWith<$Res> {
  _$OffersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Offers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OffersImplCopyWith<$Res> implements $OffersCopyWith<$Res> {
  factory _$$OffersImplCopyWith(
          _$OffersImpl value, $Res Function(_$OffersImpl) then) =
      __$$OffersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<dynamic> items});
}

/// @nodoc
class __$$OffersImplCopyWithImpl<$Res>
    extends _$OffersCopyWithImpl<$Res, _$OffersImpl>
    implements _$$OffersImplCopyWith<$Res> {
  __$$OffersImplCopyWithImpl(
      _$OffersImpl _value, $Res Function(_$OffersImpl) _then)
      : super(_value, _then);

  /// Create a copy of Offers
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_$OffersImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OffersImpl implements _Offers {
  const _$OffersImpl({required this.title, required final List<dynamic> items})
      : _items = items;

  factory _$OffersImpl.fromJson(Map<String, dynamic> json) =>
      _$$OffersImplFromJson(json);

  @override
  final String title;
  final List<dynamic> _items;
  @override
  List<dynamic> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Offers(title: $title, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OffersImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_items));

  /// Create a copy of Offers
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OffersImplCopyWith<_$OffersImpl> get copyWith =>
      __$$OffersImplCopyWithImpl<_$OffersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OffersImplToJson(
      this,
    );
  }
}

abstract class _Offers implements Offers {
  const factory _Offers(
      {required final String title,
      required final List<dynamic> items}) = _$OffersImpl;

  factory _Offers.fromJson(Map<String, dynamic> json) = _$OffersImpl.fromJson;

  @override
  String get title;
  @override
  List<dynamic> get items;

  /// Create a copy of Offers
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OffersImplCopyWith<_$OffersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Categories _$CategoriesFromJson(Map<String, dynamic> json) {
  return _Categories.fromJson(json);
}

/// @nodoc
mixin _$Categories {
  String get title => throw _privateConstructorUsedError;
  List<CategoryItem> get items => throw _privateConstructorUsedError;

  /// Serializes this Categories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoriesCopyWith<Categories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesCopyWith<$Res> {
  factory $CategoriesCopyWith(
          Categories value, $Res Function(Categories) then) =
      _$CategoriesCopyWithImpl<$Res, Categories>;
  @useResult
  $Res call({String title, List<CategoryItem> items});
}

/// @nodoc
class _$CategoriesCopyWithImpl<$Res, $Val extends Categories>
    implements $CategoriesCopyWith<$Res> {
  _$CategoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesImplCopyWith<$Res>
    implements $CategoriesCopyWith<$Res> {
  factory _$$CategoriesImplCopyWith(
          _$CategoriesImpl value, $Res Function(_$CategoriesImpl) then) =
      __$$CategoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<CategoryItem> items});
}

/// @nodoc
class __$$CategoriesImplCopyWithImpl<$Res>
    extends _$CategoriesCopyWithImpl<$Res, _$CategoriesImpl>
    implements _$$CategoriesImplCopyWith<$Res> {
  __$$CategoriesImplCopyWithImpl(
      _$CategoriesImpl _value, $Res Function(_$CategoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_$CategoriesImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoryItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesImpl implements _Categories {
  const _$CategoriesImpl(
      {required this.title, required final List<CategoryItem> items})
      : _items = items;

  factory _$CategoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesImplFromJson(json);

  @override
  final String title;
  final List<CategoryItem> _items;
  @override
  List<CategoryItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Categories(title: $title, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_items));

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      __$$CategoriesImplCopyWithImpl<_$CategoriesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesImplToJson(
      this,
    );
  }
}

abstract class _Categories implements Categories {
  const factory _Categories(
      {required final String title,
      required final List<CategoryItem> items}) = _$CategoriesImpl;

  factory _Categories.fromJson(Map<String, dynamic> json) =
      _$CategoriesImpl.fromJson;

  @override
  String get title;
  @override
  List<CategoryItem> get items;

  /// Create a copy of Categories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesImplCopyWith<_$CategoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryItem _$CategoryItemFromJson(Map<String, dynamic> json) {
  return _CategoryItem.fromJson(json);
}

/// @nodoc
mixin _$CategoryItem {
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  String? get categoryImage => throw _privateConstructorUsedError;

  /// Serializes this CategoryItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryItemCopyWith<CategoryItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryItemCopyWith<$Res> {
  factory $CategoryItemCopyWith(
          CategoryItem value, $Res Function(CategoryItem) then) =
      _$CategoryItemCopyWithImpl<$Res, CategoryItem>;
  @useResult
  $Res call({int categoryId, String categoryName, String? categoryImage});
}

/// @nodoc
class _$CategoryItemCopyWithImpl<$Res, $Val extends CategoryItem>
    implements $CategoryItemCopyWith<$Res> {
  _$CategoryItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? categoryImage = freezed,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImage: freezed == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryItemImplCopyWith<$Res>
    implements $CategoryItemCopyWith<$Res> {
  factory _$$CategoryItemImplCopyWith(
          _$CategoryItemImpl value, $Res Function(_$CategoryItemImpl) then) =
      __$$CategoryItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId, String categoryName, String? categoryImage});
}

/// @nodoc
class __$$CategoryItemImplCopyWithImpl<$Res>
    extends _$CategoryItemCopyWithImpl<$Res, _$CategoryItemImpl>
    implements _$$CategoryItemImplCopyWith<$Res> {
  __$$CategoryItemImplCopyWithImpl(
      _$CategoryItemImpl _value, $Res Function(_$CategoryItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? categoryImage = freezed,
  }) {
    return _then(_$CategoryItemImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryImage: freezed == categoryImage
          ? _value.categoryImage
          : categoryImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryItemImpl implements _CategoryItem {
  const _$CategoryItemImpl(
      {required this.categoryId,
      required this.categoryName,
      this.categoryImage});

  factory _$CategoryItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryItemImplFromJson(json);

  @override
  final int categoryId;
  @override
  final String categoryName;
  @override
  final String? categoryImage;

  @override
  String toString() {
    return 'CategoryItem(categoryId: $categoryId, categoryName: $categoryName, categoryImage: $categoryImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryItemImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.categoryImage, categoryImage) ||
                other.categoryImage == categoryImage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, categoryId, categoryName, categoryImage);

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryItemImplCopyWith<_$CategoryItemImpl> get copyWith =>
      __$$CategoryItemImplCopyWithImpl<_$CategoryItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryItemImplToJson(
      this,
    );
  }
}

abstract class _CategoryItem implements CategoryItem {
  const factory _CategoryItem(
      {required final int categoryId,
      required final String categoryName,
      final String? categoryImage}) = _$CategoryItemImpl;

  factory _CategoryItem.fromJson(Map<String, dynamic> json) =
      _$CategoryItemImpl.fromJson;

  @override
  int get categoryId;
  @override
  String get categoryName;
  @override
  String? get categoryImage;

  /// Create a copy of CategoryItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryItemImplCopyWith<_$CategoryItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Section {
  String get title => throw _privateConstructorUsedError;
  List<Product> get items => throw _privateConstructorUsedError;

  /// Serializes this Section to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res, Section>;
  @useResult
  $Res call({String title, List<Product> items});
}

/// @nodoc
class _$SectionCopyWithImpl<$Res, $Val extends Section>
    implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionImplCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$SectionImplCopyWith(
          _$SectionImpl value, $Res Function(_$SectionImpl) then) =
      __$$SectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<Product> items});
}

/// @nodoc
class __$$SectionImplCopyWithImpl<$Res>
    extends _$SectionCopyWithImpl<$Res, _$SectionImpl>
    implements _$$SectionImplCopyWith<$Res> {
  __$$SectionImplCopyWithImpl(
      _$SectionImpl _value, $Res Function(_$SectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? items = null,
  }) {
    return _then(_$SectionImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SectionImpl implements _Section {
  const _$SectionImpl({required this.title, required final List<Product> items})
      : _items = items;

  factory _$SectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SectionImplFromJson(json);

  @override
  final String title;
  final List<Product> _items;
  @override
  List<Product> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Section(title: $title, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_items));

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      __$$SectionImplCopyWithImpl<_$SectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SectionImplToJson(
      this,
    );
  }
}

abstract class _Section implements Section {
  const factory _Section(
      {required final String title,
      required final List<Product> items}) = _$SectionImpl;

  factory _Section.fromJson(Map<String, dynamic> json) = _$SectionImpl.fromJson;

  @override
  String get title;
  @override
  List<Product> get items;

  /// Create a copy of Section
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionImplCopyWith<_$SectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get productId => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get loyaltyEarningPoints => throw _privateConstructorUsedError;
  int get minLoyaltyPointsRequired => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String? get thumbnailImage => throw _privateConstructorUsedError;
  int get stockQuantity => throw _privateConstructorUsedError;
  bool get inStock => throw _privateConstructorUsedError;
  bool get featuredTag => throw _privateConstructorUsedError;
  bool get cancelAvailable => throw _privateConstructorUsedError;
  bool get returnAvailable => throw _privateConstructorUsedError;
  bool get replacementAvailable => throw _privateConstructorUsedError;
  bool get cashOnDeliveryAvailable => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String? get offerInfo => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int productId,
      String sku,
      int loyaltyEarningPoints,
      int minLoyaltyPointsRequired,
      String name,
      String description,
      String shortDescription,
      String? thumbnailImage,
      int stockQuantity,
      bool inStock,
      bool featuredTag,
      bool cancelAvailable,
      bool returnAvailable,
      bool replacementAvailable,
      bool cashOnDeliveryAvailable,
      double price,
      String? offerInfo});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? sku = null,
    Object? loyaltyEarningPoints = null,
    Object? minLoyaltyPointsRequired = null,
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? thumbnailImage = freezed,
    Object? stockQuantity = null,
    Object? inStock = null,
    Object? featuredTag = null,
    Object? cancelAvailable = null,
    Object? returnAvailable = null,
    Object? replacementAvailable = null,
    Object? cashOnDeliveryAvailable = null,
    Object? price = null,
    Object? offerInfo = freezed,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      loyaltyEarningPoints: null == loyaltyEarningPoints
          ? _value.loyaltyEarningPoints
          : loyaltyEarningPoints // ignore: cast_nullable_to_non_nullable
              as int,
      minLoyaltyPointsRequired: null == minLoyaltyPointsRequired
          ? _value.minLoyaltyPointsRequired
          : minLoyaltyPointsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: freezed == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String?,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      featuredTag: null == featuredTag
          ? _value.featuredTag
          : featuredTag // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelAvailable: null == cancelAvailable
          ? _value.cancelAvailable
          : cancelAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      returnAvailable: null == returnAvailable
          ? _value.returnAvailable
          : returnAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      replacementAvailable: null == replacementAvailable
          ? _value.replacementAvailable
          : replacementAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      cashOnDeliveryAvailable: null == cashOnDeliveryAvailable
          ? _value.cashOnDeliveryAvailable
          : cashOnDeliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      offerInfo: freezed == offerInfo
          ? _value.offerInfo
          : offerInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId,
      String sku,
      int loyaltyEarningPoints,
      int minLoyaltyPointsRequired,
      String name,
      String description,
      String shortDescription,
      String? thumbnailImage,
      int stockQuantity,
      bool inStock,
      bool featuredTag,
      bool cancelAvailable,
      bool returnAvailable,
      bool replacementAvailable,
      bool cashOnDeliveryAvailable,
      double price,
      String? offerInfo});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? sku = null,
    Object? loyaltyEarningPoints = null,
    Object? minLoyaltyPointsRequired = null,
    Object? name = null,
    Object? description = null,
    Object? shortDescription = null,
    Object? thumbnailImage = freezed,
    Object? stockQuantity = null,
    Object? inStock = null,
    Object? featuredTag = null,
    Object? cancelAvailable = null,
    Object? returnAvailable = null,
    Object? replacementAvailable = null,
    Object? cashOnDeliveryAvailable = null,
    Object? price = null,
    Object? offerInfo = freezed,
  }) {
    return _then(_$ProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      loyaltyEarningPoints: null == loyaltyEarningPoints
          ? _value.loyaltyEarningPoints
          : loyaltyEarningPoints // ignore: cast_nullable_to_non_nullable
              as int,
      minLoyaltyPointsRequired: null == minLoyaltyPointsRequired
          ? _value.minLoyaltyPointsRequired
          : minLoyaltyPointsRequired // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: null == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailImage: freezed == thumbnailImage
          ? _value.thumbnailImage
          : thumbnailImage // ignore: cast_nullable_to_non_nullable
              as String?,
      stockQuantity: null == stockQuantity
          ? _value.stockQuantity
          : stockQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      inStock: null == inStock
          ? _value.inStock
          : inStock // ignore: cast_nullable_to_non_nullable
              as bool,
      featuredTag: null == featuredTag
          ? _value.featuredTag
          : featuredTag // ignore: cast_nullable_to_non_nullable
              as bool,
      cancelAvailable: null == cancelAvailable
          ? _value.cancelAvailable
          : cancelAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      returnAvailable: null == returnAvailable
          ? _value.returnAvailable
          : returnAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      replacementAvailable: null == replacementAvailable
          ? _value.replacementAvailable
          : replacementAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      cashOnDeliveryAvailable: null == cashOnDeliveryAvailable
          ? _value.cashOnDeliveryAvailable
          : cashOnDeliveryAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      offerInfo: freezed == offerInfo
          ? _value.offerInfo
          : offerInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.productId,
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
      this.offerInfo});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int productId;
  @override
  final String sku;
  @override
  final int loyaltyEarningPoints;
  @override
  final int minLoyaltyPointsRequired;
  @override
  final String name;
  @override
  final String description;
  @override
  final String shortDescription;
  @override
  final String? thumbnailImage;
  @override
  final int stockQuantity;
  @override
  final bool inStock;
  @override
  final bool featuredTag;
  @override
  final bool cancelAvailable;
  @override
  final bool returnAvailable;
  @override
  final bool replacementAvailable;
  @override
  final bool cashOnDeliveryAvailable;
  @override
  final double price;
  @override
  final String? offerInfo;

  @override
  String toString() {
    return 'Product(productId: $productId, sku: $sku, loyaltyEarningPoints: $loyaltyEarningPoints, minLoyaltyPointsRequired: $minLoyaltyPointsRequired, name: $name, description: $description, shortDescription: $shortDescription, thumbnailImage: $thumbnailImage, stockQuantity: $stockQuantity, inStock: $inStock, featuredTag: $featuredTag, cancelAvailable: $cancelAvailable, returnAvailable: $returnAvailable, replacementAvailable: $replacementAvailable, cashOnDeliveryAvailable: $cashOnDeliveryAvailable, price: $price, offerInfo: $offerInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.loyaltyEarningPoints, loyaltyEarningPoints) ||
                other.loyaltyEarningPoints == loyaltyEarningPoints) &&
            (identical(
                    other.minLoyaltyPointsRequired, minLoyaltyPointsRequired) ||
                other.minLoyaltyPointsRequired == minLoyaltyPointsRequired) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.thumbnailImage, thumbnailImage) ||
                other.thumbnailImage == thumbnailImage) &&
            (identical(other.stockQuantity, stockQuantity) ||
                other.stockQuantity == stockQuantity) &&
            (identical(other.inStock, inStock) || other.inStock == inStock) &&
            (identical(other.featuredTag, featuredTag) ||
                other.featuredTag == featuredTag) &&
            (identical(other.cancelAvailable, cancelAvailable) ||
                other.cancelAvailable == cancelAvailable) &&
            (identical(other.returnAvailable, returnAvailable) ||
                other.returnAvailable == returnAvailable) &&
            (identical(other.replacementAvailable, replacementAvailable) ||
                other.replacementAvailable == replacementAvailable) &&
            (identical(
                    other.cashOnDeliveryAvailable, cashOnDeliveryAvailable) ||
                other.cashOnDeliveryAvailable == cashOnDeliveryAvailable) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.offerInfo, offerInfo) ||
                other.offerInfo == offerInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      sku,
      loyaltyEarningPoints,
      minLoyaltyPointsRequired,
      name,
      description,
      shortDescription,
      thumbnailImage,
      stockQuantity,
      inStock,
      featuredTag,
      cancelAvailable,
      returnAvailable,
      replacementAvailable,
      cashOnDeliveryAvailable,
      price,
      offerInfo);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int productId,
      required final String sku,
      required final int loyaltyEarningPoints,
      required final int minLoyaltyPointsRequired,
      required final String name,
      required final String description,
      required final String shortDescription,
      final String? thumbnailImage,
      required final int stockQuantity,
      required final bool inStock,
      required final bool featuredTag,
      required final bool cancelAvailable,
      required final bool returnAvailable,
      required final bool replacementAvailable,
      required final bool cashOnDeliveryAvailable,
      required final double price,
      final String? offerInfo}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get productId;
  @override
  String get sku;
  @override
  int get loyaltyEarningPoints;
  @override
  int get minLoyaltyPointsRequired;
  @override
  String get name;
  @override
  String get description;
  @override
  String get shortDescription;
  @override
  String? get thumbnailImage;
  @override
  int get stockQuantity;
  @override
  bool get inStock;
  @override
  bool get featuredTag;
  @override
  bool get cancelAvailable;
  @override
  bool get returnAvailable;
  @override
  bool get replacementAvailable;
  @override
  bool get cashOnDeliveryAvailable;
  @override
  double get price;
  @override
  String? get offerInfo;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
