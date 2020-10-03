import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Banks/BanksRepository.dart';
import 'package:honey/Infrastructure/Banks/BanksRepositoryIMP/BanksRepositoryIMP.dart';
import 'package:honey/application/Banks/bloc.dart';

class BanksBloc extends Bloc<BanksEvent, BanksState> {
  final BanksRepository banksRepository = BanksRepositoryIMPL();

  BanksBloc(BanksState initialState) : super(initialState);

  @override
  BanksState get initialState => Empty();

  @override
  Stream<BanksState> mapEventToState(BanksEvent event) async* {
    if (event is AddAccountEvent) {
      yield Loading();

      try {
        final result = await banksRepository.addAccount(event.toMap());
        yield Loaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GETBanksAccountEvent) {
      yield Loading();

      try {
        final result = await banksRepository.getBanksAccount();
        yield GETBanksAccountsLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is AddCommissionEvent) {
      yield Loading();

      try {
        final result = await banksRepository.addCommission(event.toMap());
        yield Loaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GETBankAccountReportEvent) {
      yield Loading();

      try {
        final result = await banksRepository.getAccountReport();
        yield GETBankAccountsReportLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is DeleteBankAccountEvent) {
      yield Loading();

      try {
        final result = await banksRepository.deleteAccount(event.toMap());
        yield Loaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is UpdateBankAccountEvent) {
      yield Loading();

      try {
        final result = await banksRepository.updateAccount(event.toMap());
        yield Loaded(result);
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
