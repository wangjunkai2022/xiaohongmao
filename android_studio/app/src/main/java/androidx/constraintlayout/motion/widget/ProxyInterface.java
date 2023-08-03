package androidx.constraintlayout.motion.widget;

/* compiled from: DesignTool.java */
/* loaded from: classes.dex */
interface ProxyInterface {
    int designAccess(int cmd, String type, Object viewObject, float[] in, int inLength, float[] out, int outLength);

    float getKeyFramePosition(Object view, int type, float x9, float y9);

    Object getKeyframeAtLocation(Object viewObject, float x9, float y9);

    Boolean getPositionKeyframe(Object keyFrame, Object view, float x9, float y9, String[] attribute, float[] value);

    long getTransitionTimeMs();

    void setAttributes(int dpi, String constraintSetId, Object opaqueView, Object opaqueAttributes);

    void setKeyFrame(Object view, int position, String name, Object value);

    boolean setKeyFramePosition(Object view, int position, int type, float x9, float y9);

    void setToolPosition(float position);
}
