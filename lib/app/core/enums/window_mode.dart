enum WindowMode {desktopLarge, desktop, tabletLandscape, tabletPortrait, phone}

extension WindowModeExt on WindowMode {
  double get size {
    switch (this) {
      case WindowMode.desktopLarge:
        return 2400;
      case WindowMode.desktop:
        return 1200;
      case WindowMode.tabletLandscape:
        return 992;
      case WindowMode.tabletPortrait:
        return 768;
      case WindowMode.phone:
        return 600;
    }
  }
}