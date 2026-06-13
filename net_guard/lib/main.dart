import 'package:flutter/material.dart';
import 'package:net_guard/view/navigator/main_dashboard.dart';
import 'package:provider/provider.dart';
import 'core/constants/app_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
      ],
      child: const NetworkSurveillanceApp(),
    ),
  );
}

class NetworkSurveillanceApp extends StatelessWidget {
  const NetworkSurveillanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CNIP Intelligence Platform',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      home: const MainDashboard(),
    );
  }
}
