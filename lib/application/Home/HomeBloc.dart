import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/Domain/Home/HomeRepository.dart';
import 'package:honey/application/Home/bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;
  HomeBloc(this.homeRepository);

  @override
  HomeState get initialState => Empty();

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is GetHomeEvent) {
      yield Loading();

      try {
        final result = await homeRepository.getHome();
        yield GetHomeLoaded(result);
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
