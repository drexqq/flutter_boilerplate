// Package imports:
import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {}

class LoginEvent extends AuthEvent {
  final String token;
  LoginEvent({
    required this.token,
  });

  @override
  List<Object?> get props => [token];
}
