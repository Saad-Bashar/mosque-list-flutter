import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mosque_list_app/buiseness_logic/bloc/mosque_bloc.dart';
import 'package:mosque_list_app/data/repositories/mosque_respository.dart';
import 'package:mosque_list_app/presentation/widgets/mosque_list_item.dart';

class MosqueListPage extends StatelessWidget {
  const MosqueListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nearby Mosques'),
      ),
      body: BlocProvider(
        create: (context) => MosqueBloc(
          RepositoryProvider.of<MosqueRepository>(context),
        )..add(FetchMosques()),
        child: BlocBuilder<MosqueBloc, MosqueState>(
          builder: (context, state) {
            if (state is MosqueLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is MosqueLoaded) {
              return ListView.builder(
                itemCount: state.mosques.length,
                itemBuilder: (context, index) =>
                    MosqueListItem(mosque: state.mosques[index]),
              );
            } else if (state is MosqueError) {
              return Center(
                  child: Text('Failed to fetch mosques: ${state.message}'));
            }
            return const Center(child: Text('Please wait...'));
          },
        ),
      ),
    );
  }
}
