import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mosque_list_app/data/models/mosque.dart';
import 'package:mosque_list_app/data/repositories/mosque_respository.dart';

part 'mosque_state.dart';

class MosqueCubit extends Cubit<MosqueState> {
  final MosqueRepository _mosqueRepository;

  MosqueCubit(this._mosqueRepository) : super(MosqueInitial());

  Future<void> fetchMosques() async {
    try {
      emit(MosqueLoading());
      final mosques = await _mosqueRepository.getMosques();
      emit(MosqueLoaded(mosques));
    } catch (e) {
      emit(MosqueError(e.toString()));
    }
  }
}
