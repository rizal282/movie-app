import 'package:app_movies/data/model/authentication/create_session_id_req.dart';
import 'package:app_movies/data/model/authentication/create_session_login_req.dart';
import 'package:app_movies/domain/usecases/authentication/create_session_id_usecase.dart';
import 'package:app_movies/domain/usecases/authentication/create_session_login_usecase.dart';
import 'package:app_movies/presentation/home/pages/home_page.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter/material.dart';

class LoginUser extends StatefulWidget {
  final String requestToken;
  const LoginUser({super.key, required this.requestToken});

  @override
  State<LoginUser> createState() => _LoginUserState();
}

class _LoginUserState extends State<LoginUser> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: username,
              decoration: const InputDecoration(hintText: "Username"),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: password,
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () async {
                  var sessionLoginReq = CreateSessionLoginReq(
                      username: username.text.toString(),
                      password: password.text.toString(),
                      requestToken: widget.requestToken);
                  var result = await sl<CreateSessionLoginUsecase>()
                      .call(params: sessionLoginReq);

                  result.fold((left) {
                    print("============ GAGAL");
                  }, (right) async {
                    var sessionIdRes = await sl<CreateSessionIdUsecase>().call(
                        params: CreateSessionIdReq(
                            requestToken: right.requestToken));
                    
                    sessionIdRes.fold((left) {
                      var snackbar = SnackBar(
                        content: Text(left),
                        behavior: SnackBarBehavior.floating,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }, (right) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (BuildContext context) => const HomePage()));
                    });
                  });
                },
                child: const Text("Masuk"))
          ],
        ),
      ),
    );
  }
}
