package com.facebook.imagepipeline.bitmaps;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.DisplayMetrics;
import androidx.core.view.ViewCompat;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: PlatformBitmapFactory.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class f {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PlatformBitmapFactory.java */
    /* loaded from: classes.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f12031a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f12031a = iArr;
            try {
                iArr[Bitmap.Config.RGB_565.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f12031a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f12031a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f12031a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static Bitmap.Config C(Bitmap source) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        Bitmap.Config config2 = source.getConfig();
        if (config2 != null) {
            int i4 = a.f12031a[config2.ordinal()];
            if (i4 != 1) {
                if (i4 != 2) {
                    return Bitmap.Config.ARGB_8888;
                }
                return Bitmap.Config.ALPHA_8;
            }
            return Bitmap.Config.RGB_565;
        }
        return config;
    }

    private static void D(Bitmap source, Bitmap destination) {
        destination.setDensity(source.getDensity());
        destination.setHasAlpha(source.hasAlpha());
        destination.setPremultiplied(source.isPremultiplied());
    }

    private static void a(Bitmap source, int x9, int y9, int width, int height) {
        j.e(x9 + width <= source.getWidth(), "x + width must be <= bitmap.width()");
        j.e(y9 + height <= source.getHeight(), "y + height must be <= bitmap.height()");
    }

    private static void b(int width, int height) {
        j.e(width > 0, "width must be > 0");
        j.e(height > 0, "height must be > 0");
    }

    private static void c(int x9, int y9) {
        j.e(x9 >= 0, "x must be >= 0");
        j.e(y9 >= 0, "y must be >= 0");
    }

    private com.facebook.common.references.a<Bitmap> g(int width, int height, Bitmap.Config config, boolean hasAlpha) {
        return h(width, height, config, hasAlpha, null);
    }

    private com.facebook.common.references.a<Bitmap> h(int width, int height, Bitmap.Config config, boolean hasAlpha, @r7.h Object callerContext) {
        return s(null, width, height, config, hasAlpha, callerContext);
    }

    private com.facebook.common.references.a<Bitmap> r(DisplayMetrics display, int width, int height, Bitmap.Config config, boolean hasAlpha) {
        return s(display, width, height, config, hasAlpha, null);
    }

    private com.facebook.common.references.a<Bitmap> s(@r7.h DisplayMetrics display, int width, int height, Bitmap.Config config, boolean hasAlpha, @r7.h Object callerContext) {
        b(width, height);
        com.facebook.common.references.a<Bitmap> z9 = z(width, height, config);
        Bitmap q9 = z9.q();
        if (display != null) {
            q9.setDensity(display.densityDpi);
        }
        q9.setHasAlpha(hasAlpha);
        if (config == Bitmap.Config.ARGB_8888 && !hasAlpha) {
            q9.eraseColor(ViewCompat.MEASURED_STATE_MASK);
        }
        return z9;
    }

    public com.facebook.common.references.a<Bitmap> A(Bitmap source, int destinationWidth, int destinationHeight, boolean filter) {
        return B(source, destinationWidth, destinationHeight, filter, null);
    }

    public com.facebook.common.references.a<Bitmap> B(Bitmap source, int destinationWidth, int destinationHeight, boolean filter, @r7.h Object callerContext) {
        b(destinationWidth, destinationHeight);
        Matrix matrix = new Matrix();
        int width = source.getWidth();
        int height = source.getHeight();
        matrix.setScale(destinationWidth / width, destinationHeight / height);
        return m(source, 0, 0, width, height, matrix, filter, callerContext);
    }

    public com.facebook.common.references.a<Bitmap> d(int width, int height) {
        return e(width, height, Bitmap.Config.ARGB_8888);
    }

    public com.facebook.common.references.a<Bitmap> e(int width, int height, Bitmap.Config bitmapConfig) {
        return f(width, height, bitmapConfig, null);
    }

    public com.facebook.common.references.a<Bitmap> f(int width, int height, Bitmap.Config bitmapConfig, @r7.h Object callerContext) {
        return z(width, height, bitmapConfig);
    }

    public com.facebook.common.references.a<Bitmap> i(int width, int height, @r7.h Object callerContext) {
        return f(width, height, Bitmap.Config.ARGB_8888, callerContext);
    }

    public com.facebook.common.references.a<Bitmap> j(Bitmap source) {
        return o(source, null);
    }

    public com.facebook.common.references.a<Bitmap> k(Bitmap source, int x9, int y9, int width, int height) {
        return n(source, x9, y9, width, height, null);
    }

    public com.facebook.common.references.a<Bitmap> l(Bitmap source, int x9, int y9, int width, int height, @r7.h Matrix matrix, boolean filter) {
        return m(source, x9, y9, width, height, matrix, filter, null);
    }

    public com.facebook.common.references.a<Bitmap> m(Bitmap source, int x9, int y9, int width, int height, @r7.h Matrix matrix, boolean filter, @r7.h Object callerContext) {
        com.facebook.common.references.a<Bitmap> h4;
        Canvas canvas;
        Paint paint;
        j.j(source, "Source bitmap cannot be null");
        c(x9, y9);
        b(width, height);
        a(source, x9, y9, width, height);
        Rect rect = new Rect(x9, y9, x9 + width, y9 + height);
        RectF rectF = new RectF(0.0f, 0.0f, width, height);
        Bitmap.Config C = C(source);
        if (matrix != null && !matrix.isIdentity()) {
            boolean z9 = !matrix.rectStaysRect();
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            int round = Math.round(rectF2.width());
            int round2 = Math.round(rectF2.height());
            if (z9) {
                C = Bitmap.Config.ARGB_8888;
            }
            h4 = h(round, round2, C, z9 || source.hasAlpha(), callerContext);
            D(source, h4.q());
            canvas = new Canvas(h4.q());
            canvas.translate(-rectF2.left, -rectF2.top);
            canvas.concat(matrix);
            paint = new Paint();
            paint.setFilterBitmap(filter);
            if (z9) {
                paint.setAntiAlias(true);
            }
        } else {
            h4 = h(width, height, C, source.hasAlpha(), callerContext);
            D(source, h4.q());
            canvas = new Canvas(h4.q());
            paint = null;
        }
        canvas.drawBitmap(source, rect, rectF, paint);
        canvas.setBitmap(null);
        return h4;
    }

    public com.facebook.common.references.a<Bitmap> n(Bitmap source, int x9, int y9, int width, int height, @r7.h Object callerContext) {
        return m(source, x9, y9, width, height, null, false, callerContext);
    }

    public com.facebook.common.references.a<Bitmap> o(Bitmap source, @r7.h Object callerContext) {
        return n(source, 0, 0, source.getWidth(), source.getHeight(), callerContext);
    }

    public com.facebook.common.references.a<Bitmap> p(DisplayMetrics display, int width, int height, Bitmap.Config config) {
        return q(display, width, height, config, null);
    }

    public com.facebook.common.references.a<Bitmap> q(DisplayMetrics display, int width, int height, Bitmap.Config config, @r7.h Object callerContext) {
        return s(display, width, height, config, true, callerContext);
    }

    public com.facebook.common.references.a<Bitmap> t(DisplayMetrics display, int[] colors, int offset, int stride, int width, int height, Bitmap.Config config) {
        return u(display, colors, offset, stride, width, height, config, null);
    }

    public com.facebook.common.references.a<Bitmap> u(DisplayMetrics display, int[] colors, int offset, int stride, int width, int height, Bitmap.Config config, @r7.h Object callerContext) {
        com.facebook.common.references.a<Bitmap> q9 = q(display, width, height, config, callerContext);
        q9.q().setPixels(colors, offset, stride, 0, 0, width, height);
        return q9;
    }

    public com.facebook.common.references.a<Bitmap> v(DisplayMetrics display, int[] colors, int width, int height, Bitmap.Config config) {
        return w(display, colors, width, height, config, null);
    }

    public com.facebook.common.references.a<Bitmap> w(DisplayMetrics display, int[] colors, int width, int height, Bitmap.Config config, @r7.h Object callerContext) {
        return u(display, colors, 0, width, width, height, config, callerContext);
    }

    public com.facebook.common.references.a<Bitmap> x(int[] colors, int width, int height, Bitmap.Config config) {
        return y(colors, width, height, config, null);
    }

    public com.facebook.common.references.a<Bitmap> y(int[] colors, int width, int height, Bitmap.Config config, @r7.h Object callerContext) {
        com.facebook.common.references.a<Bitmap> z9 = z(width, height, config);
        z9.q().setPixels(colors, 0, width, 0, 0, width, height);
        return z9;
    }

    public abstract com.facebook.common.references.a<Bitmap> z(int width, int height, Bitmap.Config bitmapConfig);
}
