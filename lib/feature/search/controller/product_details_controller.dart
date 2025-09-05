import 'package:flutter_riverpod/flutter_riverpod.dart';

enum SelectColor { red, black, yellow }

final colorProvider = StateProvider<SelectColor>((ref) => SelectColor.yellow);

enum SelectSize { Small, medium, large }

final sizeProvider = StateProvider<SelectSize>((ref) => SelectSize.Small);
