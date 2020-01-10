class Util3D {
  public void Util3D() {
  }
  
  private void check_vector(PVector exp, PVector act) {
    String notMatch = null;
    if (Math.abs(exp.x - act.x) > 1e-6) {
      notMatch = "x";
    }
    if (Math.abs(exp.y - act.y) > 1e-6) {
      notMatch = "y";
    }
    if (Math.abs(exp.z - act.z) > 1e-6) {
      notMatch = "z";
    }
    if (notMatch != null) {
      throw new java.lang.UnsupportedOperationException(
          String.format("%s do not match: exp=%s, act=%s", notMatch, exp.toString(), act.toString()));
    }
  }

  private void check_equal(double exp, double act, String msg) {
    if (  ( Double.isNaN(exp) && !Double.isNaN(act))
        ||(!Double.isNaN(exp) &&  Double.isNaN(act))) {
      throw new java.lang.UnsupportedOperationException(
          String.format("%s: expected=%f, actual=%f", msg, exp, act));
    }
    if (Math.abs(exp - act) > 1e-6) {
      throw new java.lang.UnsupportedOperationException(
          String.format("%s: expected=%f, actual=%f", msg, exp, act));
    }
  }

  private PVector[] translateAbc0ToAbc(PVector a0, PVector b0, PVector c0) {
    PVector a = new PVector(0,0,0);
    PVector b = PVector.sub(b0, a0);
    PVector c = PVector.sub(c0, a0);
    PVector [] ret = new PVector [] { a, b, c };
    return ret;
  }

  /////////////////////////////////////////
  // Compute intersection of the plane y = K with the line "ab", defined by two
  // points ("a" and "b"). From intersection coordinates (x, z) only one
  // coordinate (z) is returned
  /////////////////////////////////////////
  private float lineEquationFindZbyY(PVector a, PVector b, float y) {

    //float dz = b.z - a.z;
    //float dx = b.x - a.x;
    //float dy = b.y - a.y;
    // below is same as above
    PVector dXYZ = PVector.sub(b, a);

    if (Math.abs(dXYZ.y) < 1e-6) {
      // special case - line is parallel to plane y = K - infinitive number of
      // solutions exists in case line is has always y = K or no solutions
      // exists otherwise
      return Float.NaN;
    }

    float z = dXYZ.z / dXYZ.y * y + a.z - dXYZ.z / dXYZ.y * a.y;
    return z;
  }

  /////////////////////////////////////////
  // Compute intersection of the plane x = K with the line "ab", defined by two
  // points ("a" and "b"). From intersection coordinates (y, z) only one
  // coordinate (y) is returned
  /////////////////////////////////////////
  private float lineEquationFindYbyX(PVector a, PVector b, float x) {

    //float dz = b.z - a.z;
    //float dx = b.x - a.x;
    //float dy = b.y - a.y;
    // below is same as above
    PVector dXYZ = PVector.sub(b, a);

    if (Math.abs(dXYZ.x) < 1e-6) {
      // special case - line is parallel to plane x = K - infinitive number of
      // solutions exists in case line is has always x = K or no solutions
      // exists otherwise
      return Float.NaN;
    }

    // Version in my notes - "pryamaja (2)"
    float y = dXYZ.y / dXYZ.x * x + a.y - dXYZ.y / dXYZ.x * a.x;
    return y;
  }

  /////////////////////////////////////////
  // Compute intersection of the plane y = K with the line "ab", defined by two
  // points ("a" and "b"). From intersection coordinates (x, z) only one
  // coordinate (x) is returned
  /////////////////////////////////////////
  private float lineEquationFindXbyY(PVector a, PVector b, float y) {

    //float dz = b.z - a.z;
    //float dx = b.x - a.x;
    //float dy = b.y - a.y;
    // below is same as above
    PVector dXYZ = PVector.sub(b, a);

    if (Math.abs(dXYZ.y) < 1e-6) {
      // special case - line is parallel to plane y = K - infinitive number of
      // solutions exists in case line is has always y = K or no solutions
      // exists otherwise
      return Float.NaN;
    }

    // Version in my notes - "pryamaja (2) - transformed version, x=f(y)"
    //float x = (y - a.y + dXYZ.y / dXYZ.x * a.x) * dXYZ.x / dXYZ.y;
    // Converted version - to avoid "division by 0" if dXYZ.x = 0
    float x = (y - a.y) * dXYZ.x / dXYZ.y + a.x;
    return x;
  }

  /////////////////////////////////////////
  // Compute intersection of the plane x = K with the line "ab", defined by two
  // points ("a" and "b"). From intersection coordinates (y, z) only one
  // coordinate (z) is returned
  /////////////////////////////////////////
  private float lineEquationFindZbyX(PVector a, PVector b, float x) {

    //float dz = b.z - a.z;
    //float dx = b.x - a.x;
    //float dy = b.y - a.y;
    // below is same as above
    PVector dXYZ = PVector.sub(b, a);

    if (Math.abs(dXYZ.x) < 1e-6) {
      // special case - line is parallel to plane x = K - infinitive number of
      // solutions exists in case line is has always x = K or no solutions
      // exists otherwise
      return Float.NaN;
    }

    // Version in my notes - "pryamaja (3)"
    float z = dXYZ.z / dXYZ.x * x + a.z - dXYZ.z / dXYZ.x * a.x;
    return z;
  }

  /////////////////////////////////////////
  // test if utils are valid and consistent
  /////////////////////////////////////////
  public void testUtil3D() {
    System.out.println("test");

    PVector []abc = null;

    // translateAbc0ToAbc test#1
    abc = translateAbc0ToAbc(new PVector(2,0,0), new PVector(4,2,0), new PVector(2.3,1.8,0));
    check_vector(new PVector(0,0,0), abc[0]);
    check_vector(new PVector(2,2,0), abc[1]);
    check_vector(new PVector(0.3,1.8,0), abc[2]);

    // translateAbc0ToAbc test#2
    abc = translateAbc0ToAbc(new PVector(2,-1,2), new PVector(3,-2,-1), new PVector(1,1,-1));
    check_vector(new PVector(0,0,0), abc[0]);
    check_vector(new PVector(1,-1,-3), abc[1]);
    check_vector(new PVector(-1,2,-3), abc[2]);

    PVector a = null;
    PVector b = null;
    PVector r = null;
    float tmp;

    // test lineEquationFindZbyY

    // check_Z_by_Y_1
    a = new PVector(2,0,0);
    b = new PVector(2,1,1);
    r = new PVector(2,2,2); // expected by y = 2
    check_equal(r.z, lineEquationFindZbyY(a, b, r.y),
        "z differs");
    check_equal(r.x, lineEquationFindXbyY(a, b, r.y),
        "x differs");
    tmp = 13.13; // can be any number
    check_equal(Float.NaN, lineEquationFindYbyX(a, b, tmp),
        "y differs");
    check_equal(Float.NaN, lineEquationFindZbyX(a, b, tmp),
        "z differs");

    // check_Z_by_Y_2
    a = new PVector(2,0.5,0);
    b = new PVector(1,0.5,2);
    r = new PVector(Float.NaN, 1, Float.NaN); // expected by y = 2
    tmp = lineEquationFindZbyY(a, b, r.y);
    check_equal(r.z, tmp,
        "z differs");
    //System.out.println(String.format("a=%s, b=%s, r=%s, tmp=%f", a.toString(), b.toString(), r.toString(), tmp));
    check_equal(r.x, lineEquationFindXbyY(a, b, r.y),
        "x differs");
    // [check_Y_by_X_1] - special "r" for NaN workaround
    r = new PVector(0.5,0.5,3);
    check_equal(r.y, lineEquationFindYbyX(a, b, r.x),
        "y differs");
    check_equal(r.z, lineEquationFindZbyX(a, b, r.x),
        "z differs");

    // check_Z_by_Y_3
    a = new PVector(3,1,1);
    b = new PVector(2,2,3);
    r = new PVector(1,3,5); // expected by y = 3
    tmp = lineEquationFindZbyY(a, b, r.y);
    check_equal(r.z, tmp,
        "z differs");
    //System.out.println(String.format("a=%s, b=%s, r=%s, tmp=%f", a.toString(), b.toString(), r.toString(), tmp));
    check_equal(r.x, lineEquationFindXbyY(a, b, r.y),
        "x differs");
    check_equal(r.y, lineEquationFindYbyX(a, b, r.x),
        "y differs");
    check_equal(r.z, lineEquationFindZbyX(a, b, r.x),
        "z differs");

    PVector c = null;
    
    PVector a0 = a;
    PVector b0 = b;
    PVector c0 = new PVector(5,5,5);
    PVector d = new PVector(4,1.5,4);
    PVector e = new PVector(6,1,5);
    r = intersectPlaneWithLineSelfmade(a0, b0, c0, d, e);
    PVector rtmp = b; // must intersect @ b
    check_vector(rtmp, r);

    PVector N;
    Util3DTrafo []trfs;

    N = new PVector(0.7,0,0.7);
    trfs = getTrfN2E(N);

    check_equal(Util3DTrafo.U3DT_TYP_ROTATE_X, trfs[0].trafoTyp, "trafoTyp[0] differs");
    check_equal(Math.PI*2, trfs[0].angRotateX, "angRotateX differs");

    check_equal(Util3DTrafo.U3DT_TYP_ROTATE_Y, trfs[1].trafoTyp, "trafoTyp[1] differs");
    check_equal(-Math.PI/4, trfs[1].angRotateY, "angRotateY differs");

    N = new PVector(0,0,-1);
    trfs = getTrfN2E(N);

    check_equal(Util3DTrafo.U3DT_TYP_ROTATE_X, trfs[0].trafoTyp, "trafoTyp[0] differs");
    check_equal(Math.PI, trfs[0].angRotateX, "angRotateX differs");

    check_equal(Util3DTrafo.U3DT_TYP_ROTATE_Y, trfs[1].trafoTyp, "trafoTyp[1] differs");
    check_equal(-Math.PI/2, trfs[1].angRotateY, "angRotateY differs");

  }

  private void assertNotNaN(PVector a, String where) {
    if (Float.isNaN(a.x)) {
      throw new java.lang.UnsupportedOperationException(
          "x is NaN @ " + where);
    }
    if (Float.isNaN(a.y)) {
      throw new java.lang.UnsupportedOperationException(
          "y is NaN @ " + where);
    }
    if (Float.isNaN(a.z)) {
      throw new java.lang.UnsupportedOperationException(
          "z is NaN @ " + where);
    }
  }

  public PVector intersectPlaneWithLineSelfmade(
        PVector a0,
        PVector b0,
        PVector c0,
        PVector d,
        PVector e
      ) {

    // translate a0,b0,c0->a,b,c
    //PVector aTrans = new PVector(-a0.x,-a0.y,-a0.z);
    PVector abc[] = translateAbc0ToAbc(a0, b0, c0);
    PVector a = abc[0];
    PVector b = abc[1];
    PVector c = abc[2];

    // find_M
    PVector m = new PVector(0,0,0);
    m.x = lineEquationFindXbyY(b, c, 0);
    m.y = 0;
    m.z = lineEquationFindZbyY(b, c, 0);
    assertNotNaN(m, "find_M");

    // find_F
    PVector f = new PVector(0,0,0);
    f.x = 0;
    f.y = lineEquationFindYbyX(b, c, 0);
    f.z = lineEquationFindZbyX(b, c, 0);
    assertNotNaN(f, "find_F");

    // find_J
    PVector j = new PVector(0,0,0);
    j.x = 0;
    j.y = lineEquationFindYbyX(a0, b0, 0);
    j.z = lineEquationFindZbyX(a0, b0, 0);
    assertNotNaN(j, "find_J");

    // find_K
    PVector k = new PVector(0,0,0);
    k.x = 0;
    k.y = lineEquationFindYbyX(b0, c0, 0);
    k.z = lineEquationFindZbyX(b0, c0, 0);
    assertNotNaN(k, "find_K");

    // find_L
    PVector l = new PVector(0,0,0);
    l.x = 0;
    l.y = 0;
    l.z = lineEquationFindZbyY(j, k, 0);

    assert Math.abs(m.x) > 1e-6;
    assert Math.abs(f.y) > 1e-6;
    float k1 = m.z / m.x;
    float k2 = f.z / f.y;
    float b_koeff = l.z;

    PVector dXYZ = PVector.sub(e, d);
    PVector result = new PVector(0,0,0);
    result.x =
        (
          d.y - dXYZ.y / dXYZ.x * d.x -
              (d.z - dXYZ.z / dXYZ.y * d.y - b_koeff)
              /
              (k2 - dXYZ.z / dXYZ.y)
        )
        /
        (
          - k1 / (k2 - dXYZ.z/dXYZ.y) - dXYZ.y / dXYZ.x
        );
    result.y = lineEquationFindYbyX(d, e, result.x);
    result.z = lineEquationFindZbyX(d, e, result.x);
    System.out.println(String.format("result=%s", result.toString()));
    return result;
  }

  public double distance(PVector a, PVector b) {
    PVector dXYZ = PVector.sub(b, a);
    double d = Math.sqrt(dXYZ.x*dXYZ.x + dXYZ.y*dXYZ.y + dXYZ.z*dXYZ.z);
    return d;
  }

  public PVector PVectorCtor(PVector oth) {
    return new PVector(oth.x, oth.y, oth.z);
  }

  // [ALG_TRF_N_2_E]
  public Util3DTrafo[] getTrfN2E(PVector N) {
    Util3DTrafo []ret = new Util3DTrafo[2];

    // determine 1st operation - rotateX
    double alphaNBA = Math.atan2(-N.y, -N.z);
    //System.out.println("alphaNBA="+alphaNBA);
    double alphaNBN1 = Math.PI - alphaNBA;
    //System.out.println("alphaNBN1="+alphaNBN1);

    Util3DTrafo rotX = new Util3DTrafo();
    rotX.trafoTyp = Util3DTrafo.U3DT_TYP_ROTATE_X;
    rotX.angRotateX = alphaNBN1;
    ret[0] = rotX;

    // determine N1z after 1st rotation
    double N1z = Math.sqrt(N.z*N.z + N.y*N.y);
    double N1x = N.x;

    // determine 2nd operation - rotateY
    double alphaN1E = Math.atan2(N1z, N1x);
    System.out.println("N1z="+N1z+", N1x="+N1x+", alphaN1E="+alphaN1E);

    Util3DTrafo rotY = new Util3DTrafo();
    rotY.trafoTyp = Util3DTrafo.U3DT_TYP_ROTATE_Y;
    rotY.angRotateY = -alphaN1E;
    ret[1] = rotY;

    return ret;
  }

}
