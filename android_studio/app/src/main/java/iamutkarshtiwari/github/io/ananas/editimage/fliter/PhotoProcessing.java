package iamutkarshtiwari.github.io.ananas.editimage.fliter;

import android.graphics.Bitmap;

/* loaded from: classes3.dex */
public class PhotoProcessing {

    /* renamed from: a  reason: collision with root package name */
    private static final String f69374a = "PhotoProcessing";

    static {
        System.loadLibrary("photoprocessing");
    }

    public static Bitmap a(Bitmap bitmap, int i4) {
        if (bitmap != null) {
            f(bitmap);
        }
        switch (i4) {
            case 1:
                nativeApplyInstafix();
                break;
            case 2:
                nativeApplyAnsel();
                break;
            case 3:
                nativeApplyTestino();
                break;
            case 4:
                nativeApplyXPro();
                break;
            case 5:
                nativeApplyRetro();
                break;
            case 6:
                nativeApplyBW();
                break;
            case 7:
                nativeApplySepia();
                break;
            case 8:
                nativeApplyCyano();
                break;
            case 9:
                nativeApplyGeorgia();
                break;
            case 10:
                nativeApplySahara();
                break;
            case 11:
                nativeApplyHDR();
                break;
        }
        Bitmap c10 = c(bitmap);
        nativeDeleteBitmap();
        return c10;
    }

    public static Bitmap b(Bitmap bitmap) {
        nativeInitBitmap(bitmap.getWidth(), bitmap.getHeight());
        f(bitmap);
        nativeFlipHorizontally();
        Bitmap c10 = c(bitmap);
        nativeDeleteBitmap();
        return c10;
    }

    private static Bitmap c(Bitmap bitmap) {
        int nativeGetBitmapWidth = nativeGetBitmapWidth();
        int nativeGetBitmapHeight = nativeGetBitmapHeight();
        if (bitmap == null || nativeGetBitmapWidth != bitmap.getWidth() || nativeGetBitmapHeight != bitmap.getHeight() || !bitmap.isMutable()) {
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            if (bitmap != null) {
                config = bitmap.getConfig();
                bitmap.recycle();
            }
            bitmap = Bitmap.createBitmap(nativeGetBitmapWidth, nativeGetBitmapHeight, config);
        }
        int[] iArr = new int[nativeGetBitmapWidth];
        for (int i4 = 0; i4 < nativeGetBitmapHeight; i4++) {
            nativeGetBitmapRow(i4, iArr);
            bitmap.setPixels(iArr, 0, nativeGetBitmapWidth, 0, i4, nativeGetBitmapWidth, 1);
        }
        return bitmap;
    }

    public static Bitmap d(Bitmap bitmap) {
        f(bitmap);
        return c(bitmap);
    }

    public static Bitmap e(Bitmap bitmap, int i4) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap.Config config = bitmap.getConfig();
        nativeInitBitmap(width, height);
        f(bitmap);
        if (i4 == 90) {
            nativeRotate90();
            bitmap.recycle();
            Bitmap c10 = c(Bitmap.createBitmap(height, width, config));
            nativeDeleteBitmap();
            return c10;
        } else if (i4 == 180) {
            nativeRotate180();
            bitmap.recycle();
            Bitmap c11 = c(Bitmap.createBitmap(width, height, config));
            nativeDeleteBitmap();
            return c11;
        } else if (i4 == 270) {
            nativeRotate180();
            nativeRotate90();
            bitmap.recycle();
            Bitmap c12 = c(Bitmap.createBitmap(height, width, config));
            nativeDeleteBitmap();
            return c12;
        } else {
            return bitmap;
        }
    }

    private static void f(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        nativeInitBitmap(width, height);
        int[] iArr = new int[width];
        for (int i4 = 0; i4 < height; i4++) {
            bitmap.getPixels(iArr, 0, width, 0, i4, width, 1);
            nativeSetBitmapRow(i4, iArr);
        }
    }

    public static native void freeBeautifyMatrix();

    public static native void handleSmooth(Bitmap bitmap, float f10);

    public static native void handleSmoothAndWhiteSkin(Bitmap bitmap, float f10, float f11);

    public static native void handleWhiteSkin(Bitmap bitmap, float f10);

    public static native void nativeApplyAnsel();

    public static native void nativeApplyBW();

    public static native void nativeApplyCyano();

    public static native void nativeApplyGeorgia();

    public static native void nativeApplyHDR();

    public static native void nativeApplyInstafix();

    public static native void nativeApplyRetro();

    public static native void nativeApplySahara();

    public static native void nativeApplySepia();

    public static native void nativeApplyTestino();

    public static native void nativeApplyXPro();

    public static native void nativeDeleteBitmap();

    public static native void nativeFlipHorizontally();

    public static native int nativeGetBitmapHeight();

    public static native void nativeGetBitmapRow(int i4, int[] iArr);

    public static native int nativeGetBitmapWidth();

    public static native int nativeInitBitmap(int i4, int i10);

    public static native void nativeLoadResizedJpegBitmap(byte[] bArr, int i4, int i10);

    public static native void nativeResizeBitmap(int i4, int i10);

    public static native void nativeRotate180();

    public static native int nativeRotate90();

    public static native void nativeSetBitmapRow(int i4, int[] iArr);
}
