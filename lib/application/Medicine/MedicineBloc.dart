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

  MedicineBloc(MedicineState initialState) : super(initialState);

  @override
  MedicineState get initialState => Empty();

  @override
  Stream<MedicineState> mapEventToState(MedicineEvent event) async* {
    if (event is GetMedicineInstructionEvent) {
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
    } else if (event is AddMedicineEvent) {
      yield Loading();
      try {
        final result = await _medicineRepository.addMedicine(event.toMap());
        yield AddMedicineLoaded(addMedicineEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetMedicineBySickNameEvent) {
      yield Loading();
      try {
        final result =
            await _medicineRepository.getMedicineBySickName(event.toMap());
        yield GetMedicineBySickNameLoaded(medicinesBySickNameEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetSickNameEvent) {
      yield Loading();
      try {
        final result = await _medicineRepository.getSickName();
        yield GetSickNameLoaded(sickNameEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetMedicineReportEvent) {
      yield Loading();
      try {
        final result =
            await _medicineRepository.getMedicineReport(event.toMap());
        yield GetMedicineReportLoaded(medicineReportEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is UpdateMedicineEvent) {
      yield Loading();
      try {
        final result = await _medicineRepository.updateMedicine(event.toMap());
        yield UpdateMedicineLoaded(updateMedicineEntity: result);
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
