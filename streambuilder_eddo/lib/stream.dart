import 'dart:math';

class NumberStream{
  Stream<int> getNumberStream() async* {
   yield* Stream.periodic(Duration(seconds: 1), (int t) {
      Random random = Random();
      int myNum = random.nextInt(10);
      return myNum;
    });
  }
}
