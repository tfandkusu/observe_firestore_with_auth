import 'package:freezed_annotation/freezed_annotation.dart';

import 'main_list_item.dart';

part 'main_ui_model.freezed.dart';

/// メイン画面で表示するデータ
/// [items] 項目一覧
/// [showAuth] ログインボタンを表示する
@freezed
abstract class MainUiModel with _$MainUiModel {
  factory MainUiModel(List<MainListItem> items, bool showAuth) =
  _MainUiModel;
}
