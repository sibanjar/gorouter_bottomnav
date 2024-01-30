
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:gorouter_bottomnav/blog_page.dart';
import 'package:gorouter_bottomnav/nav_component/faq.dart';
import 'package:gorouter_bottomnav/nav_component/favourite_page.dart';
import 'package:gorouter_bottomnav/navbar.dart';
import 'package:gorouter_bottomnav/utility/routes/route_names.dart';
import 'package:gorouter_bottomnav/wallet/wallet_page.dart';

import '../../home_page.dart';
import '../../settings/setting.dart';

class AppRouter{
  final GlobalKey<NavigatorState> _rootNavigatorKey =  GlobalKey<NavigatorState>();
  // final GlobalKey<NavigatorState> _homeNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  // final GlobalKey<NavigatorState> _faqNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellFaq');
  // final GlobalKey<NavigatorState> _favNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellFav');
  // final GlobalKey<NavigatorState> _blogNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellBlog');

  GoRouter returnRouter(bool isAuth){
    GoRouter  router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: <RouteBase>[
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return BottomNavBar(navigationShell: navigationShell,);
          },
          branches:<StatefulShellBranch> [
            StatefulShellBranch(
              // navigatorKey: _homeNavigatorKey,
                routes: [
                  GoRoute(
                      path: '/',
                      name: RoutePathConstants.home,
                      builder: (BuildContext context, GoRouterState state) {
                        return const HomePage();
                      },
                      routes: [
                        GoRoute(
                          path: 'setting',
                          name: RoutePathConstants.setting,
                          builder: (BuildContext context, GoRouterState state) {
                            return SettingPage();
                          },
                        ),
                        GoRoute(
                          parentNavigatorKey: _rootNavigatorKey,
                          path: 'wallet',
                          name: RoutePathConstants.wallet,
                          builder: (BuildContext context, GoRouterState state) {
                            return WalletPage();
                          },
                        ),
                        // if we put blog in here. after change navbar, always return to blog homepage.
                      ]
                  ),
                ]),

            StatefulShellBranch(
                // navigatorKey:_blogNavigatorKey,
                // initialLocation: '/blog',
                routes: [
                  GoRoute(
                    path: '/blog',
                    name: RoutePathConstants.blog,
                    builder: (BuildContext context, GoRouterState state) {
                      return BlogPage(title:'blog');
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: 'blogpage',
                        name: RoutePathConstants.blogpage,
                        builder: (BuildContext context, GoRouterState state) {
                          return BlogPage(title:'blogpage');
                        },
                      ),
                    ]
                  ),
                ]),
            StatefulShellBranch(
                // navigatorKey:_faqNavigatorKey,
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
                // navigatorKey:_favNavigatorKey,
                routes: [
                  GoRoute(
                    path: '/favpage', // horoscope.
                    name: RoutePathConstants.favpage,
                    builder: (BuildContext context, GoRouterState state) {
                      return const FavouritePage();
                    },
                  ),
                ]),
          ],
        ),
      ],

    );
    return router;
  }

}

