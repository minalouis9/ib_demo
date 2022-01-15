import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ib_demo/controllers/controllers_index.dart';

final appThemeProvider = ChangeNotifierProvider<AppThemeController>((ref) => AppThemeController());