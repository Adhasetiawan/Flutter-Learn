import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum colorEvent { to_Amber, to_lightBlue }

class colorBlocLib extends HydratedBloc<colorEvent, Color> {
  colorBlocLib() : super(Colors.amber) {

    on<colorEvent>((event, emit) {
      emit((event == colorEvent.to_Amber) ? Colors.amber : Colors.lightBlue);
    }
    );
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    try{
      return Color(json['color'] as int);
    }catch(_){
      return null;
    }
    throw UnimplementedError();
  }

  @override
  Map<String, int> toJson(Color state) {
    try{
      return{'color' : state.value};
    }catch(_){
      return null;
    }
    throw UnimplementedError();
  }
}
