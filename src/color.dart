class Color {
  final r, g, b;
  static final white = new Color(1.0, 1.0, 1.0);
  static final grey = new Color(0.5, 0.5, 0.5);
  static final black = new Color(0.0, 0.0, 0.0);
  Color(num r, num g, num b)
      : r = r,
        g = g,
        b = b;
  static scale(num k, Color v) => new Color(k * v.r, k * v.g, k * v.b);
  static plus(Color v1, Color v2) =>
      new Color(v1.r + v2.r, v1.g + v2.g, v1.b + v2.b);
  static times(Color v1, Color v2) =>
      new Color(v1.r * v2.r, v1.g * v2.g, v1.b * v2.b);
  static final background = Color.black;
  static final defaultColor = Color.black;
  num _safetyCheck(d) => (d > 1) ? 1 : d;
  Vec3 get RGBValue => new Vec3(
      _safetyCheck(r) * 255, _safetyCheck(g) * 255, _safetyCheck(b) * 255);
}
