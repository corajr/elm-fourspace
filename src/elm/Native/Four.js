Elm.Native.Four = {};
Elm.Native.Four.make = function(elm) {
  elm.Native = elm.Native || {};
  elm.Native.Four = elm.Native.Four || {};
  if (elm.Native.Four.values) return elm.Native.Four.values;

  var Utils = Elm.Native.Utils.make(elm);

  var MJS_FLOAT_ARRAY_TYPE = Float32Array;

  var Four = {};

  Four.concatColumns = function(a,b,c,d) {
    return new MJS_FLOAT_ARRAY_TYPE([a[0], b[0], c[0], d[0],
                                     a[1], b[1], c[1], d[1],
                                     a[2], b[2], c[2], d[2],
                                     a[3], b[3], c[3], d[3]]);
  };

  Four.cross4 = function cross4(u,v,w) {
    var r = new MJS_FLOAT_ARRAY_TYPE(4),
        a = (v[0] * w[1]) - (v[1] * w[0]),
        b = (v[0] * w[2]) - (v[2] * w[0]),
        c = (v[0] * w[3]) - (v[3] * w[0]),
        d = (v[1] * w[2]) - (v[2] * w[1]),
        e = (v[1] * w[3]) - (v[3] * w[1]),
        f = (v[2] * w[3]) - (v[3] * w[2]);

    r[0] =   (u[1] * f) - (u[2] * e) + (u[3] * d);
    r[1] = - (u[0] * f) + (u[2] * c) - (u[3] * b);
    r[2] =   (u[0] * e) - (u[1] * c) + (u[3] * a);
    r[3] = - (u[0] * d) + (u[1] * b) - (u[2] * a);

    return r;
  };

  Four.toList = function toList(v) {
    return Utils.list(v);
  };

  return {
    cross4: F3(Four.cross4),
    concatColumns: F4(Four.concatColumns),
    toList: Four.toList
  };
};
