// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'animal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AnimalTearOff {
  const _$AnimalTearOff();

// ignore: unused_element
  _Animal call(String name) {
    return _Animal(
      name,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Animal = _$AnimalTearOff();

/// @nodoc
mixin _$Animal {
  String get name;

  $AnimalCopyWith<Animal> get copyWith;
}

/// @nodoc
abstract class $AnimalCopyWith<$Res> {
  factory $AnimalCopyWith(Animal value, $Res Function(Animal) then) =
      _$AnimalCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$AnimalCopyWithImpl<$Res> implements $AnimalCopyWith<$Res> {
  _$AnimalCopyWithImpl(this._value, this._then);

  final Animal _value;
  // ignore: unused_field
  final $Res Function(Animal) _then;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
abstract class _$AnimalCopyWith<$Res> implements $AnimalCopyWith<$Res> {
  factory _$AnimalCopyWith(_Animal value, $Res Function(_Animal) then) =
      __$AnimalCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$AnimalCopyWithImpl<$Res> extends _$AnimalCopyWithImpl<$Res>
    implements _$AnimalCopyWith<$Res> {
  __$AnimalCopyWithImpl(_Animal _value, $Res Function(_Animal) _then)
      : super(_value, (v) => _then(v as _Animal));

  @override
  _Animal get _value => super._value as _Animal;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_Animal(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_Animal implements _Animal {
  _$_Animal(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'Animal(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Animal &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @override
  _$AnimalCopyWith<_Animal> get copyWith =>
      __$AnimalCopyWithImpl<_Animal>(this, _$identity);
}

abstract class _Animal implements Animal {
  factory _Animal(String name) = _$_Animal;

  @override
  String get name;
  @override
  _$AnimalCopyWith<_Animal> get copyWith;
}
