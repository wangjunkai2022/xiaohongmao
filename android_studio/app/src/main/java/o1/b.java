package o1;

import android.graphics.Bitmap;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;

/* compiled from: IterativeBoxBlurFilter.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f89940a = "IterativeBoxBlurFilter";

    private static int a(int x9, int l10, int h4) {
        return x9 < l10 ? l10 : x9 > h4 ? h4 : x9;
    }

    public static void b(final Bitmap bitmap, final int iterations, final int radius) {
        j.i(bitmap);
        j.d(Boolean.valueOf(bitmap.isMutable()));
        j.d(Boolean.valueOf(((float) bitmap.getHeight()) <= 2048.0f));
        j.d(Boolean.valueOf(((float) bitmap.getWidth()) <= 2048.0f));
        j.d(Boolean.valueOf(radius > 0 && radius <= 25));
        j.d(Boolean.valueOf(iterations > 0));
        try {
            c(bitmap, iterations, radius);
        } catch (OutOfMemoryError e4) {
            p0.a.u(f89940a, String.format(null, "OOM: %d iterations on %dx%d with %d radius", Integer.valueOf(iterations), Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()), Integer.valueOf(radius)));
            throw e4;
        }
    }

    private static void c(final Bitmap bitmap, final int iterations, final int radius) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        int i4 = radius + 1;
        int i10 = i4 + radius;
        int[] iArr2 = new int[i10 * 256];
        int i11 = 1;
        while (true) {
            if (i11 > 255) {
                break;
            }
            for (int i12 = 0; i12 < i10; i12++) {
                iArr2[i4] = i11;
                i4++;
            }
            i11++;
        }
        int[] iArr3 = new int[Math.max(width, height)];
        for (int i13 = 0; i13 < iterations; i13++) {
            for (int i14 = 0; i14 < height; i14++) {
                d(iArr, iArr3, width, i14, i10, iArr2);
                System.arraycopy(iArr3, 0, iArr, i14 * width, width);
            }
            int i15 = 0;
            while (i15 < width) {
                int i16 = i15;
                e(iArr, iArr3, width, height, i15, i10, iArr2);
                int i17 = i16;
                for (int i18 = 0; i18 < height; i18++) {
                    iArr[i17] = iArr3[i18];
                    i17 += width;
                }
                i15 = i16 + 1;
            }
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, height);
    }

    private static void d(int[] pixels, int[] outRow, int w9, int row, int diameter, int[] div) {
        int i4 = w9 * row;
        int i10 = ((row + 1) * w9) - 1;
        int i11 = diameter >> 1;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        for (int i16 = -i11; i16 < w9 + i11; i16++) {
            int i17 = pixels[a(i4 + i16, i4, i10)];
            i12 += (i17 >> 16) & 255;
            i13 += (i17 >> 8) & 255;
            i14 += i17 & 255;
            i15 += i17 >>> 24;
            if (i16 >= i11) {
                outRow[i16 - i11] = (div[i15] << 24) | (div[i12] << 16) | (div[i13] << 8) | div[i14];
                int i18 = pixels[a((i16 - (diameter - 1)) + i4, i4, i10)];
                i12 -= (i18 >> 16) & 255;
                i13 -= (i18 >> 8) & 255;
                i14 -= i18 & 255;
                i15 -= i18 >>> 24;
            }
        }
    }

    private static void e(int[] pixels, int[] outCol, int w9, int h4, int col, int diameter, int[] div) {
        int i4 = ((h4 - 1) * w9) + col;
        int i10 = (diameter >> 1) * w9;
        int i11 = (diameter - 1) * w9;
        int i12 = col - i10;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        while (i12 <= i4 + i10) {
            int i18 = pixels[a(i12, col, i4)];
            i13 += (i18 >> 16) & 255;
            i14 += (i18 >> 8) & 255;
            i15 += i18 & 255;
            i16 += i18 >>> 24;
            if (i12 - i10 >= col) {
                outCol[i17] = (div[i16] << 24) | (div[i13] << 16) | (div[i14] << 8) | div[i15];
                i17++;
                int i19 = pixels[a(i12 - i11, col, i4)];
                i13 -= (i19 >> 16) & 255;
                i14 -= (i19 >> 8) & 255;
                i15 -= i19 & 255;
                i16 -= i19 >>> 24;
            }
            i12 += w9;
        }
    }
}
