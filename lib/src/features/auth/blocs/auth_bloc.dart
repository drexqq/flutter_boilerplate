// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_event.dart';
import 'package:flutter_boilerplate/src/features/auth/blocs/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(super.initialState);
}
