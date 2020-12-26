import 'package:animal_list/presenter/main_list_item.dart';
import 'package:animal_list/repository/animal_repository.dart';
import 'package:animal_list/repository/like_repository.dart';
import 'package:animal_list/repository/user_repository.dart';
import 'package:hooks_riverpod/all.dart';

import 'main_ui_model.dart';

/// ログアウトボタン表示Provider
final logoutProvider = Provider.autoDispose((ref) async {
  final futureAuth = ref.watch(authStreamProvider.last);
  return await futureAuth;
});

/// 動物リスト表示Provider
final mainUiModelProvider = Provider.autoDispose((ref) async {
  final futureAnimalList = ref.watch(animalListStreamProvider.last);
  final futureLikeSet = ref.watch(likeSetStreamProvider.last);
  final futureAuth = ref.watch(authStreamProvider.last);
  final animalList = await futureAnimalList;
  final likeSet = await futureLikeSet;
  final auth = await futureAuth;
  final items = animalList
      .map((animal) => MainListItem(animal.name, likeSet.contains(animal.id)))
      .toList();
  return MainUiModel(items, !auth);
});

/// ログイン中プロバイダー
final loginProgressStateProvider = StateProvider((_) {
  return false;
});
