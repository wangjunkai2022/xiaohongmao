package iamutkarshtiwari.github.io.ananas.editimage.gesture;

import android.graphics.PointF;

/* loaded from: classes3.dex */
public class Vector2D extends PointF {
    /* JADX INFO: Access modifiers changed from: package-private */
    public void normalize() {
        float f10 = ((PointF) this).x;
        float f11 = ((PointF) this).y;
        float sqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
        ((PointF) this).x /= sqrt;
        ((PointF) this).y /= sqrt;
    }
}
