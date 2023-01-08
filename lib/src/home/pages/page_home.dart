import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/routing/app_router.gr.dart';

class PageHome extends StatelessWidget {
  const PageHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Home page Map Layout / List Layout"),
            TextButton(
                onPressed: () {
                  context.router.push(const RouteSignUp());
                },
                child: const Text("Push to SignUp")),
            TextButton(
                onPressed: () {
                  context.router.push(const RouteSignIn());
                },
                child: const Text("Push to SignIn")),
          ],
        ),
      ),
    );
  }
}
