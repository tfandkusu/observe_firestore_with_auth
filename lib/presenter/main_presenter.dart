import 'package:animal_list/presenter/main_list_item.dart';
import 'package:animal_list/repository/animal_repository.dart';
import 'package:animal_list/repository/user_repository.dart';
import 'package:hooks_riverpod/all.dart';

import 'main_ui_model.dart';

final mainUiModelPresenter = Provider.autoDispose((ref) async {
  final futureAnimalList = ref.watch(animalListStreamProvider.last);
  final futureAuth = ref.watch(authStreamProvider.last);
  final animalList = await futureAnimalList;
  final auth = await futureAuth;
  final items = animalList.map((e) => MainListItem(e.name, false)).toList();
  return MainUiModel(items, !auth);
});
