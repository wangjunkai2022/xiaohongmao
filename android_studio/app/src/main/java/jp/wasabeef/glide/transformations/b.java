package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.renderscript.RSRuntimeException;
import androidx.annotation.NonNull;
import java.security.MessageDigest;

/* compiled from: BlurTransformation.java */
/* loaded from: classes4.dex */
public class b extends a {

    /* renamed from: e  reason: collision with root package name */
    private static final int f84377e = 1;

    /* renamed from: f  reason: collision with root package name */
    private static final String f84378f = "jp.wasabeef.glide.transformations.BlurTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private static final int f84379g = 25;

    /* renamed from: h  reason: collision with root package name */
    private static final int f84380h = 1;

    /* renamed from: c  reason: collision with root package name */
    private final int f84381c;

    /* renamed from: d  reason: collision with root package name */
    private final int f84382d;

    public b() {
        this(25, 1);
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84378f + this.f84381c + this.f84382d).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int width = toTransform.getWidth();
        int height = toTransform.getHeight();
        int i4 = this.f84382d;
        Bitmap e4 = pool.e(width / i4, height / i4, Bitmap.Config.ARGB_8888);
        c(toTransform, e4);
        Canvas canvas = new Canvas(e4);
        int i10 = this.f84382d;
        canvas.scale(1.0f / i10, 1.0f / i10);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(toTransform, 0.0f, 0.0f, paint);
        try {
            return v7.b.a(context, e4, this.f84381c);
        } catch (RSRuntimeException unused) {
            return v7.a.a(e4, this.f84381c, true);
        }
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        if (o9 instanceof b) {
            b bVar = (b) o9;
            if (bVar.f84381c == this.f84381c && bVar.f84382d == this.f84382d) {
                return true;
            }
        }
        return false;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 737513610 + (this.f84381c * 1000) + (this.f84382d * 10);
    }

    public String toString() {
        return "BlurTransformation(radius=" + this.f84381c + ", sampling=" + this.f84382d + ")";
    }

    public b(int radius) {
        this(radius, 1);
    }

    public b(int radius, int sampling) {
        this.f84381c = radius;
        this.f84382d = sampling;
    }
}
