// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsEvent {
  String get type => throw _privateConstructorUsedError;
  bool get needToSort => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, bool needToSort) productsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, bool needToSort)? productsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool needToSort)? productsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsFetched value) productsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsFetched value)? productsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsFetched value)? productsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductsEventCopyWith<ProductsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsEventCopyWith<$Res> {
  factory $ProductsEventCopyWith(
          ProductsEvent value, $Res Function(ProductsEvent) then) =
      _$ProductsEventCopyWithImpl<$Res, ProductsEvent>;
  @useResult
  $Res call({String type, bool needToSort});
}

/// @nodoc
class _$ProductsEventCopyWithImpl<$Res, $Val extends ProductsEvent>
    implements $ProductsEventCopyWith<$Res> {
  _$ProductsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? needToSort = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      needToSort: null == needToSort
          ? _value.needToSort
          : needToSort // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductsFetchedImplCopyWith<$Res>
    implements $ProductsEventCopyWith<$Res> {
  factory _$$ProductsFetchedImplCopyWith(_$ProductsFetchedImpl value,
          $Res Function(_$ProductsFetchedImpl) then) =
      __$$ProductsFetchedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, bool needToSort});
}

/// @nodoc
class __$$ProductsFetchedImplCopyWithImpl<$Res>
    extends _$ProductsEventCopyWithImpl<$Res, _$ProductsFetchedImpl>
    implements _$$ProductsFetchedImplCopyWith<$Res> {
  __$$ProductsFetchedImplCopyWithImpl(
      _$ProductsFetchedImpl _value, $Res Function(_$ProductsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? needToSort = null,
  }) {
    return _then(_$ProductsFetchedImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == needToSort
          ? _value.needToSort
          : needToSort // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ProductsFetchedImpl implements _ProductsFetched {
  const _$ProductsFetchedImpl(this.type, this.needToSort);

  @override
  final String type;
  @override
  final bool needToSort;

  @override
  String toString() {
    return 'ProductsEvent.productsFetched(type: $type, needToSort: $needToSort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsFetchedImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.needToSort, needToSort) ||
                other.needToSort == needToSort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, needToSort);

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsFetchedImplCopyWith<_$ProductsFetchedImpl> get copyWith =>
      __$$ProductsFetchedImplCopyWithImpl<_$ProductsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String type, bool needToSort) productsFetched,
  }) {
    return productsFetched(type, needToSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String type, bool needToSort)? productsFetched,
  }) {
    return productsFetched?.call(type, needToSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String type, bool needToSort)? productsFetched,
    required TResult orElse(),
  }) {
    if (productsFetched != null) {
      return productsFetched(type, needToSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductsFetched value) productsFetched,
  }) {
    return productsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductsFetched value)? productsFetched,
  }) {
    return productsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductsFetched value)? productsFetched,
    required TResult orElse(),
  }) {
    if (productsFetched != null) {
      return productsFetched(this);
    }
    return orElse();
  }
}

abstract class _ProductsFetched implements ProductsEvent {
  const factory _ProductsFetched(final String type, final bool needToSort) =
      _$ProductsFetchedImpl;

  @override
  String get type;
  @override
  bool get needToSort;

