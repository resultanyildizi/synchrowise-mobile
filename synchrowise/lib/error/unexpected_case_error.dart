class UnexpectedCaseError extends Error {
  final String message;

  UnexpectedCaseError(this.message);

  @override
  String toString() => "There is an unexpected case: $message";
}
