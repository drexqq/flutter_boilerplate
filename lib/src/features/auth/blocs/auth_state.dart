// ignore_for_file: public_member_api_docs, sort_constructors_first

// Package imports:
import 'package:equatable/equatable.dart';

enum AuthStatus {
  init,
  authenticated,
  unauthenticated,
}

class AuthState extends Equatable {
  final AuthStatus status;
  const AuthState({
    required this.status,
  });

  const AuthState.init() : this(status: AuthStatus.init);

  @override
  List<Object?> get props => [status];

  AuthState copyWith({
    AuthStatus? status,
  }) {
    return AuthState(
      status: status ?? this.status,
    );
  }
}
