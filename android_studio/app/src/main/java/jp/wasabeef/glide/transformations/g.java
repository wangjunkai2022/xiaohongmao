package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.e0;
import java.security.MessageDigest;

/* compiled from: CropSquareTransformation.java */
/* loaded from: classes4.dex */
public class g extends a {

    /* renamed from: d  reason: collision with root package name */
    private static final int f84395d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final String f84396e = "jp.wasabeef.glide.transformations.CropSquareTransformation.1";

    /* renamed from: c  reason: collision with root package name */
    private int f84397c;

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84396e + this.f84397c).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        int max = Math.max(outWidth, outHeight);
        this.f84397c = max;
        return e0.b(pool, toTransform, max, max);
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return (o9 instanceof g) && ((g) o9).f84397c == this.f84397c;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return (-789843280) + (this.f84397c * 10);
    }

    public String toString() {
        return "CropSquareTransformation(size=" + this.f84397c + ")";
    }
}
