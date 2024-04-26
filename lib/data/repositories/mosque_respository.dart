import 'package:mosque_list_app/data/dataproviders/mosque_api_provider.dart';
import 'package:mosque_list_app/data/models/mosque.dart';

class MosqueRepository {
  final MosqueApiProvider apiProvider;

  MosqueRepository({required this.apiProvider});

  Future<List<Mosque>> getMosques() async {
    final jsonResponse = await apiProvider.fetchMosques();
    return jsonResponse.map<Mosque>((json) => Mosque.fromJson(json)).toList();
  }
}
