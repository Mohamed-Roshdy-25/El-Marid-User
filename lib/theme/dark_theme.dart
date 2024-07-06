import 'package:flutter/material.dart';
import 'package:flutter_sixvalley_ecommerce/di_container.dart' as di;
import 'package:flutter_sixvalley_ecommerce/features/app_color/cubit/app_color_cubit.dart';

ThemeData dark = ThemeData(
  fontFamily: 'TitilliumWeb',
  primaryColor: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.primary!.replaceAll('#', '0xff'))) : const Color(0xFF1455AC),
  brightness: Brightness.dark,
  highlightColor: const Color(0xFF252525),
  hintColor: const Color(0xFFc7c7c7),
  cardColor: const Color(0xFF242424),
  scaffoldBackgroundColor: const Color(0xFF000000),
  splashColor: Colors.transparent,
  colorScheme : ColorScheme.dark(
    primary: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.primary!.replaceAll('#', '0xff'))) :  Color(0xFF1455AC),
    secondary: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.secondary!.replaceAll('#', '0xff'))) :  Color(0xFF78BDFC),
    tertiary: Color(0xFF865C0A),
    tertiaryContainer: Color(0xFF6C7A8E),
    background: Color(0xFF2D2D2D),
    onPrimary: di.sl<AppColorCubit>().appColor != null ? Color(int.parse(di.sl<AppColorCubit>().appColor!.color!.primaryLight!.replaceAll('#', '0xff'))) :  Color(0xFFB7D7FE),
    onTertiaryContainer: Color(0xFF0F5835),
    primaryContainer: Color(0xFF208458),
    onSecondaryContainer: Color(0x912A2A2A),
    outline: Color(0xff2C66B4),
    onTertiary: Color(0xFF545252),
    secondaryContainer: Color(0xFFF2F2F2),),
  textTheme: const TextTheme(bodyLarge: TextStyle(color: Color(0xFFE9EEF4))),

  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: ZoomPageTransitionsBuilder(),
    TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
    TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
  }),
);
