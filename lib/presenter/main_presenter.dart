import 'package:animal_list/presenter/main_list_item.dart';
import 'package:animal_list/repository/animal_repository.dart';
import 'package:hooks_riverpod/all.dart';

final mainListPresenter = Provider.autoDispose((ref) async {
  final futureAnimalList = ref.watch(animalListStreamProvider.last);
  final animalList = await futureAnimalList;
  return animalList.map((e) => MainListItem(e.name, false)).toList();
});
