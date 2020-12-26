import 'package:animal_list/presenter/main_list_item.dart';
import 'package:animal_list/repository/animal_repository.dart';
import 'package:animal_list/repository/like_repository.dart';
import 'package:animal_list/repository/user_repository.dart';
import 'package:hooks_riverpod/all.dart';

import 'main_ui_model.dart';

/// ログアウトボタン表示Provider
final logoutProvider = Provider.autoDispose((ref) async {
  // 認証状態ならば表示
  final futureAuth = ref.watch(authStreamProvider.last);
  return await futureAuth;
});

/// 動物といいね！のリスト表示Provider
final mainUiModelProvider = Provider.autoDispose((ref) async {
  // 動物リスト
  final futureAnimalList = ref.watch(animalListStreamProvider.last);
  // いいね！セット
  final futureLikeSet = ref.watch(likeSetStreamProvider.last);
  // 認証状態
  final futureAuth = ref.watch(authStreamProvider.last);
  // Futureで包まれているので、待つ。
  final animalList = await futureAnimalList;
  final likeSet = await futureLikeSet;
  final auth = await futureAuth;
  // リスト表示する項目を作成する
  final items = animalList
      .map((animal) => MainListItem(animal.name, likeSet.contains(animal.id)))
      .toList();
  return MainUiModel(items, !auth /* 認証していないならばログインボタンを表示 */);
});

/// ログイン中プロバイダー
final loginProgressStateProvider = StateProvider((_) {
  return false;
});
