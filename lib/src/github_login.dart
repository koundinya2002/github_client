import 'package:flutter/material.dart';

class GithubLoginWidget extends StatefulWidget {
  const GithubLoginWidget({
    Key? key, required Scaffold Function(dynamic context, dynamic httpClient) builder, required String githubClientId, required String githubClientSecret, required List<String> githubScopes,
  }) : super(key: key);

  @override
  State<GithubLoginWidget> createState() => _GitHubLoginWidgetState();
}

class _GitHubLoginWidgetState extends State<GithubLoginWidget> {
  bool _isLoggedIn = false;

  @override
  Widget build(BuildContext context){
    if (_isLoggedIn) {
      return widget.builder(context);
    }

    return ElevatedButton(
      onPressed: (){
        setState(() {
          _isLoggedIn = true;
        });
      },
      child: const Text("Login to fake GitHub"),
    );
  }
}