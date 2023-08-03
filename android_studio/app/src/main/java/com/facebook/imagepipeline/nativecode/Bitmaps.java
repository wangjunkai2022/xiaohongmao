package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class Bitmaps {
    static {
        b.a();
    }

    @com.facebook.common.internal.e
    public static void copyBitmap(Bitmap dest, Bitmap src) {
        j.d(Boolean.valueOf(src.getConfig() == dest.getConfig()));
        j.d(Boolean.valueOf(dest.isMutable()));
        j.d(Boolean.valueOf(dest.getWidth() == src.getWidth()));
        j.d(Boolean.valueOf(dest.getHeight() == src.getHeight()));
        nativeCopyBitmap(dest, dest.getRowBytes(), src, src.getRowBytes(), dest.getHeight());
    }

    @com.facebook.common.internal.e
    private static native void nativeCopyBitmap(Bitmap dest, int destStride, Bitmap src, int srcStride, int rows);
}
