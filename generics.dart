import 'dart:math';

void main(List<String> arguments) {
  const t1 = Tuple(1, 2, 3);
  const t2 = Tuple(4,5,6);
  const t3 = Tuple('a', 'b', 'c');

  var stackInt = Stack<int>();
  var stackString = Stack<String>();
  print(stackInt.peak);

  stackString.push('2');
  stackString.push('3');
  stackString.push('4');
  if(stackString.canPop) {
    stackString.pop();
  }

  print(stackString.peak);

  var list = ['a', 'b'];
  print(Utils.getItem(list, 0));

  print('#1 - sqrt(4) -> ${sqrt(4)}');
  print('#2 - multiply(15,20) -> ${15 * 10}');
  print('#3 - sum(20,5) -> ${20 + 5}');
  Future.delayed(const Duration(seconds: 5),
      () => print('#4 - multiply(4,3) -> ${4 * 3}'));

  print('#5 - difference(20,5) -> ${20 - 5}');
}

class Tuple<E> {

  final E? _a;
  final E? _b;
  final E? _c;

  E? get first => _a;
  E? get second => _b;
  E? get third => _c;

  const Tuple(this._a, this._b, this._c);
  Tuple.fromList(List<E> list) :
      _a = list.asMap().containsKey(0) ? list[0] : null,
        _b = list.asMap().containsKey(1) ? list[1] : null,
        _c = list.asMap().containsKey(2) ? list[2] : null;

  Tuple<num> operator +(Tuple<num> t) {
    if(this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! + t._a!, thisAsTupleNum._b! + t._b!,
          thisAsTupleNum._c! + t._c!);

    }
    return const Tuple(0, 0, 0);


  }

  Tuple<num> operator -(Tuple<num> t) {
    if(this is Tuple<num>) {
      final thisAsTupleNum = this as Tuple<num>;
      return Tuple(thisAsTupleNum._a! - t._a!, thisAsTupleNum._b! - t._b!,
          thisAsTupleNum._c! - t._c!);

    }
    return const Tuple(0, 0, 0);


  }

  @override
  String toString() => 'Tuple(first: $first, second: $second, three: $third)';




  }

  class Stack<T> {
        final List<T> _stack = [];

        T get peak => _stack.last;
        bool get canPop => _stack.isNotEmpty;
        int get length => _stack.length;

        T pop() {
          final T last = _stack.last;
          _stack.removeLast();
          return last;
        }

        void push(T value) => _stack.add(value);

  }


  class Utils {
    static T? getItem<T>(List<T>? list, int index) =>
        list!.asMap().containsKey(index) ? list[index] : null;


  }


