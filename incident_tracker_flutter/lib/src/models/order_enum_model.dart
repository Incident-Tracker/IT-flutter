enum Order {
  NEWEST,
  POPULAR,
}

extension OrderExtention on Order {
  String getOrderStringName() {
    switch (this) {
      case Order.NEWEST:
        return '최신순';
      case Order.POPULAR:
        return '인기순';
      default:
        assert(false, 'Undefined Order Name');
        throw UnimplementedError();
    }
  }
}
