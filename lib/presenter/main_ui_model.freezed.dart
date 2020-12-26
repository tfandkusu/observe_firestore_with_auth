// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'main_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MainUiModelTearOff {
  const _$MainUiModelTearOff();

// ignore: unused_element
  _MainUiModel call(List<MainListItem> items, bool showAuth) {
    return _MainUiModel(
      items,
      showAuth,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MainUiModel = _$MainUiModelTearOff();

/// @nodoc
mixin _$MainUiModel {
  List<MainListItem> get items;
  bool get showAuth;

  $MainUiModelCopyWith<MainUiModel> get copyWith;
}

/// @nodoc
abstract class $MainUiModelCopyWith<$Res> {
  factory $MainUiModelCopyWith(
          MainUiModel value, $Res Function(MainUiModel) then) =
      _$MainUiModelCopyWithImpl<$Res>;
  $Res call({List<MainListItem> items, bool showAuth});
}

/// @nodoc
class _$MainUiModelCopyWithImpl<$Res> implements $MainUiModelCopyWith<$Res> {
  _$MainUiModelCopyWithImpl(this._value, this._then);

  final MainUiModel _value;
  // ignore: unused_field
  final $Res Function(MainUiModel) _then;

  @override
  $Res call({
    Object items = freezed,
    Object showAuth = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<MainListItem>,
      showAuth: showAuth == freezed ? _value.showAuth : showAuth as bool,
    ));
  }
}

/// @nodoc
abstract class _$MainUiModelCopyWith<$Res>
    implements $MainUiModelCopyWith<$Res> {
  factory _$MainUiModelCopyWith(
          _MainUiModel value, $Res Function(_MainUiModel) then) =
      __$MainUiModelCopyWithImpl<$Res>;
  @override
  $Res call({List<MainListItem> items, bool showAuth});
}

/// @nodoc
class __$MainUiModelCopyWithImpl<$Res> extends _$MainUiModelCopyWithImpl<$Res>
    implements _$MainUiModelCopyWith<$Res> {
  __$MainUiModelCopyWithImpl(
      _MainUiModel _value, $Res Function(_MainUiModel) _then)
      : super(_value, (v) => _then(v as _MainUiModel));

  @override
  _MainUiModel get _value => super._value as _MainUiModel;

  @override
  $Res call({
    Object items = freezed,
    Object showAuth = freezed,
  }) {
    return _then(_MainUiModel(
      items == freezed ? _value.items : items as List<MainListItem>,
      showAuth == freezed ? _value.showAuth : showAuth as bool,
    ));
  }
}

/// @nodoc
class _$_MainUiModel implements _MainUiModel {
  _$_MainUiModel(this.items, this.showAuth)
      : assert(items != null),
        assert(showAuth != null);

  @override
  final List<MainListItem> items;
  @override
  final bool showAuth;

  @override
  String toString() {
    return 'MainUiModel(items: $items, showAuth: $showAuth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MainUiModel &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.showAuth, showAuth) ||
                const DeepCollectionEquality()
                    .equals(other.showAuth, showAuth)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(showAuth);

  @override
  _$MainUiModelCopyWith<_MainUiModel> get copyWith =>
      __$MainUiModelCopyWithImpl<_MainUiModel>(this, _$identity);
}

abstract class _MainUiModel implements MainUiModel {
  factory _MainUiModel(List<MainListItem> items, bool showAuth) =
      _$_MainUiModel;

  @override
  List<MainListItem> get items;
  @override
  bool get showAuth;
  @override
  _$MainUiModelCopyWith<_MainUiModel> get copyWith;
}
