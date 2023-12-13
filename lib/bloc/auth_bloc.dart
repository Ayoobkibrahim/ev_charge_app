import 'dart:async';
import 'package:ev_charge_app/services/authentication_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// Define authentication events
abstract class AuthEvent {}

class SignInEvent extends AuthEvent {
  final String phoneNumber;

  SignInEvent(this.phoneNumber);
}

// Define authentication states
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthenticatedState extends AuthState {
  final String accessToken;

  AuthenticatedState(this.accessToken);
}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService authService;

  AuthBloc({required this.authService}) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignInEvent) {
      try {
        final accessToken = await authService.signIn(event.phoneNumber);
        yield AuthenticatedState(accessToken);
      } catch (e) {
        yield AuthInitial();
        // Handle error or show error state
      }
    }
    // Add more conditions for other authentication-related events if needed
  }
}
