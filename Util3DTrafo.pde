class Util3DTrafo {

  public double angRotateX;
  public double angRotateY;
  public double angRotateZ;

  static final int U3DT_TYP_ROTATE_X = 1;
  static final int U3DT_TYP_ROTATE_Y = 2;
  static final int U3DT_TYP_ROTATE_Z = 3;

  public int trafoTyp;

  Util3DTrafo() {
  }

  public void applyTrf() {
    System.out.println("applyTrf: "+toString());
    switch (trafoTyp) {
      case U3DT_TYP_ROTATE_X:
        rotateX((float)angRotateX);
        break;
      case U3DT_TYP_ROTATE_Y:
        rotateY((float)angRotateY);
        break;
      case U3DT_TYP_ROTATE_Z:
        rotateZ((float)angRotateZ);
        break;
      default:
        throw new java.lang.UnsupportedOperationException("unk trafoTyp="+trafoTyp);
    }
  }

  public Util3DTrafo reverseTrf() {
    Util3DTrafo ret = new Util3DTrafo();
    ret.trafoTyp = trafoTyp;
    ret.angRotateX = -angRotateX;
    ret.angRotateY = -angRotateY;
    ret.angRotateZ = -angRotateZ;
    return ret;
  }

  public String toString() {
    String ret;
    switch (trafoTyp) {
      case U3DT_TYP_ROTATE_X:
        ret = "rotateX("+angRotateX+")";
        break;
      case U3DT_TYP_ROTATE_Y:
        ret = "rotateY("+angRotateY+")";
        break;
      case U3DT_TYP_ROTATE_Z:
        ret = "rotateZ("+angRotateZ+")";
        break;
      default:
        ret = "unk trafoTyp="+trafoTyp;
    }
    return ret;
  }

}
