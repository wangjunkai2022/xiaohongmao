package com.tangxiaolv.telegramgallery.Utils;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import okio.Utf8;

/* compiled from: Bitmaps.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile Matrix f56387a;

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal<byte[]> f56388b = new a();

    /* compiled from: Bitmaps.java */
    /* loaded from: classes3.dex */
    class a extends ThreadLocal<byte[]> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public byte[] initialValue() {
            return new byte[]{-1, -40, -1, -37, 0, 67, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -64, 0, 17, 8, 0, 0, 0, 0, 3, 1, 34, 0, 2, 17, 0, 3, 17, 0, -1, -60, 0, com.google.common.base.c.I, 0, 0, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, com.google.common.base.c.f32106m, -1, -60, 0, -75, 16, 0, 2, 1, 3, 3, 2, 4, 3, 5, 5, 4, 4, 0, 0, 1, 125, 1, 2, 3, 0, 4, 17, 5, com.google.common.base.c.f32114u, 33, 49, 65, 6, 19, 81, 97, 7, 34, 113, com.google.common.base.c.f32117x, 50, -127, -111, -95, 8, 35, 66, -79, -63, com.google.common.base.c.f32118y, 82, -47, -16, 36, 51, 98, 114, -126, 9, 10, com.google.common.base.c.f32119z, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C, com.google.common.base.c.D, 37, 38, 39, 40, 41, 42, 52, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, -125, -124, -123, -122, -121, -120, -119, -118, -110, -109, -108, -107, -106, -105, -104, -103, -102, -94, -93, -92, -91, -90, -89, -88, -87, -86, -78, -77, -76, -75, -74, -73, -72, -71, -70, -62, -61, -60, -59, -58, -57, -56, -55, -54, -46, -45, -44, -43, -42, -41, -40, -39, -38, -31, -30, -29, -28, -27, -26, -25, -24, -23, -22, -15, -14, -13, -12, -11, -10, -9, -8, -7, -6, -1, -60, 0, com.google.common.base.c.I, 1, 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, com.google.common.base.c.f32106m, -1, -60, 0, -75, 17, 0, 2, 1, 2, 4, 4, 3, 4, 7, 5, 4, 4, 0, 1, 2, 119, 0, 1, 2, 3, 17, 4, 5, 33, 49, 6, com.google.common.base.c.f32114u, 65, 81, 7, 97, 113, 19, 34, 50, -127, 8, com.google.common.base.c.f32117x, 66, -111, -95, -79, -63, 9, 35, 51, 82, -16, com.google.common.base.c.f32118y, 98, 114, -47, 10, com.google.common.base.c.f32119z, 36, 52, -31, 37, -15, com.google.common.base.c.A, com.google.common.base.c.B, com.google.common.base.c.C, com.google.common.base.c.D, 38, 39, 40, 41, 42, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, -126, -125, -124, -123, -122, -121, -120, -119, -118, -110, -109, -108, -107, -106, -105, -104, -103, -102, -94, -93, -92, -91, -90, -89, -88, -87, -86, -78, -77, -76, -75, -74, -73, -72, -71, -70, -62, -61, -60, -59, -58, -57, -56, -55, -54, -46, -45, -44, -43, -42, -41, -40, -39, -38, -30, -29, -28, -27, -26, -25, -24, -23, -22, -14, -13, -12, -11, -10, -9, -8, -7, -6, -1, -38, 0, com.google.common.base.c.f32107n, 3, 1, 0, 2, 17, 3, 17, 0, Utf8.REPLACEMENT_BYTE, 0, -114, -118, 40, -96, com.google.common.base.c.f32110q, -1, -39};
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Bitmaps.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Utils.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class C0484b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f56389a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f56389a = iArr;
            try {
                iArr[Bitmap.Config.RGB_565.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f56389a[Bitmap.Config.ALPHA_8.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f56389a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f56389a[Bitmap.Config.ARGB_8888.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private static void a(int i4, int i10) {
        if (i4 <= 0) {
            throw new IllegalArgumentException("width must be > 0");
        }
        if (i10 <= 0) {
            throw new IllegalArgumentException("height must be > 0");
        }
    }

    private static void b(int i4, int i10) {
        if (i4 < 0) {
            throw new IllegalArgumentException("x must be >= 0");
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("y must be >= 0");
        }
    }

    public static Bitmap c(int i4, int i10, Bitmap.Config config) {
        Bitmap createBitmap = Bitmap.createBitmap(i4, i10, config);
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.ARGB_4444) {
            createBitmap.eraseColor(0);
        }
        return createBitmap;
    }

    public static Bitmap d(Bitmap bitmap, int i4, int i10, int i11, int i12) {
        return e(bitmap, i4, i10, i11, i12, null, false);
    }

    public static Bitmap e(Bitmap bitmap, int i4, int i10, int i11, int i12, Matrix matrix, boolean z9) {
        Bitmap c10;
        Paint paint;
        b(i4, i10);
        a(i11, i12);
        int i13 = i4 + i11;
        if (i13 <= bitmap.getWidth()) {
            int i14 = i10 + i12;
            if (i14 <= bitmap.getHeight()) {
                if (!bitmap.isMutable() && i4 == 0 && i10 == 0 && i11 == bitmap.getWidth() && i12 == bitmap.getHeight() && (matrix == null || matrix.isIdentity())) {
                    return bitmap;
                }
                Canvas canvas = new Canvas();
                Rect rect = new Rect(i4, i10, i13, i14);
                RectF rectF = new RectF(0.0f, 0.0f, i11, i12);
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                Bitmap.Config config2 = bitmap.getConfig();
                if (config2 != null) {
                    int i15 = C0484b.f56389a[config2.ordinal()];
                    if (i15 == 1) {
                        config = Bitmap.Config.RGB_565;
                    } else if (i15 != 2) {
                        config = Bitmap.Config.ARGB_8888;
                    } else {
                        config = Bitmap.Config.ALPHA_8;
                    }
                }
                if (matrix != null && !matrix.isIdentity()) {
                    boolean z10 = !matrix.rectStaysRect();
                    RectF rectF2 = new RectF();
                    matrix.mapRect(rectF2, rectF);
                    int round = Math.round(rectF2.width());
                    int round2 = Math.round(rectF2.height());
                    if (z10) {
                        config = Bitmap.Config.ARGB_8888;
                    }
                    c10 = c(round, round2, config);
                    canvas.translate(-rectF2.left, -rectF2.top);
                    canvas.concat(matrix);
                    paint = new Paint();
                    paint.setFilterBitmap(z9);
                    if (z10) {
                        paint.setAntiAlias(true);
                    }
                } else {
                    c10 = c(i11, i12, config);
                    paint = null;
                }
                c10.setDensity(bitmap.getDensity());
                c10.setHasAlpha(bitmap.hasAlpha());
                c10.setPremultiplied(bitmap.isPremultiplied());
                canvas.setBitmap(c10);
                canvas.drawBitmap(bitmap, rect, rectF, paint);
                try {
                    canvas.setBitmap(null);
                } catch (Exception unused) {
                }
                return c10;
            }
            throw new IllegalArgumentException("y + height must be <= bitmap.height()");
        }
        throw new IllegalArgumentException("x + width must be <= bitmap.width()");
    }

    public static Bitmap f(Bitmap bitmap, int i4, int i10, boolean z9) {
        Matrix matrix;
        synchronized (Bitmap.class) {
            matrix = f56387a;
            f56387a = null;
        }
        if (matrix == null) {
            matrix = new Matrix();
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        matrix.setScale(i4 / width, i10 / height);
        Bitmap e4 = e(bitmap, 0, 0, width, height, matrix, z9);
        synchronized (Bitmap.class) {
            if (f56387a == null) {
                f56387a = matrix;
            }
        }
        return e4;
    }
}
