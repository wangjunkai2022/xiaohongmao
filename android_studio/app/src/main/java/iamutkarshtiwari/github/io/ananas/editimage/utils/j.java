package iamutkarshtiwari.github.io.ananas.editimage.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import io.sentry.instrumentation.file.l;
import java.io.FileOutputStream;
import java.io.IOException;

/* compiled from: Utils.java */
/* loaded from: classes3.dex */
public class j {
    public static Bitmap a(Bitmap bitmap, float f10) {
        float[] fArr = {1.0f, 0.0f, 0.0f, 0.0f, f10, 0.0f, 1.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, 1.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        colorMatrix.set(fArr);
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
        Paint paint = new Paint();
        paint.setColorFilter(colorMatrixColorFilter);
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(copy).drawBitmap(copy, 0.0f, 0.0f, paint);
        return copy;
    }

    public static Bitmap b(Bitmap bitmap, float f10) {
        float[] fArr = {f10, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f10, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f};
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        colorMatrix.set(fArr);
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
        Paint paint = new Paint();
        paint.setColorFilter(colorMatrixColorFilter);
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(copy).drawBitmap(copy, 0.0f, 0.0f, paint);
        return copy;
    }

    public static Bitmap c(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        return BitmapFactory.decodeFile(str, options);
    }

    public static Bitmap d(Bitmap bitmap, float f10) {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(f10);
        ColorMatrixColorFilter colorMatrixColorFilter = new ColorMatrixColorFilter(colorMatrix);
        Paint paint = new Paint();
        paint.setColorFilter(colorMatrixColorFilter);
        Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, true);
        new Canvas(copy).drawBitmap(copy, 0.0f, 0.0f, paint);
        return copy;
    }

    public static Boolean e(String str, Bitmap bitmap) {
        boolean z9;
        FileOutputStream fileOutputStream = null;
        try {
            fileOutputStream = l.b.d(new FileOutputStream(str), str);
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
            if (!bitmap.isRecycled()) {
                bitmap.recycle();
            }
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused) {
                }
            }
            z9 = true;
        } catch (Exception unused2) {
            z9 = false;
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused3) {
                }
            }
        } catch (Throwable th) {
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
        return Boolean.valueOf(z9);
    }

    public static Bitmap f(Bitmap bitmap) {
        float min = Math.min(1000.0f / bitmap.getWidth(), 1000.0f / bitmap.getHeight());
        return Bitmap.createScaledBitmap(bitmap, Math.round(bitmap.getWidth() * min), Math.round(min * bitmap.getHeight()), true);
    }
}
