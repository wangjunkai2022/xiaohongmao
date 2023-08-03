package s1;

import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DownsampleUtil.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final int f93234a = 1;

    /* renamed from: b  reason: collision with root package name */
    private static final float f93235b = 0.33333334f;

    private a() {
    }

    @VisibleForTesting
    public static float a(final com.facebook.imagepipeline.common.e rotationOptions, @r7.h final com.facebook.imagepipeline.common.d resizeOptions, final com.facebook.imagepipeline.image.e encodedImage) {
        j.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.W(encodedImage)));
        if (resizeOptions == null || resizeOptions.f12200b <= 0 || resizeOptions.f12199a <= 0 || encodedImage.J() == 0 || encodedImage.s() == 0) {
            return 1.0f;
        }
        int d4 = d(rotationOptions, encodedImage);
        boolean z9 = d4 == 90 || d4 == 270;
        int s9 = z9 ? encodedImage.s() : encodedImage.J();
        int J = z9 ? encodedImage.J() : encodedImage.s();
        float f10 = resizeOptions.f12199a / s9;
        float f11 = resizeOptions.f12200b / J;
        float max = Math.max(f10, f11);
        p0.a.i0("DownsampleUtil", "Downsample - Specified size: %dx%d, image size: %dx%d ratio: %.1f x %.1f, ratio: %.3f", Integer.valueOf(resizeOptions.f12199a), Integer.valueOf(resizeOptions.f12200b), Integer.valueOf(s9), Integer.valueOf(J), Float.valueOf(f10), Float.valueOf(f11), Float.valueOf(max));
        return max;
    }

    public static int b(final com.facebook.imagepipeline.common.e rotationOptions, @r7.h final com.facebook.imagepipeline.common.d resizeOptions, final com.facebook.imagepipeline.image.e encodedImage, final int maxBitmapSize) {
        int e4;
        if (com.facebook.imagepipeline.image.e.W(encodedImage)) {
            float a10 = a(rotationOptions, resizeOptions, encodedImage);
            if (encodedImage.y() == com.facebook.imageformat.b.f11797a) {
                e4 = f(a10);
            } else {
                e4 = e(a10);
            }
            int max = Math.max(encodedImage.s(), encodedImage.J());
            float f10 = resizeOptions != null ? resizeOptions.f12201c : maxBitmapSize;
            while (max / e4 > f10) {
                e4 = encodedImage.y() == com.facebook.imageformat.b.f11797a ? e4 * 2 : e4 + 1;
            }
            return e4;
        }
        return 1;
    }

    public static int c(final com.facebook.imagepipeline.image.e encodedImage, final int pixelSize, final int maxBitmapSizeInBytes) {
        int G = encodedImage.G();
        while ((((encodedImage.J() * encodedImage.s()) * pixelSize) / G) / G > maxBitmapSizeInBytes) {
            G *= 2;
        }
        return G;
    }

    private static int d(final com.facebook.imagepipeline.common.e rotationOptions, final com.facebook.imagepipeline.image.e encodedImage) {
        boolean z9 = false;
        if (rotationOptions.h()) {
            int E = encodedImage.E();
            j.d(Boolean.valueOf((E == 0 || E == 90 || E == 180 || E == 270) ? true : true));
            return E;
        }
        return 0;
    }

    @VisibleForTesting
    public static int e(final float ratio) {
        if (ratio > 0.6666667f) {
            return 1;
        }
        int i4 = 2;
        while (true) {
            double d4 = i4;
            if ((1.0d / d4) + ((1.0d / (Math.pow(d4, 2.0d) - d4)) * 0.3333333432674408d) <= ratio) {
                return i4 - 1;
            }
            i4++;
        }
    }

    @VisibleForTesting
    public static int f(final float ratio) {
        if (ratio > 0.6666667f) {
            return 1;
        }
        int i4 = 2;
        while (true) {
            int i10 = i4 * 2;
            double d4 = 1.0d / i10;
            if (d4 + (0.3333333432674408d * d4) <= ratio) {
                return i4;
            }
            i4 = i10;
        }
    }

    @VisibleForTesting
    public static int g(final int sampleSize) {
        int i4 = 1;
        while (i4 < sampleSize) {
            i4 *= 2;
        }
        return i4;
    }
}
