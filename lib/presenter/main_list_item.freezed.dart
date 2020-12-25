// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'main_list_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MainListItemTearOff {
  const _$MainListItemTearOff();

// ignore: unused_element
  _MainListItem call(String name, bool favorite) {
    return _MainListItem(
      name,
      favorite,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MainListItem = _$MainListItemTearOff();

/// @nodoc
mixin _$MainListItem {
  String get name;
  bool get favorite;

  $MainListItemCopyWith<MainListItem> get copyWith;
}

/// @nodoc
abstract class $MainListItemCopyWith<$Res> {
  factory $MainListItemCopyWith(
          MainListItem value, $Res Function(MainListItem) then) =
      _$MainListItemCopyWithImpl<$Res>;
  $Res call({String name, bool favorite});
}

/// @nodoc
class _$MainListItemCopyWithImpl<$Res> implements $MainListItemCopyWith<$Res> {
  _$MainListItemCopyWithImpl(this._value, this._then);

  final MainListItem _value;
  // ignore: unused_field
  final $Res Function(MainListItem) _then;

  @override
  $Res call({
    Object name = freezed,
    Object favorite = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      favorite: favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

/// @nodoc
abstract class _$MainListItemCopyWith<$Res>
    implements $MainListItemCopyWith<$Res> {
  factory _$MainListItemCopyWith(
          _MainListItem value, $Res Function(_MainListItem) then) =
      __$MainListItemCopyWithImpl<$Res>;
  @override
  $Res call({String name, bool favorite});
}

/// @nodoc
class __$MainListItemCopyWithImpl<$Res> extends _$MainListItemCopyWithImpl<$Res>
    implements _$MainListItemCopyWith<$Res> {
  __$MainListItemCopyWithImpl(
      _MainListItem _value, $Res Function(_MainListItem) _then)
      : super(_value, (v) => _then(v as _MainListItem));

  @override
  _MainListItem get _value => super._value as _MainListItem;

  @override
  $Res call({
    Object name = freezed,
    Object favorite = freezed,
  }) {
    return _then(_MainListItem(
      name == freezed ? _value.name : name as String,
      favorite == freezed ? _value.favorite : favorite as bool,
    ));
  }
}

/// @nodoc
class _$_MainListItem implements _MainListItem {
  _$_MainListItem(this.name, this.favorite)
      : assert(name != null),
        assert(favorite != null);

  @override
  final String name;
  @override
  final bool favorite;

  @override
  String toString() {
    return 'MainListItem(name: $name, favorite: $favorite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainListItem &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.favorite, favorite) ||
                const DeepCollectionEquality()
                    .equals(other.favorite, favorite)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(favorite);

  @override
  _$MainListItemCopyWith<_MainListItem> get copyWith =>
      __$MainListItemCopyWithImpl<_MainListItem>(this, _$identity);
}

abstract class _MainListItem implements MainListItem {
  factory _MainListItem(String name, bool favorite) = _$_MainListItem;

  @override
  String get name;
  @override
  bool get favorite;
  @override
  _$MainListItemCopyWith<_MainListItem> get copyWith;
}
