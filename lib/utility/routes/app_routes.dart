
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:gorouter_bottomnav/nav_component/blog_page.dart';
import 'package:gorouter_bottomnav/nav_component/faq.dart';
import 'package:gorouter_bottomnav/nav_component/favourite_page.dart';
import 'package:gorouter_bottomnav/navbar.dart';
import 'package:gorouter_bottomnav/utility/routes/route_names.dart';
import 'package:gorouter_bottomnav/wallet/wallet_page.dart';

import '../../nav_component/home_page.dart';
import '../../settings/setting.dart';

class AppRouter{
  final GlobalKey<NavigatorState> _rootNavigatorKey =  GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _homeNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  final GlobalKey<NavigatorState> _faqNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellFaq');
  final GlobalKey<NavigatorState> _favNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellFav');
  final GlobalKey<NavigatorState> _blogNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellBlog');
  GoRouter returnRouter(bool isAuth){
    GoRouter  router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BottomNavBar(
              navigationShell: navigationShell,
            );
          },
          branches:<StatefulShellBranch> [
            StatefulShellBranch(
              routes: [
              GoRoute(
                path: '/',
                name: RoutePathConstants.home,
                builder: (BuildContext context, GoRouterState state) {
                  return const HomePage();
                },
                routes: [
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: 'setting',
                    name: RoutePathConstants.setting,
                    builder: (BuildContext context, GoRouterState state) {
                      return SettingPage();
                    },
                  ),
                ]
              ),
            ]),
            StatefulShellBranch(
              navigatorKey:_blogNavigatorKey,
              routes: [
                GoRoute(
                  path: '/blogpage',
                  name: RoutePathConstants.blogpage,
                  builder: (BuildContext context, GoRouterState state) {
                    return const BlogPage();
                  },
                ),
            ]),
            StatefulShellBranch(
              navigatorKey:_faqNavigatorKey,
              routes: [
                GoRoute(
                  path: '/faq',
                  name: RoutePathConstants.faq,
                  builder: (BuildContext context, GoRouterState state) {
                    return const FaqPage();
                  },
                ),
            ]),
            StatefulShellBranch(
              navigatorKey:_favNavigatorKey,
              routes: [
                GoRoute(
                  path: '/favpage',
                  name: RoutePathConstants.favpage,
                  builder: (BuildContext context, GoRouterState state) {
                    return const FavouritePage();
                  },
                ),
            ]),

          ],
        ),

        GoRoute(
          parentNavigatorKey: _rootNavigatorKey,
          path: '/wallet',
          name: RoutePathConstants.wallet,
          builder: (BuildContext context, GoRouterState state) {
            return WalletPage();
          },
        ),

        // GoRoute(
        //   path: '/',
        //   builder: (BuildContext context, GoRouterState state) {
        //     return const HomePage();
        //   },
        //   routes: <RouteBase>[
        //     GoRoute(
        //       path: 'blogpage',
        //       name: RoutePathConstants.blogpage,
        //       builder: (BuildContext context, GoRouterState state) {
        //         return const BlogPage();
        //       },
        //     ),
        //     GoRoute(
        //       path: 'faq',
        //       name: RoutePathConstants.faq,
        //       builder: (BuildContext context, GoRouterState state) {
        //         return const FaqPage();
        //       },
        //     ),
        //     GoRoute(
        //       path: 'favpage',
        //       name: RoutePathConstants.favpage,
        //       builder: (BuildContext context, GoRouterState state) {
        //         return const FavouritePage();
        //       },
        //     ),
        //     GoRoute(
        //       path: 'objectBox',
        //       name: RoutePathConstants.rxdart,
        //       builder: (BuildContext context, GoRouterState state) {
        //         return FaqPage();
        //       },
        //     ),
        //
        //   ],
        // ),
      ],

    );
    return router;
  }

}

