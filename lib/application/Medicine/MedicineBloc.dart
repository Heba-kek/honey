import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Medicine/MedicineRepository.dart';
import 'package:honey/Infrastructure/Core/NetworkInfo.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedicineRemoteDataSource.dart';
import 'package:honey/Infrastructure/Medicine/DataSource/MedinceLocalDataSource.dart';
import 'package:honey/Infrastructure/Medicine/Repository/MedicineRepositoryIMPL.dart';
import 'package:honey/application/Medicine/MedicineEvent.dart';
import 'package:honey/application/Medicine/MedicineState.dart';

class MedicineBloc extends Bloc<MedicineEvent, MedicineState> {
  final MedicineRepository _medicineRepository = MedicineRepositoryIMPL(
      MedicineRemoteDataSource(),
      MedicineLocalDataSource(),
      NetworkInfoImpl(new DataConnectionChecker()));

  @override
  MedicineState get initialState => Empty();

  @override
  Stream<MedicineState> mapEventToState(MedicineEvent event) async* {
    if (event is GetMedicine) {
      yield Loading();

      try {
        final result = await _medicineRepository.medicine();
        yield Loaded(medicineResponse: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    }
  }
}
