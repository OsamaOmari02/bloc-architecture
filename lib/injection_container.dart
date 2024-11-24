import 'package:bloc_architecture/features/shared/cubits/cities/cities_cubit.dart';
import 'package:bloc_architecture/features/shared/repositories/cities_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory<CitiesCubit>(() {
    final cancelToken = CancelToken();
    final repository = CitiesRepository(cancelToken: cancelToken);
    return CitiesCubit(
      citiesRepository: repository,
      cancelToken: cancelToken,
    );
  });
}
