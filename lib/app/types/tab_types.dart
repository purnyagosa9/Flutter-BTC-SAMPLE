import 'package:flutter/cupertino.dart';

enum TabType { bitcoin, convert }

extension TabItem on TabType {
  Icon get icon {
    switch (this) {
      case TabType.bitcoin:
        return const Icon(CupertinoIcons.bitcoin, size: 25);
      case TabType.convert:
        return const Icon(CupertinoIcons.arrow_2_circlepath, size: 25);
    }
  }

  String get title {
    switch (this) {
      case TabType.bitcoin:
        return "Bitcoin";
      case TabType.convert:
        return "Convert";
    }
  }
}
