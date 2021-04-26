class Pair<T, R> {
  Pair(this.left, this.right);

  final T left;
  final R right;

  @override
  String toString() => 'Pair[$left, $right]';
}