import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:longevity/blocs/login_bloc/login_bloc.dart';
import 'package:longevity/repositories/login_provider/login_repository.dart';

class AppBlocs extends StatelessWidget {
  final Widget app;
  const AppBlocs({Key? key, required this.app}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (context) => LoginBloc(
              loginRepository:
                  RepositoryProvider.of<LoginRepository>(context))),
    ], child: app);
  }
}
