import 'package:dio/dio.dart';
import 'package:bloc_architecture/features/shared/models/city_model.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../classes/base_cubit_class.dart';
import '../../repositories/cities_repository.dart';

part 'cities_state.dart';

class CitiesCubit extends BaseCubit<CitiesState> {
  CitiesCubit({
    required CitiesRepository citiesRepository,
    required CancelToken cancelToken,
  })  : _citiesRepository = citiesRepository,
        _cancelToken = cancelToken,
        super(CitiesInitial());

  final CitiesRepository _citiesRepository;
  final CancelToken _cancelToken;

  City? selectedCity;
  City? selectedSubCity;
  List<City> cities = [];

  Future<void> fetch() async {
    try {
      safeEmit(CitiesFetchLoading());
      cities = await _citiesRepository.fetch();
      safeEmit(CitiesFetchSuccess());
    } catch (e) {
      safeEmit(CitiesFetchFailure(errMessage: e.toString()));
    }
  }

  void changeCity(City city) {
    selectedCity = city;
    safeEmit(CityChange());
  }

  void reset() {
    selectedCity = null;
    selectedSubCity = null;
  }

  @override
  Future<void> close() {
    _cancelToken.cancel();
    return super.close();
  }
}
