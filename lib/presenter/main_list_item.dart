import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_list_item.freezed.dart';

/// メイン画面リスト項目
@freezed
abstract class MainListItem with _$MainListItem {
  factory MainListItem(String name, bool favorite) = _MainListItem;
}
