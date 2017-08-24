class Vec3 {

  num x, y, z;
  num _normal, _magnitude;

  Vec3()
      : x = 0,
        y = 0,
        z = 0;
  Vec3(num v)
      : x = v,
        y = v,
        z = v;
  Vec3(num x, num y, num z)
      : x = x,
        y = y,
        z = z;

  num get magnitude {
    _magnitude ??= (x * x + y * y + z * z);
    return _magnitude;
  }
  num get normal {
    if (normal != null) return normal;
    num div = (this.magnitude == 0) ? num.INFINITY : 1.0 / this.magnitude;
    return div * this;
  }

  operator +(v) => new Vec3(x + v, y + v, z + v);
  operator *(v) => new Vec3(x * v, y * v, z * v);
  operator -(v) => new Vec3(x - v, y - v, z - v);

  static dotProduct(Vec3 v1, Vec3 v2) =>
      (v1.x * v2.x + v1.y * v2.y + v1.z * v2.z);
  static crossProduct(Vec3 v1, Vec3 v2) => (new Vec3(v1.y * v2.z - v1.z * v2.y,
      v1.z * v2.x - v1.x * v2.z, v1.x * v2.y - v1.y * v2.x));
}
