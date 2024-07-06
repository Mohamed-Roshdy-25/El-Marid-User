import 'package:flutter/material.dart';
import 'package:flutter_sixvalley_ecommerce/di_container.dart' as di;
import 'package:flutter_sixvalley_ecommerce/features/app_color/cubit/app_color_cubit.dart';

ThemeData light = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.primary!.replaceAll('#', '0xff'))) : const Color(0xFF1455AC),
  brightness: Brightness.light,
  highlightColor: Colors.white,
  hintColor: const Color(0xFF9E9E9E),
  splashColor: Colors.transparent,
  colorScheme: ColorScheme.light(
    primary: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.primary!.replaceAll('#', '0xff'))) :  Color(0xFF1455AC),
    secondary: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.secondary!.replaceAll('#', '0xff'))) :  Color(0xFF004C8E),
    tertiary: Color(0xFFF9D4A8),
    tertiaryContainer: Color(0xFFADC9F3),
    onTertiaryContainer: Color(0xFF33AF74),
    onPrimary: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.primaryLight!.replaceAll('#', '0xff'))) :  Color(0xFF7FBBFF),
    background: Color(0xFFF4F8FF),
    onSecondary: Color(0xFFF88030),
    error: Color(0xFFFF5555),
    onSecondaryContainer: Color(0xFFF3F9FF),
    outline: Color(0xff2C66B4),
    onTertiary: Color(0xFFE9F3FF),


    primaryContainer: Color(0xFF9AECC6),secondaryContainer: Color(0xFFF2F2F2),),

  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);