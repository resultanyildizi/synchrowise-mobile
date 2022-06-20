class DurationAdapter {
  static Duration fromMilliseconds(int milliseconds) {
    final hour = (milliseconds / 1000 / 60 / 60).floor();
    final minute = ((milliseconds / 1000 / 60) % 60).floor();
    final second = ((milliseconds / 1000) % 60).floor();
    final millisecond = (milliseconds % 1000).floor();

    return Duration(
        hours: hour,
        minutes: minute,
        seconds: second,
        milliseconds: millisecond);
  }
}
