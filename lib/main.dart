import 'package:animal_list/presenter/main_list_item.dart';
import 'package:animal_list/presenter/main_presenter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:github_sign_in/github_sign_in.dart';
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

class MainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final futureLogout = useProvider(logoutProvider);
    final logout = useFuture(futureLogout);
    final iconButtons = List<IconButton>();
    if (logout.hasData && logout.data) {
      iconButtons.add(IconButton(
          icon: Icon(Icons.logout),
          tooltip: "ログアウト",
          onPressed: () {
            _signOut();
          }));
    }
    return Scaffold(
        appBar: AppBar(title: Text("Animal list"), actions: iconButtons),
        body: HookBuilder(builder: (context) {
          final context = useContext();
          final futureMainUiModel = useProvider(mainUiModelProvider);
          final snapshot = useFuture(futureMainUiModel);
          if (snapshot.hasData) {
            final items = snapshot.data.items
                .map((e) => _buildListItem(context, e))
                .toList();
            if (snapshot.data.showAuth) {
              items.insert(0, _buildLoginButton(context));
            }
            return ListView(children: items);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }));
  }

  /// ログアウトする
  _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  Container _buildListItem(BuildContext context, MainListItem item) {
    Icon icon;
    if (item.favorite) {
      icon = Icon(Icons.favorite, color: Colors.redAccent);
    } else {
      icon = Icon(Icons.favorite_border, color: Colors.grey);
    }
    final textStyle = Theme.of(context).textTheme.bodyText2;
    return Container(
      margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Row(children: [
        icon,
        SizedBox(width: 16),
        Text(item.name, overflow: TextOverflow.ellipsis, style: textStyle),
      ]),
    );
  }

  Container _buildLoginButton(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
        child: SignInButton(Buttons.GitHub, onPressed: () {
          _signInWithGitHub(context);
        }));
  }

  Future<UserCredential> _signInWithGitHub(BuildContext context) async {
    final GitHubSignIn gitHubSignIn = GitHubSignIn(
        clientId: '1cb2b31d32bc47ac579f',
        clientSecret: 'fcb4e0c691e2e7c997b8dba64f22be9821b76c02',
        redirectUrl:
            'https://tfandkusu-flutter-study.firebaseapp.com/__/auth/handler');
    final result = await gitHubSignIn.signIn(context);
    final AuthCredential githubAuthCredential =
        GithubAuthProvider.credential(result.token);
    return await FirebaseAuth.instance
        .signInWithCredential(githubAuthCredential);
  }
}
