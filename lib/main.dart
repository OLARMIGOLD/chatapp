import 'package:appwrite/appwrite.dart';
import 'package:chatapp/core/theme/custom_theme.dart';
import 'package:chatapp/provider/splashprovider.dart';
import 'package:chatapp/provider/theme_provider.dart';
import 'package:chatapp/view/widget/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding();
  Client().setProject("AppwriteConstant.projectId");
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ChangeNotifierProvider(create: (_) => Splashprovider()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: CustomTheme.light(),
      darkTheme: CustomTheme.dark(),
      themeMode: themeProvider.themeMode,
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
