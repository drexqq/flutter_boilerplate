import 'package:flutter_boilerplate/src/auth/apis/auth_api.dart';
import 'package:flutter_boilerplate/src/auth/models/auth_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider = StateNotifierProvider<AuthProvider, AuthState>((ref) {
  return AuthProvider(ref);
});

class AuthProvider extends StateNotifier<AuthState> {
  AuthProvider(this._ref) : super(const AuthState.initial());

  final Ref _ref;
  late final AuthAPI _loginRepository = _ref.read(authApiProvider);

  Future<void> login(String email, String password) async {
    state = await _loginRepository.login(email, password);
  }

  Future<void> signUp(String name, String email, String password) async {
    state = await _loginRepository.signUp(name, email, password);
  }
}
