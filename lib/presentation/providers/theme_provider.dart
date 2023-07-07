import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkmodeProvider = StateProvider<bool>((ref) => false);

final colorListProvider = Provider<List<Color>>((ref) => colorList);

final selectedColorProvider = StateProvider<int>((ref) => 0);
