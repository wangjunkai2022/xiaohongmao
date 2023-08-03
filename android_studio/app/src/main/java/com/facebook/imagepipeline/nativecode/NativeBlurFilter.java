package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class NativeBlurFilter {
    static {
        c.a();
    }

    public static void a(Bitmap bitmap, int iterations, int blurRadius) {
        j.i(bitmap);
        j.d(Boolean.valueOf(iterations > 0));
        j.d(Boolean.valueOf(blurRadius > 0));
        nativeIterativeBoxBlur(bitmap, iterations, blurRadius);
    }

    @com.facebook.common.internal.e
    private static native void nativeIterativeBoxBlur(Bitmap bitmap, int iterations, int blurRadius);
}
