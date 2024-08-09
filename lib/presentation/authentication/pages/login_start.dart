import 'package:app_movies/domain/usecases/authentication/request_token_usecase.dart';
import 'package:app_movies/presentation/authentication/pages/login_user.dart';
import 'package:app_movies/service_locator.dart';
import 'package:flutter/material.dart';

class LoginStart extends StatefulWidget {
  const LoginStart({super.key});

  @override
  State<LoginStart> createState() => _LoginStartState();
}

class _LoginStartState extends State<LoginStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            var result = await sl<RequestTokenUsecase>().callForAuth();

            result.fold((left){
              print("GAGAL ===========");
              print(left);

              var snackbar = const SnackBar(content: Text("Gagal mengambil data!"),behavior: SnackBarBehavior.floating,);
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
            }, 
            (right){
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginUser(requestToken: right.requestToken,)));
            });
          }, 
          child: const Text("Login")),
      ),
    );
  }
}