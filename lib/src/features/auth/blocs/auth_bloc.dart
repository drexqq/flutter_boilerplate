// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_event.dart';
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_state.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.init()) {
    on<LoginEvent>((event, emit) async {
      // * Login API 호출
      emit(state.copyWith(status: AuthStatus.authenticated));
    });

    add(LoginEvent(token: "TEST_TOKEN"));
  }
}
