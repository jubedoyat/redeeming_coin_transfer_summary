import 'package:flutter/material.dart';

final customTheme = ThemeData(
  fontFamily: 'SFProDisplay',
  useMaterial3: true,

    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255,47,0,49),
      background: const Color.fromARGB(255,47,0,49),
      primary: const Color.fromARGB(255,59,0,69),
      secondary: const Color.fromARGB(255,189,178,189),
      tertiary: const Color.fromARGB(255,153,127,157),
      onPrimaryContainer: const Color.fromARGB(255,242,0,253),
      onSecondaryContainer: const Color.fromARGB(255,164,0,255),
      onTertiaryContainer: const Color.fromARGB(255,42,0,47),
      shadow: const Color.fromARGB(255, 68, 44, 73),
      brightness: Brightness.dark,
    ),

    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStatePropertyAll<TextStyle>(
          TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'SFProDisplay',
          ),
        )
      )
    ),

    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 28,
        fontFamily: 'SFProDisplay',
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255,152,127,156),
        fontFamily: 'SFProDisplay',
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Color.fromARGB(255,189,178,189),
        fontFamily: 'SFProDisplay',
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontFamily: 'SFProDisplay',
      ),
      bodySmall: TextStyle(
        fontSize: 15,
        color: Colors.white,
        fontFamily: 'SFProDisplay',
      ),
      headlineSmall: TextStyle(
        fontSize: 12,
        color: Colors.black45,
        fontFamily: 'SFProDisplay',
      ),
      displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'SFProDisplay',
      ),
    ),
);