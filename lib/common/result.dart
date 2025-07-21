sealed class Result<T> {
  const Result();

  // Successful [Result], completed with [value]
  const factory Result.ok(T value) = Ok._;

  // Error [Result], completed with [error]
  const factory Result.error(Exception error) = Error._;
}

final class Ok<T> extends Result<T> {
  const Ok._(this.value);

  final T value;

  @override
  String toString() {
    return 'Result<$T>.ok($value)';
  }
}

final class Error<T> extends Result<T> {
  const Error._(this.error);

  final Exception error;

  @override
  String toString() {
    return 'Result<$T>.error($error)';
  }
}
