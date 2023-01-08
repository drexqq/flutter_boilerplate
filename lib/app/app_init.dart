import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app/providers/app_provider.dart';
import 'package:flutter_boilerplate/common/widgets/loading_widget.dart';
import 'package:flutter_boilerplate/src/auth/pages/page_sign_in.dart';
import 'package:flutter_boilerplate/src/auth/pages/page_sign_up.dart';
import 'package:flutter_boilerplate/src/home/pages/page_home.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppInit extends ConsumerWidget {
  const AppInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(appProvider);

    return state.maybeWhen(
      initial: () => const PageSignUp(),
      authenticated: () => const PageHome(),
      unauthenticated: () => const PageSignIn(),
      internetUnAvailable: () => const LoadingWidget(),
      orElse: () => const LoadingWidget(),
    );
  }
}
