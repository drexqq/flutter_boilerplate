import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/routing/app_router.gr.dart';

class PageSignIn extends StatelessWidget {
  const PageSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Sign In Page"),
            TextButton(
                onPressed: () {
                  context.router.push(const RouteSignUp());
                },
                child: const Text("Push to SignUp")),
            TextButton(
                onPressed: () {
                  context.router.push(const RouteHome());
                },
                child: const Text("Push to Home")),
          ],
        ),
      ),
    );
  }
}
