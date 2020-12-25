import 'package:animal_list/presenter/main_list_item.dart';
import 'package:animal_list/presenter/main_presenter.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

Future<void> main() async {
  // Firestoreの初期化
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animal list',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Animal list"),
        ),
        body: HookBuilder(builder: (context) {
          final futureMainList = useProvider(mainListPresenter);
          final snapshot = useFuture(futureMainList);
          if (snapshot.hasData) {
            final items = snapshot.data.map((e) => _buildListItem(e)).toList();
            return ListView(children: items);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }));
  }

  Container _buildListItem(MainListItem item) {
    final context = useContext();
    final textStyle = Theme.of(context).textTheme.bodyText2;
    return Container(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(children: [
        Text(item.name, overflow: TextOverflow.ellipsis, style: textStyle),
      ]),
    );
  }
}