  /// Create a copy of ProductsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsFetchedImplCopyWith<_$ProductsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Product> products) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Product> products)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateEmpty value) empty,
    required TResult Function(ProductsStateSuccess value) success,
    required TResult Function(ProductsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateEmpty value)? empty,
    TResult? Function(ProductsStateSuccess value)? success,
    TResult? Function(ProductsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateEmpty value)? empty,
    TResult Function(ProductsStateSuccess value)? success,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res, ProductsState>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res, $Val extends ProductsState>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Product> products) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Product> products)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateEmpty value) empty,
    required TResult Function(ProductsStateSuccess value) success,
    required TResult Function(ProductsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateEmpty value)? empty,
    TResult? Function(ProductsStateSuccess value)? success,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateEmpty value)? empty,
    TResult Function(ProductsStateSuccess value)? success,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ProductsStateLoadingImplCopyWith<$Res> {
  factory _$$ProductsStateLoadingImplCopyWith(_$ProductsStateLoadingImpl value,
          $Res Function(_$ProductsStateLoadingImpl) then) =
      __$$ProductsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsStateLoadingImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateLoadingImpl>
    implements _$$ProductsStateLoadingImplCopyWith<$Res> {
  __$$ProductsStateLoadingImplCopyWithImpl(_$ProductsStateLoadingImpl _value,
      $Res Function(_$ProductsStateLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductsStateLoadingImpl implements ProductsStateLoading {
  const _$ProductsStateLoadingImpl();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Product> products) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Product> products)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateEmpty value) empty,
    required TResult Function(ProductsStateSuccess value) success,
    required TResult Function(ProductsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateEmpty value)? empty,
    TResult? Function(ProductsStateSuccess value)? success,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateEmpty value)? empty,
    TResult Function(ProductsStateSuccess value)? success,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductsStateLoading implements ProductsState {
  const factory ProductsStateLoading() = _$ProductsStateLoadingImpl;
}

/// @nodoc
abstract class _$$ProductsStateEmptyImplCopyWith<$Res> {
  factory _$$ProductsStateEmptyImplCopyWith(_$ProductsStateEmptyImpl value,
          $Res Function(_$ProductsStateEmptyImpl) then) =
      __$$ProductsStateEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductsStateEmptyImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateEmptyImpl>
    implements _$$ProductsStateEmptyImplCopyWith<$Res> {
  __$$ProductsStateEmptyImplCopyWithImpl(_$ProductsStateEmptyImpl _value,
      $Res Function(_$ProductsStateEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductsStateEmptyImpl implements ProductsStateEmpty {
  const _$ProductsStateEmptyImpl();

  @override
  String toString() {
    return 'ProductsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsStateEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Product> products) success,
    required TResult Function(String errorMessage) error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Product> products)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateEmpty value) empty,
    required TResult Function(ProductsStateSuccess value) success,
    required TResult Function(ProductsStateError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateEmpty value)? empty,
    TResult? Function(ProductsStateSuccess value)? success,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateEmpty value)? empty,
    TResult Function(ProductsStateSuccess value)? success,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ProductsStateEmpty implements ProductsState {
  const factory ProductsStateEmpty() = _$ProductsStateEmptyImpl;
}

/// @nodoc
abstract class _$$ProductsStateSuccessImplCopyWith<$Res> {
  factory _$$ProductsStateSuccessImplCopyWith(_$ProductsStateSuccessImpl value,
          $Res Function(_$ProductsStateSuccessImpl) then) =
      __$$ProductsStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductsStateSuccessImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateSuccessImpl>
    implements _$$ProductsStateSuccessImplCopyWith<$Res> {
  __$$ProductsStateSuccessImplCopyWithImpl(_$ProductsStateSuccessImpl _value,
      $Res Function(_$ProductsStateSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsStateSuccessImpl(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsStateSuccessImpl implements ProductsStateSuccess {
  const _$ProductsStateSuccessImpl(final List<Product> products)
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.success(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateSuccessImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateSuccessImplCopyWith<_$ProductsStateSuccessImpl>
      get copyWith =>
          __$$ProductsStateSuccessImplCopyWithImpl<_$ProductsStateSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Product> products) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Product> products)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateEmpty value) empty,
    required TResult Function(ProductsStateSuccess value) success,
    required TResult Function(ProductsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateEmpty value)? empty,
    TResult? Function(ProductsStateSuccess value)? success,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateEmpty value)? empty,
    TResult Function(ProductsStateSuccess value)? success,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProductsStateSuccess implements ProductsState {
  const factory ProductsStateSuccess(final List<Product> products) =
      _$ProductsStateSuccessImpl;

  List<Product> get products;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsStateSuccessImplCopyWith<_$ProductsStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsStateErrorImplCopyWith<$Res> {
  factory _$$ProductsStateErrorImplCopyWith(_$ProductsStateErrorImpl value,
          $Res Function(_$ProductsStateErrorImpl) then) =
      __$$ProductsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ProductsStateErrorImplCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res, _$ProductsStateErrorImpl>
    implements _$$ProductsStateErrorImplCopyWith<$Res> {
  __$$ProductsStateErrorImplCopyWithImpl(_$ProductsStateErrorImpl _value,
      $Res Function(_$ProductsStateErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ProductsStateErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsStateErrorImpl implements ProductsStateError {
  const _$ProductsStateErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProductsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsStateErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsStateErrorImplCopyWith<_$ProductsStateErrorImpl> get copyWith =>
      __$$ProductsStateErrorImplCopyWithImpl<_$ProductsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Product> products) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? empty,
    TResult? Function(List<Product> products)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Product> products)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ProductsStateLoading value) loading,
    required TResult Function(ProductsStateEmpty value) empty,
    required TResult Function(ProductsStateSuccess value) success,
    required TResult Function(ProductsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ProductsStateLoading value)? loading,
    TResult? Function(ProductsStateEmpty value)? empty,
    TResult? Function(ProductsStateSuccess value)? success,
    TResult? Function(ProductsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ProductsStateLoading value)? loading,
    TResult Function(ProductsStateEmpty value)? empty,
    TResult Function(ProductsStateSuccess value)? success,
    TResult Function(ProductsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductsStateError implements ProductsState {
  const factory ProductsStateError(final String errorMessage) =
      _$ProductsStateErrorImpl;

  String get errorMessage;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsStateErrorImplCopyWith<_$ProductsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
