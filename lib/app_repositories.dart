import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longevity/repositories/login_provider/login_provider.dart';
import 'package:longevity/repositories/login_provider/login_repository.dart';

class AppRepositories extends StatelessWidget {
  final Widget appBlocs;
  const AppRepositories({Key? key, required this.appBlocs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(providers: [
      RepositoryProvider(
          create: (context) =>
              LoginRepository(loginProvider: LoginProvider())),
    ], child: appBlocs);
  }
}