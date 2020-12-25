import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal.freezed.dart';

/// 動物情報
@freezed
abstract class Animal with _$Animal {
  factory Animal(String name) = _Animal;
}
