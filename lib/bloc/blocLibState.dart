import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum colorEvent { to_Amber, to_lightBlue }

class colorBlocLib extends Bloc<colorEvent, Color> {
  colorBlocLib() : super(Colors.amber) {
    Color _color = Colors.amber;

    on<colorEvent>((event, emit) {
      emit(_color = (event == colorEvent.to_Amber) ? Colors.amber : Colors.lightBlue);
    }
    );
  }
}
