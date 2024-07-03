// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

bool get getIsDarkMode =>
    SchedulerBinding.instance.platformDispatcher.platformBrightness ==
    Brightness.dark;
