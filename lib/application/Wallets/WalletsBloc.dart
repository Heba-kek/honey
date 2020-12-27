import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Wallets/WalletsRepository.dart';
import 'package:honey/Infrastructure/Wallets/Repository/WalletsRepositoryIMPL.dart';
import 'package:honey/application/Wallets/bloc.dart';

class WalletsBloc extends Bloc<WalletsEvent, WalletState> {
  final WalletsRepository walletsRepository = WalletRepositoryIMPL();
  WalletsBloc() : super(Empty());

  WalletState get initialState => Empty();

  @override
  Stream<WalletState> mapEventToState(WalletsEvent event) async* {
    if (event is GetWalletTypesEvent) {
      yield Loading();

      try {
        final result = await walletsRepository.getWalletTypes();
        yield GetWalletTypeLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetWalletsEvent) {
      yield Loading();

      try {
        final result = await walletsRepository.getWallets();
        yield GetWalletsLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is GetWalletDetailsEvent) {
      yield Loading();

      try {
        final result = await walletsRepository.getWalletDetails(event.toMap());
        yield GetWalletDetailsLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is AddWalletEvent) {
      yield Loading();

      try {
        final result = await walletsRepository.addWallet(event.toMap());
        yield Loaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is UpdateWalletEvent) {
      yield Loading();

      try {
        final result = await walletsRepository.updateWallet(event.toMap());
        yield Loaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is DeleteWalletEvent) {
      yield Loading();

      try {
        final result = await walletsRepository.deleteWallet(event.toMap());
        yield Loaded(basicSuccessEntity: result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else if (event is WalletDetailsReportEvent) {
      yield Loading();

      try {
        final result = await walletsRepository.walletReport(event.toMap());
        yield GetWalletDetailsReportLoaded(result);
      } catch (e) {
        yield Error(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    } else {
      yield initialState;
    }
  }
}
