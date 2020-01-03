class CameraParams
{
  public float angleRoll;
  public float angleRaise;
  public CameraParams() {
    angleRoll = 0;
    angleRaise = 0;
  }
  public CameraParams(CameraParams oth) {
    angleRoll = oth.angleRoll;
    angleRaise = oth.angleRaise;
  }
  public String toString() {
    String ret = String.format("Roll=%f,Raise=%f", angleRoll*180./PI, angleRaise*180./PI);
    return ret;
  }
}
