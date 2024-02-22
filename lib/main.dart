import 'package:flutter/material.dart';
import 'package:expensetracker/widgets/expenses.dart';
import 'package:flutter/widgets.dart';

var ncolorScheme = ColorScheme.fromSeed(
  seedColor: Color.fromARGB(255, 101, 125, 245),
);
var nDarkScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: Color.fromARGB(255, 27, 6, 131),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(colorScheme: nDarkScheme),
      theme: ThemeData(
        useMaterial3: true,
        //scaffoldBackgroundColor: Color.fromARGB(255, 250, 203, 197),
        colorScheme: ncolorScheme,
        appBarTheme: AppBarTheme(
          backgroundColor: ncolorScheme.onPrimaryContainer,
          foregroundColor: ncolorScheme.primaryContainer,
        ),
        cardTheme: CardTheme().copyWith(
          color: ncolorScheme.secondaryContainer,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: ncolorScheme.primaryContainer,
          ),
        ),
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      themeMode: ThemeMode.system,
      home: Expenses(),
    ),
  );
}
