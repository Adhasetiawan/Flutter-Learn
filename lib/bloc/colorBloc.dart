import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum colorEvent { to_amber, to_lightBlue }

class colorBloc{
  Color _warna = Colors.amber;

  StreamController<colorEvent> _kontrolEvent = StreamController<colorEvent>();
  StreamSink<colorEvent> get eventSink => _kontrolEvent.sink;

  StreamController<Color> _kontrolState = StreamController<Color>();
  StreamSink<Color> get _stateSink => _kontrolState.sink;

  Stream<Color> get stateStream => _kontrolState.stream;

  void _mapEventToState(colorEvent ColorEvent){
    if(ColorEvent == colorEvent.to_amber){
      _warna = Colors.amber;
    }else{
      _warna = Colors.lightBlue;
    }

    _stateSink.add(_warna);
  }

  colorBloc(){
    _kontrolEvent.stream.listen(_mapEventToState);
  }

  void dispose(){
    _kontrolEvent.close();
    _kontrolState.close();
  }
}