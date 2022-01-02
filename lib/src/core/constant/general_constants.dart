import 'package:flutter/material.dart';

/// Design constants
const Size kDesignSizeMobile = Size(360, 640);
const double kBorderRadius = 16;

/// Navigator key
GlobalKey<NavigatorState> kNavigatorKey = GlobalKey<NavigatorState>();
BuildContext get kGlobalContext => kNavigatorKey.currentContext!;
