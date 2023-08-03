package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: ColorFilterTransformation.java */
/* loaded from: classes4.dex */
public class d extends a {

    /* renamed from: d  reason: collision with root package name */
    private static final int f84386d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final String f84387e = "jp.wasabeef.glide.transformations.ColorFilterTransformation.1";

    /* renamed from: c  reason: collision with root package name */
    private final int f84388c;

    public d(int color) {
        this.f84388c = color;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84387e + this.f84388c).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        Bitmap e4 = pool.e(toTransform.getWidth(), toTransform.getHeight(), toTransform.getConfig() != null ? toTransform.getConfig() : Bitmap.Config.ARGB_8888);
        c(toTransform, e4);
        Canvas canvas = new Canvas(e4);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColorFilter(new PorterDuffColorFilter(this.f84388c, PorterDuff.Mode.SRC_ATOP));
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, paint);
        return e4;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return (o9 instanceof d) && ((d) o9).f84388c == this.f84388c;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 705373712 + (this.f84388c * 10);
    }

    public String toString() {
        return "ColorFilterTransformation(color=" + this.f84388c + ")";
    }
}
