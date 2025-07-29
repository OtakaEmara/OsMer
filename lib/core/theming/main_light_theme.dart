import 'package:flutter/material.dart';
import 'package:osmer/core/theming/main_colors.dart';

ThemeData lightTheme = ThemeData.light().copyWith(

    appBarTheme: AppBarTheme(
      elevation: 0,
      actionsIconTheme: IconThemeData(
        color: MainColors.black
      ),
      backgroundColor: MainColors.white,
      surfaceTintColor: MainColors.white,
    ),

    scaffoldBackgroundColor: MainColors.white,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: MainColors.white,
    ),

    textSelectionTheme: TextSelectionThemeData(
      cursorColor: MainColors.mainCyan,
      selectionColor: MainColors.mainCyan,
      selectionHandleColor: MainColors.mainCyan,
    ),

    // timePickerTheme: TimePickerThemeData(
    //     backgroundColor: DefaultColors.lightDarkGrey,
    //     inputDecorationTheme: InputDecorationTheme(
    //       border: OutlineInputBorder(),
    //       focusedBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: DefaultColors.mainCyan),  // Uses primary color
    //       ),
    //       enabledBorder: OutlineInputBorder(
    //         borderSide: BorderSide(color: DefaultColors.lightDarkGrey),
    //       ),
    //       contentPadding: const EdgeInsets.symmetric(vertical: 8), // Default padding
    //     ),
    //     dialHandColor: DefaultColors.mainCyan,
    //     dialTextColor: DefaultColors.white,
    //     hourMinuteTextColor: DefaultColors.white,
    //     hourMinuteColor: WidgetStateColor.resolveWith((states) =>
    //     states.contains(WidgetState.selected) ? DefaultColors.mainCyan : DefaultColors.lightDarkGrey),
    //     entryModeIconColor: DefaultColors.mainCyan,
    //     dayPeriodTextColor: DefaultColors.white,
    //     dayPeriodColor: DefaultColors.mainCyan,
    //     confirmButtonStyle: ButtonStyle(
    //       foregroundColor: WidgetStateProperty.all(DefaultColors.mainCyan),
    //     ),
    //     cancelButtonStyle: ButtonStyle(
    //       foregroundColor: WidgetStateProperty.all(DefaultColors.lighterShadeGrey),
    //     )
    // ),

    datePickerTheme: DatePickerThemeData(
        backgroundColor: MainColors.white,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: MainColors.mainCyan),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MainColors.mainCyan),  // Uses primary color
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MainColors.lightDarkGrey),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10), // Default padding
        ),
        surfaceTintColor: Colors.transparent,
        headerForegroundColor: MainColors.mainCyan,
        todayForegroundColor: WidgetStateColor.resolveWith((states) =>
        states.contains(WidgetState.selected) ? MainColors.white : MainColors.mainCyan),
        todayBackgroundColor: WidgetStateColor.resolveWith((states) =>
        states.contains(WidgetState.selected) ? MainColors.mainCyan : MainColors.white),
        dayForegroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.selected)) {
            return MainColors.white;
          }
          return null;
        }),

        dayBackgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.selected)) {
            return MainColors.mainCyan;
          }
          return null;
        }),
        confirmButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(MainColors.mainCyan),
          overlayColor: WidgetStateProperty.all(MainColors.white),
        ),
        cancelButtonStyle: ButtonStyle(
          foregroundColor: WidgetStateProperty.all(MainColors.lighterShadeGrey),
          overlayColor: WidgetStateProperty.all(MainColors.white),
        )
    )
);