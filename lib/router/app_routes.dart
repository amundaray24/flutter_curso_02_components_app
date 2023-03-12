import 'package:flutter/material.dart';
import 'package:flutter_curso_02_components_app/models/models.dart';
import 'package:flutter_curso_02_components_app/screens/screens.dart';

class AppRoutes {
  
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption> [
    MenuOption(route: 'cardView', tittle: 'Cards Screen',screen: const CardScreen(), icon: Icons.credit_card),
    MenuOption(route: 'listView', tittle: 'List Screen',screen: const ListViewScreen(), icon: Icons.list_rounded),
    MenuOption(route: 'alertView', tittle: 'Alerts Screen',screen: const AlertScreen(), icon: Icons.crisis_alert),
    MenuOption(route: 'avatarScreen', tittle: 'Avatar Screen',screen: const AvatarScreen(), icon: Icons.people),
    MenuOption(route: 'animatedScreen', tittle: 'Animated Screen',screen: const AnimatedScreen(), icon: Icons.play_circle_outline),
    MenuOption(route: 'inputScreen', tittle: 'Inputs Screen',screen: const InputsScreen(), icon: Icons.short_text),
    MenuOption(route: 'sliderScreen', tittle: 'Slider and Checks',screen: const SliderScreen(), icon: Icons.sledding_rounded),
    MenuOption(route: 'listViewBuilderScreen', tittle: 'ListView Builder',screen: const ListViewBuilderScreen(), icon: Icons.list_alt),
  ];
  
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route : (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listView': (BuildContext context) => const ListViewScreen()
  // };

  static Route<dynamic>? onGenerateRoute (RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}