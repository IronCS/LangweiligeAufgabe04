class CameraParams
{
  public PVector position; // position of the "spaceship" in the coordinate system of the "world"
  // nose and wing - both are nomalized vectors in the coordinate system of the
  // "world" {
  public PVector nose; // direction of the "nose" of the "spaceship" - 
  public PVector wing; // direction of the "right wing" of the "spaceship" - no
  // }
  public CameraParams() {
    position = new PVector(0,0,0);
    nose = new PVector(0,0,0);
    wing = new PVector(0,0,0);
  }
  public CameraParams(CameraParams oth) {
    Util3D u3d = new Util3D();
    position = u3d.PVectorCtor(oth.position);
    nose = u3d.PVectorCtor(oth.nose);
    wing = u3d.PVectorCtor(oth.wing);
  }
  public String toString() {
    String ret = String.format("position=%s,nose=%s,wing=%s", position.toString(), nose.toString(), wing.toString());
    return ret;
  }
}
