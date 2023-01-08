import 'package:auto_route/auto_route.dart';
import 'package:flutter_boilerplate/src/auth/pages/page_sign_in.dart';
import 'package:flutter_boilerplate/src/auth/pages/page_sign_up.dart';

const signUpRoute = AutoRoute(path: '/signup', page: PageSignUp);
const signInRoute = AutoRoute(path: '/signin', page: PageSignIn);
