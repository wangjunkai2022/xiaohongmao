package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: MaskTransformation.java */
/* loaded from: classes4.dex */
public class i extends a {

    /* renamed from: d  reason: collision with root package name */
    private static final int f84438d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final String f84439e = "jp.wasabeef.glide.transformations.MaskTransformation.1";

    /* renamed from: f  reason: collision with root package name */
    private static final Paint f84440f;

    /* renamed from: c  reason: collision with root package name */
    private final int f84441c;

    static {
        Paint paint = new Paint();
        f84440f = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    }

    public i(int maskId) {
        this.f84441c = maskId;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84439e + this.f84441c).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int width = toTransform.getWidth();
        int height = toTransform.getHeight();
        Bitmap e4 = pool.e(width, height, Bitmap.Config.ARGB_8888);
        e4.setHasAlpha(true);
        Drawable drawable = context.getDrawable(this.f84441c);
        c(toTransform, e4);
        Canvas canvas = new Canvas(e4);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, f84440f);
        return e4;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return (o9 instanceof i) && ((i) o9).f84441c == this.f84441c;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return (-1949385457) + (this.f84441c * 10);
    }

    public String toString() {
        return "MaskTransformation(maskId=" + this.f84441c + ")";
    }
}
