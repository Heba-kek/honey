import 'package:honey/Domain/Medicine/Entities/AddMedicineEntity.dart';

class UpdateMedicineEntity {
  UpdateMedicineEntity(
    this.code,
    this.oldTime,
    this.newTime,
    this.isNeed,
    this.msg,
  );

  final String code;
  final List<Appointement> oldTime;
  final List<Appointement> newTime;
  final bool isNeed;
  final String msg;
}
