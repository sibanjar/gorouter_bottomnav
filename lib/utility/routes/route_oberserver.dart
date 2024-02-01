import 'package:flutter/cupertino.dart';

class RouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // This method is called when a new route is pushed onto the navigator.
    // Perform any necessary actions or update UI based on the route change.
    debugPrint('*** Push ***: ${route.settings.name}');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    // This method is called when a route is popped from the navigator.
    // Perform any necessary actions or update UI based on the route change.
    debugPrint('*** Pop ***: ${route.settings.name}');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    debugPrint('*** Removed ***: ${route.settings.name}');
  }

// Other overridden methods for different navigation events can be added here.
}