import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:longevity/repositories/login_provider/login_repository.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository loginRepository;

  LoginBloc({required this.loginRepository}) : super(LoginInitial());
 
  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {

  }

}
