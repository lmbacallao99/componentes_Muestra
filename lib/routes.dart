import 'package:flutter/material.dart';

import 'package:componentes/input_pages.dart';
import 'package:componentes/animated_container.dart';
import 'alert_pages.dart';
import 'avatar_pages.dart';
import 'card.dart';
import 'home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const HomePage(),
    'alert': (BuildContext context) => const AlertPages(),
    'avatar': (BuildContext context) => const AvatarPages(),
    'card': (BuildContext context) => const CardPage(),
    'animatedContainer': (BuildContext context) =>
        const AnimatedContainerPage(),
    'inputs': (BuildContext context) => const InputPages(),
  };
}
