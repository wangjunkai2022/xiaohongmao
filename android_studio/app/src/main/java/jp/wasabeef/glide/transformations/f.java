package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.core.view.ViewCompat;
import com.bumptech.glide.load.resource.bitmap.e0;
import java.security.MessageDigest;

/* compiled from: CropCircleWithBorderTransformation.java */
/* loaded from: classes4.dex */
public class f extends a {

    /* renamed from: e  reason: collision with root package name */
    private static final int f84391e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final String f84392f = "jp.wasabeef.glide.transformations.CropCircleWithBorderTransformation.1";

    /* renamed from: c  reason: collision with root package name */
    private final int f84393c;

    /* renamed from: d  reason: collision with root package name */
    private final int f84394d;

    public f() {
        this.f84393c = v7.c.a(4);
        this.f84394d = ViewCompat.MEASURED_STATE_MASK;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84392f + this.f84393c + this.f84394d).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        Bitmap d4 = e0.d(pool, toTransform, outWidth, outHeight);
        c(toTransform, d4);
        Paint paint = new Paint();
        paint.setColor(this.f84394d);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(this.f84393c);
        paint.setAntiAlias(true);
        new Canvas(d4).drawCircle(outWidth / 2.0f, outHeight / 2.0f, (Math.max(outWidth, outHeight) / 2.0f) - (this.f84393c / 2.0f), paint);
        return d4;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        if (o9 instanceof f) {
            f fVar = (f) o9;
            if (fVar.f84393c == this.f84393c && fVar.f84394d == this.f84394d) {
                return true;
            }
        }
        return false;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 882652245 + (this.f84393c * 100) + this.f84394d + 10;
    }

    public f(int borderSize, @ColorInt int borderColor) {
        this.f84393c = borderSize;
        this.f84394d = borderColor;
    }
}
