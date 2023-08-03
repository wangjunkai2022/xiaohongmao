package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: GrayscaleTransformation.java */
/* loaded from: classes4.dex */
public class h extends a {

    /* renamed from: c  reason: collision with root package name */
    private static final int f84436c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final String f84437d = "jp.wasabeef.glide.transformations.GrayscaleTransformation.1";

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f84437d.getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        Bitmap e4 = pool.e(toTransform.getWidth(), toTransform.getHeight(), toTransform.getConfig() != null ? toTransform.getConfig() : Bitmap.Config.ARGB_8888);
        c(toTransform, e4);
        Canvas canvas = new Canvas(e4);
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.0f);
        Paint paint = new Paint();
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, paint);
        return e4;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof h;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return -1580689316;
    }

    public String toString() {
        return "GrayscaleTransformation()";
    }
}
