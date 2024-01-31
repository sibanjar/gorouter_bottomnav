
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:gorouter_bottomnav/blog_page.dart';
import 'package:gorouter_bottomnav/favourite/sub_fav/fourth_fav.dart';
import 'package:gorouter_bottomnav/favourite/sub_fav/second_fav.dart';
import 'package:gorouter_bottomnav/favourite/sub_fav/third_fav.dart';
import 'package:gorouter_bottomnav/home/sub_home1.dart';
import 'package:gorouter_bottomnav/home/sub_home2.dart';
import 'package:gorouter_bottomnav/home/subhome/sub_home1_1.dart';
import 'package:gorouter_bottomnav/home/subhome/sub_home2_1.dart';
import 'package:gorouter_bottomnav/favourite/favourite_page.dart';
import 'package:gorouter_bottomnav/navbar.dart';
import 'package:gorouter_bottomnav/search/search_page.dart';
import 'package:gorouter_bottomnav/utility/routes/route_names.dart';
import 'package:gorouter_bottomnav/wallet/wallet_page.dart';
import '../../home/subhome/sub_home_child/sub_home1_2.dart';
import '../../home/home_page.dart';
import '../../settings/setting.dart';

class AppRouter{
  final GlobalKey<NavigatorState> _rootNavigatorKey =  GlobalKey<NavigatorState>();
  // final GlobalKey<NavigatorState> _homeNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellHome');
  // final GlobalKey<NavigatorState> _faqNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellFaq');
  // final GlobalKey<NavigatorState> _favNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellFav');
  // final GlobalKey<NavigatorState> _blogNavigatorKey =  GlobalKey<NavigatorState>(debugLabel: 'shellBlog');

  GoRouter returnRouter(bool isAuth){
    GoRouter router = GoRouter(
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
                          path: 'home1',
                          name: RoutePathConstants.home1,
                          builder: (BuildContext context, GoRouterState state) {
                            return HomePage1();
                          },
                          routes: [
                            GoRoute(
                              path: 'home11',
                              name: RoutePathConstants.home11,
                              builder: (BuildContext context, GoRouterState state) {
                                return HomePageChild1();
                              },
                            ),
                            GoRoute(
                              path: 'home12',
                              name: RoutePathConstants.home12,
                              builder: (BuildContext context, GoRouterState state) {
                                return HomePageChild2();
                              },
                            ),
                          ]
                        ),
                        GoRoute(
                          path: 'home2',
                          name: RoutePathConstants.home2,
                          builder: (BuildContext context, GoRouterState state) {
                            return HomePage2();
                          },
                          routes: [
                            GoRoute(
                              path: 'home21',
                              name: RoutePathConstants.home21,
                              builder: (BuildContext context, GoRouterState state) {
                                return HomePagechild2();
                              },
                            ),
                          ]
                        ),
                        GoRoute(
                          parentNavigatorKey: _rootNavigatorKey,
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
              // navigatorKey:_favNavigatorKey,
                routes: [
                  GoRoute(
                    path: '/favpage', // horoscope.
                    name: RoutePathConstants.favpage,
                    builder: (BuildContext context, GoRouterState state) {
                      return const FavouritePage();
                    },
                    routes: [
                      GoRoute(
                        path: 'secondfav',
                        name: RoutePathConstants.secondfavpage,
                        builder: (BuildContext context, GoRouterState state) {
                          return const SecondFavouritePage();
                        },
                      ),
                      GoRoute(
                        path: 'thirdfav',
                        name: RoutePathConstants.thirdfavpage,
                        builder: (BuildContext context, GoRouterState state) {
                          return const ThirdFavouritePage();
                        },
                        routes: [
                          GoRoute(
                            parentNavigatorKey: _rootNavigatorKey,
                            path: 'fourthfav',
                            name: RoutePathConstants.fourthfavpage,
                            builder: (BuildContext context, GoRouterState state) {
                              return const FourthFavouritePage();
                            },
                          ),
                        ]
                      ),
                    ]
                  ),
                ]),
            StatefulShellBranch(
              // navigatorKey:_faqNavigatorKey,
                routes: [
                  GoRoute(
                    path: '/search',
                    name: RoutePathConstants.search,
                    builder: (BuildContext context, GoRouterState state) {
                      return const SearchPage();
                    },
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
                      return const BlogPage(title:'blog');
                    },
                    routes: [
                      GoRoute(
                        parentNavigatorKey: _rootNavigatorKey,
                        path: 'blogpage',
                        name: RoutePathConstants.blogpage,
                        builder: (BuildContext context, GoRouterState state) {
                          return const BlogPage(title:'blogpage');
                        },
                      ),
                    ]
                  ),
                ]),


          ],
        ),
      ],

    );
    return router;
  }

}

