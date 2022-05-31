import 'package:mult_love/features/seasons/data/models/season.dart';
import 'package:mult_love/features/seasons/data/sources/seasons_source.dart';

abstract class ISeasonsRepository {
  Future<List<Season>> getSeasons({
    required String serialLink,
  });
}

class SeasonsRepository implements ISeasonsRepository {
  final SeasonsSource seasonsSource;

  SeasonsRepository({
    required this.seasonsSource,
  });

  @override
  Future<List<Season>> getSeasons({
    required String serialLink,
  }) =>
      seasonsSource.getSeasons(
        serialLink: serialLink,
      );
}
