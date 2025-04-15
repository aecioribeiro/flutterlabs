import 'package:flutterlabs/src/screens/animations/custom_implicit_animation.dart';
import 'package:flutterlabs/src/screens/animations/explicit_animation.dart';
import 'package:flutterlabs/src/screens/animations/hero_animation.dart';
import 'package:flutterlabs/src/screens/animations/hero_animation_detail.dart';
import 'package:flutterlabs/src/screens/animations/implicit_animation.dart';
import 'package:flutterlabs/src/screens/animations/lottie_animation.dart';
import 'package:flutterlabs/src/screens/animations/physics_animation.dart';
import 'package:flutterlabs/src/screens/animations/animations_gallery.dart';
import 'package:flutterlabs/src/screens/home_page.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes {
  home,
  animations,
  implicitAnimation,
  explicitAnimation,
  heroAnimation,
  heroAnimationDetail,
  lottieAnimation,
  customImplicitAnimation,
  physicsAnimtion,
}

String path(AppRoutes route) {
  return "/${route.name}";
}

final routing = GoRouter(
  initialLocation: path(AppRoutes.home),
  routes: [
    GoRoute(
      path: path(AppRoutes.home),
      name: AppRoutes.home.name,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: path(AppRoutes.animations),
      name: AppRoutes.animations.name,
      builder: (context, state) => const AnimationsGallery(),
    ),
    GoRoute(
      path: path(AppRoutes.implicitAnimation),
      name: AppRoutes.implicitAnimation.name,
      builder: (context, state) => const ImplicitAnimation(),
    ),
    GoRoute(
      path: path(AppRoutes.explicitAnimation),
      name: AppRoutes.explicitAnimation.name,
      builder: (context, state) => const ExplicitAnimation(),
    ),
    GoRoute(
      path: path(AppRoutes.heroAnimation),
      name: AppRoutes.heroAnimation.name,
      builder: (context, state) => const HeroAnimation(),
    ),
    GoRoute(
      path: path(AppRoutes.heroAnimationDetail),
      name: AppRoutes.heroAnimationDetail.name,
      builder: (context, state) => HeroAnimationDetail(index: (state.extra as int)),
    ),
    GoRoute(
      path: path(AppRoutes.lottieAnimation),
      name: AppRoutes.lottieAnimation.name,
      builder: (context, state) => const LottieAnimation(),
    ),
    GoRoute(
      path: path(AppRoutes.customImplicitAnimation),
      name: AppRoutes.customImplicitAnimation.name,
      builder: (context, state) => const CustomImplicitAnimation(),
    ),
    GoRoute(
      path: path(AppRoutes.physicsAnimtion),
      name: AppRoutes.physicsAnimtion.name,
      builder: (context, state) => const PhysicsAnimation(),
    ),
  ],
  redirect: (context, state) {
    return state.fullPath;
  },
);
