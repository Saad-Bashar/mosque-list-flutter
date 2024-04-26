import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mosque_list_app/data/models/mosque.dart';
import 'package:mosque_list_app/data/repositories/mosque_respository.dart';

part 'mosque_event.dart';
part 'mosque_state.dart';

class MosqueBloc extends Bloc<MosqueEvent, MosqueState> {
  final MosqueRepository _mosqueRepository;

  MosqueBloc(this._mosqueRepository) : super(MosqueInitial()) {
    on<FetchMosques>(_onFetchMosques);
  }

  Future<void> _onFetchMosques(
    FetchMosques event,
    Emitter<MosqueState> emit,
  ) async {
    try {
      emit(MosqueLoading());
      final mosques = await _mosqueRepository.getMosques();
      emit(MosqueLoaded(mosques: mosques));
    } catch (e) {
      emit(MosqueError(message: e.toString()));
    }
  }
}
