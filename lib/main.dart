import 'package:flutter/material.dart';
import 'package:playground/my_app.dart';
import 'package:provider/provider.dart';

import 'application/theme_service.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
        create: (context) => ThemeService(), child: const MyApp()),
  );
}
