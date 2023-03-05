import 'package:flutter/material.dart';
import 'package:medqcx/router/router.dart';

void main() {
  runApp(MaterialApp.router(
    routeInformationParser: appRouter.defaultRouteParser(),
    routerDelegate: appRouter.delegate(),
  ));
}
