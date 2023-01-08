import 'package:flutter_boilerplate/app/models/app_state.dart';
import 'package:flutter_boilerplate/app/providers/token_provider.dart';
import 'package:flutter_boilerplate/services/logs/log_service.dart';
import 'package:flutter_boilerplate/src/auth/models/auth_state.dart';
import 'package:flutter_boilerplate/src/auth/providers/auth_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appProvider = StateNotifierProvider<AppProviderNotifier, AppState>((ref) {
  final loginState = ref.watch(authProvider);

  late AppState appState;
  appState = loginState is AppAuthenticated
      ? const AppState.authenticated()
      : const AppState.initial();

  return AppProviderNotifier(
    appState,
    ref,
    loginState,
  );
});

class AppProviderNotifier extends StateNotifier<AppState> {
  LogService logger = LogService();
  AppProviderNotifier(
    AppState appState,
    this._ref,
    this._authState,
  ) : super(appState) {
    _init();
  }

  final Ref _ref;
  final AuthState _authState;
  late final TokenProvider _tokenProvider = _ref.read(tokenProvider);

  Future<void> _init() async {
    _authState.maybeWhen(loggedIn: () {
      state = const AppState.authenticated();
    }, loggedOut: () {
      state = const AppState.unauthenticated();
    }, orElse: () {
      logger
        ..e('App Provider')
        ..e('--------------------')
        ..e('App State init Failed')
        ..e('--------------------\n');
    });

    state = const AppState.authenticated();
    final token = await _tokenProvider.fetchToken();
    if (mounted) {
      state = token != null
          ? const AppState.authenticated()
          : const AppState.unauthenticated();
    }
  }
}
