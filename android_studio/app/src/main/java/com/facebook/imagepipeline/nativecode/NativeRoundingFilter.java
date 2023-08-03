package com.facebook.imagepipeline.nativecode;

import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

@com.facebook.common.internal.e
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class NativeRoundingFilter {
    static {
        c.a();
    }

    public static void a(Bitmap bitmap, int radiusTopLeft, int radiusTopRight, int radiusBottomRight, int radiusBottomLeft) {
        nativeAddRoundedCornersFilter(bitmap, radiusTopLeft, radiusTopRight, radiusBottomRight, radiusBottomLeft);
    }

    public static void b(Bitmap bitmap) {
        toCircle(bitmap, false);
    }

    public static void c(Bitmap bitmap) {
        toCircleFast(bitmap, false);
    }

    public static void d(Bitmap bitmap, int colorARGB, int borderWidthPx, boolean antiAliased) {
        j.i(bitmap);
        if (bitmap.getWidth() < 3 || bitmap.getHeight() < 3) {
            return;
        }
        nativeToCircleWithBorderFilter(bitmap, colorARGB, borderWidthPx, antiAliased);
    }

    @com.facebook.common.internal.e
    private static native void nativeAddRoundedCornersFilter(Bitmap bitmap, int radiusTopLeft, int radiusTopRight, int radiusBottomRight, int radiusBottomLeft);

    @com.facebook.common.internal.e
    private static native void nativeToCircleFastFilter(Bitmap bitmap, boolean antiAliased);

    @com.facebook.common.internal.e
    private static native void nativeToCircleFilter(Bitmap bitmap, boolean antiAliased);

    @com.facebook.common.internal.e
    private static native void nativeToCircleWithBorderFilter(Bitmap bitmap, int colorARGB, int borderWidthPx, boolean antiAliased);

    @com.facebook.common.internal.e
    public static void toCircle(Bitmap bitmap, boolean antiAliased) {
        j.i(bitmap);
        if (bitmap.getWidth() < 3 || bitmap.getHeight() < 3) {
            return;
        }
        nativeToCircleFilter(bitmap, antiAliased);
    }

    @com.facebook.common.internal.e
    public static void toCircleFast(Bitmap bitmap, boolean antiAliased) {
        j.i(bitmap);
        if (bitmap.getWidth() < 3 || bitmap.getHeight() < 3) {
            return;
        }
        nativeToCircleFastFilter(bitmap, antiAliased);
    }
}
