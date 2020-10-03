import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:honey/application/Auth/Iconstate.dart';
import 'package:honey/application/Auth/categoryEvent.dart';
import 'package:honey/domain/Auth/cateReposi.dart';

class IconBloc extends Bloc<CateEvent, IconState> {
  IconRepository _IconRepository;

  IconBloc(this._IconRepository) : super(null);

  @override
  IconState get initialState => EmptyI();

  @override
  Stream<IconState> mapEventToState(CateEvent event) async* {
    if (event is CategoryEvent) {
      yield LoadingI();

      try {
        final result = await _IconRepository.getIconExpen(event.toMap());
        yield LoadedI(IconResponse: result);
      } catch (e) {
        yield ErrorI(
          e.toString(),
          () {
            this.add(event);
          },
        );
      }
    }
  }
}
