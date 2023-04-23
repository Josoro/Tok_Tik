import 'package:clone_tok_tik/presentation/providers/discover_provider.dart';
import 'package:clone_tok_tik/presentation/screens/discover/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   //2
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>DiscoverProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TokTik',
        theme: AppTheme().getTheme() ,
        home: const DiscoverScreen()
      ),
    );
  }
}
