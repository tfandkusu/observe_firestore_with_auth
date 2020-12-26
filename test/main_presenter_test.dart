import 'package:animal_list/presenter/main_list_item.dart';
import 'package:animal_list/presenter/main_presenter.dart';
import 'package:animal_list/repository/animal.dart';
import 'package:animal_list/repository/animal_repository.dart';
import 'package:animal_list/repository/like_repository.dart';
import 'package:animal_list/repository/user_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';

void main() {
  // ログインしていない時の表示確認
  test('List animals without login', () async {
    final animalList = [
      Animal('1', 'alligator'),
      Animal('2', 'alpaca'),
      Animal('3', 'ape'),
      Animal('4', 'cat')
    ];
    final container = ProviderContainer(overrides: [
      animalListStreamProvider.overrideWithValue(AsyncValue.data(animalList)),
      authStreamProvider.overrideWithValue(AsyncValue.data(false)),
      userIdStreamProvider.overrideWithValue(AsyncValue.data(null))
    ]);
    final futureMainUiModel = container.read(mainUiModelProvider);
    final mainUiModel = await futureMainUiModel;
    // ログインボタンを表示する
    expect(mainUiModel.showAuth, true);
    // いいねはどの動物にもついていない
    expect(mainUiModel.items, [
      MainListItem('alligator', false),
      MainListItem('alpaca', false),
      MainListItem('ape', false),
      MainListItem('cat', false)
    ]);
  });

  // ログインしている時の表示を確認
  test('List animals without login', () async {
    final animalList = [
      Animal('1', 'alligator'),
      Animal('2', 'alpaca'),
      Animal('3', 'ape'),
      Animal('4', 'cat')
    ];
    // idが2であるalpacaと4であるcatにいいねを付けている。
    final likeSet = Set.from(['2', '4']);
    final container = ProviderContainer(overrides: [
      animalListStreamProvider.overrideWithValue(AsyncValue.data(animalList)),
      likeSetStreamProvider.overrideWithValue(AsyncValue.data(likeSet)),
      authStreamProvider.overrideWithValue(AsyncValue.data(true))
    ]);
    final futureMainUiModel = container.read(mainUiModelProvider);
    final mainUiModel = await futureMainUiModel;
    // ログインボタンは表示しない
    expect(mainUiModel.showAuth, false);
    // alpacaとcatにいいねがついている
    expect(mainUiModel.items, [
      MainListItem('alligator', false),
      MainListItem('alpaca', true),
      MainListItem('ape', false),
      MainListItem('cat', true)
    ]);
  });
  // ログインしているときはログアウトボタンを表示する
  test('Show logout button', () async {
    final container = ProviderContainer(overrides: [
      authStreamProvider.overrideWithValue(AsyncValue.data(true))
    ]);
    final futureLogout = container.read(logoutProvider);
    final logout = await futureLogout;
    expect(logout, true);
  });
  // ログインしていない時はログアウトボタンを表示しない。
  test('Hide logout button', () async {
    final container = ProviderContainer(overrides: [
      authStreamProvider.overrideWithValue(AsyncValue.data(false))
    ]);
    final futureLogout = container.read(logoutProvider);
    final logout = await futureLogout;
    expect(logout, false);
  });
}
