class LocalNotification {
  final int id;
  final String? title;
  final String? body;
  final String? payload;

  LocalNotification({
    required this.id,
    this.title,
    this.body,
    this.payload,
  });
}
