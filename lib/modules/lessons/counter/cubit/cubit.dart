import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/modules/lessons/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(CounterInitialState());
  //هاذ من اجل ان يكون اسهل عند استخدامة في اماكن كثير
  static CounterCubit get(context) => BlocProvider.of(context);
  //هذا شكل الكيوبت ويجب الاتفاق عليه
  //////////////////////////////////
  int counter = 0;
  void minus() {
    counter--;
    emit(CounterMinusState(counter)); //غير الحالة
  }

  void plus() {
    counter++;
    emit(CounterPlusState(counter));
  }
}
