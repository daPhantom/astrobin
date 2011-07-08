/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.5
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */


public class StemImplementation {
  private long swigCPtr;
  protected boolean swigCMemOwn;

  public StemImplementation(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  public static long getCPtr(StemImplementation obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        XapianJNI.delete_StemImplementation(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  protected void swigDirectorDisconnect() {
    swigCMemOwn = false;
    delete();
  }

  public void swigReleaseOwnership() {
    swigCMemOwn = false;
    XapianJNI.StemImplementation_change_ownership(this, swigCPtr, false);
  }

  public void swigTakeOwnership() {
    swigCMemOwn = true;
    XapianJNI.StemImplementation_change_ownership(this, swigCPtr, true);
  }

  public String apply(String word) {
    return XapianJNI.StemImplementation_apply(swigCPtr, this, word);
  }

  public String toString() {
    return XapianJNI.StemImplementation_toString(swigCPtr, this);
  }

  public StemImplementation() {
    this(XapianJNI.new_StemImplementation(), true);
    XapianJNI.StemImplementation_director_connect(this, swigCPtr, swigCMemOwn, true);
  }

}