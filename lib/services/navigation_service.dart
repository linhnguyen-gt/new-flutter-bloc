import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class NavigationService {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}
