package s1;

import android.graphics.Matrix;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.ImmutableList;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: JpegTranscoderUtils.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private static final int f93237a = 360;

    /* renamed from: b  reason: collision with root package name */
    public static final int f93238b = 0;

    /* renamed from: c  reason: collision with root package name */
    public static final int f93239c = 100;

    /* renamed from: d  reason: collision with root package name */
    public static final int f93240d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f93241e = 16;

    /* renamed from: f  reason: collision with root package name */
    public static final int f93242f = 8;

    /* renamed from: g  reason: collision with root package name */
    public static final ImmutableList<Integer> f93243g = ImmutableList.of((Object[]) new Integer[]{2, 7, 4, 5});
    @VisibleForTesting

    /* renamed from: h  reason: collision with root package name */
    public static final int f93244h = 85;

    @VisibleForTesting
    public static int a(int downsampleRatio) {
        return Math.max(1, 8 / downsampleRatio);
    }

    @VisibleForTesting
    public static float b(com.facebook.imagepipeline.common.d resizeOptions, int width, int height) {
        if (resizeOptions == null) {
            return 1.0f;
        }
        float f10 = width;
        float f11 = height;
        float max = Math.max(resizeOptions.f12199a / f10, resizeOptions.f12200b / f11);
        float f12 = resizeOptions.f12201c;
        if (f10 * max > f12) {
            max = f12 / f10;
        }
        return f11 * max > f12 ? f12 / f11 : max;
    }

    private static int c(com.facebook.imagepipeline.image.e encodedImage) {
        int E = encodedImage.E();
        if (E == 90 || E == 180 || E == 270) {
            return encodedImage.E();
        }
        return 0;
    }

    public static int d(com.facebook.imagepipeline.common.e rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        int q9 = encodedImage.q();
        ImmutableList<Integer> immutableList = f93243g;
        int indexOf = immutableList.indexOf(Integer.valueOf(q9));
        if (indexOf >= 0) {
            return immutableList.get((indexOf + ((rotationOptions.h() ? 0 : rotationOptions.f()) / 90)) % immutableList.size()).intValue();
        }
        throw new IllegalArgumentException("Only accepts inverted exif orientations");
    }

    public static int e(com.facebook.imagepipeline.common.e rotationOptions, com.facebook.imagepipeline.image.e encodedImage) {
        if (rotationOptions.g()) {
            int c10 = c(encodedImage);
            return rotationOptions.h() ? c10 : (c10 + rotationOptions.f()) % f93237a;
        }
        return 0;
    }

    public static int f(com.facebook.imagepipeline.common.e rotationOptions, @r7.h com.facebook.imagepipeline.common.d resizeOptions, com.facebook.imagepipeline.image.e encodedImage, boolean resizingEnabled) {
        if (resizingEnabled && resizeOptions != null) {
            int e4 = e(rotationOptions, encodedImage);
            boolean z9 = false;
            int d4 = f93243g.contains(Integer.valueOf(encodedImage.q())) ? d(rotationOptions, encodedImage) : 0;
            z9 = (e4 == 90 || e4 == 270 || d4 == 5 || d4 == 7) ? true : true;
            int k10 = k(b(resizeOptions, z9 ? encodedImage.s() : encodedImage.J(), z9 ? encodedImage.J() : encodedImage.s()), resizeOptions.f12202d);
            if (k10 > 8) {
                return 8;
            }
            if (k10 < 1) {
                return 1;
            }
            return k10;
        }
        return 8;
    }

    @r7.h
    public static Matrix g(final com.facebook.imagepipeline.image.e encodedImage, final com.facebook.imagepipeline.common.e rotationOptions) {
        if (f93243g.contains(Integer.valueOf(encodedImage.q()))) {
            return h(d(rotationOptions, encodedImage));
        }
        int e4 = e(rotationOptions, encodedImage);
        if (e4 != 0) {
            Matrix matrix = new Matrix();
            matrix.setRotate(e4);
            return matrix;
        }
        return null;
    }

    @r7.h
    private static Matrix h(final int orientation) {
        Matrix matrix = new Matrix();
        if (orientation == 2) {
            matrix.setScale(-1.0f, 1.0f);
        } else if (orientation == 7) {
            matrix.setRotate(-90.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else if (orientation == 4) {
            matrix.setRotate(180.0f);
            matrix.postScale(-1.0f, 1.0f);
        } else if (orientation != 5) {
            return null;
        } else {
            matrix.setRotate(90.0f);
            matrix.postScale(-1.0f, 1.0f);
        }
        return matrix;
    }

    public static boolean i(int exifOrientation) {
        switch (exifOrientation) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
                return true;
            default:
                return false;
        }
    }

    public static boolean j(int degrees) {
        return degrees >= 0 && degrees <= 270 && degrees % 90 == 0;
    }

    @VisibleForTesting
    public static int k(float maxRatio, float roundUpFraction) {
        return (int) (roundUpFraction + (maxRatio * 8.0f));
    }
}
