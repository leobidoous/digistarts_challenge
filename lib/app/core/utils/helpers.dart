import 'package:digistarts_challenge/app/core/enums/window_mode.dart';

class Helpers {
  static WindowMode getWindowMode(double width) {
    if (width <= WindowMode.phone.size) {
      return WindowMode.phone;
    } else if (width > WindowMode.phone.size &&
        width <= WindowMode.tabletPortrait.size) {
      return WindowMode.tabletPortrait;
    } else if (width > WindowMode.tabletPortrait.size &&
        width <= WindowMode.tabletLandscape.size) {
      return WindowMode.tabletLandscape;
    } else if (width > WindowMode.tabletLandscape.size &&
        width <= WindowMode.desktop.size) {
      return WindowMode.desktop;
    } else {
      return WindowMode.desktopLarge;
    }
  }
}
