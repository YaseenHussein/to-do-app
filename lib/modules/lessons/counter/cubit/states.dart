abstract class CounterStates {}

//هذا الكلاس سوف نبداء به السكرينة
class CounterInitialState extends CounterStates {}

class CounterPlusState extends CounterStates {
  int counter;
  CounterPlusState(this.counter);
}

class CounterMinusState extends CounterStates {
  //هذا في حالة نريد ان تكون الحالة تستقبل
  int counter;
  CounterMinusState(this.counter);
  /////
}
