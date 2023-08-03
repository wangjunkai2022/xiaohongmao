package iamutkarshtiwari.github.io.ananas.editimage.gesture;

import android.graphics.PointF;

/* compiled from: VectorAngle.java */
/* loaded from: classes3.dex */
public class e {
    public static float a(Vector2D vector2D, Vector2D vector2D2) {
        vector2D.normalize();
        vector2D2.normalize();
        return (float) ((Math.atan2(((PointF) vector2D2).y, ((PointF) vector2D2).x) - Math.atan2(((PointF) vector2D).y, ((PointF) vector2D).x)) * 57.29577951308232d);
    }
}
