package t1;

import android.graphics.Bitmap;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: TransformationUtils.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public final class c {
    public static boolean a(@h a transformation, @h com.facebook.common.references.a<Bitmap> bitmapReference) {
        if (transformation == null || bitmapReference == null) {
            return false;
        }
        Bitmap q9 = bitmapReference.q();
        if (transformation.a()) {
            q9.setHasAlpha(true);
        }
        transformation.b(q9);
        return true;
    }
}
