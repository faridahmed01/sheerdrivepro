class APIEndPoint {
  final String url;
  final String method;
  final bool requireAuth;

  const APIEndPoint(
      this.url, {
        required this.method,
        required this.requireAuth,
      });
}
