import 'package:ev_charge_app/models/location.dart';
import 'package:ev_charge_app/services/api_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


abstract class LocationEvent {}

class FetchLocationsEvent extends LocationEvent {}


abstract class LocationState {}

class LocationInitial extends LocationState {}

class LocationsLoadedState extends LocationState {
  final List<Location> locations;

  LocationsLoadedState(this.locations);
}

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final ApiService apiService;

  LocationBloc({required this.apiService}) : super(LocationInitial());

  @override
  Stream<LocationState> mapEventToState(LocationEvent event) async* {
    if (event is FetchLocationsEvent) {
      try {
        final fetchedLocations = await apiService.fetchData('/locations');
        
        List<Location> locations = (fetchedLocations as List)
            .map((locationJson) => Location.fromJson(locationJson))
            .toList();
        yield LocationsLoadedState(locations);
      } catch (e) {
        yield LocationInitial();
        
      }
    }
   
  }
}
