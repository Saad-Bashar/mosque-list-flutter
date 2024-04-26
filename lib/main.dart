import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mosque_list_app/data/dataproviders/mosque_api_provider.dart';
import 'package:mosque_list_app/data/repositories/mosque_respository.dart';
import 'package:mosque_list_app/presentation/pages/mosque_list_page.dart';

Future main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mosque Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RepositoryProvider(
        create: (context) => MosqueRepository(apiProvider: MosqueApiProvider()),
        child: const MosqueListPage(),
      ),
    );
  }
}
