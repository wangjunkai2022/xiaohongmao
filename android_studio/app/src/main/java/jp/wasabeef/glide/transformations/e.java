package jp.wasabeef.glide.transformations;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.resource.bitmap.e0;
import java.security.MessageDigest;

/* compiled from: CropCircleTransformation.java */
@Deprecated
/* loaded from: classes4.dex */
public class e extends a {

    /* renamed from: c  reason: collision with root package name */
    private static final int f84389c = 1;

    /* renamed from: d  reason: collision with root package name */
    private static final String f84390d = "jp.wasabeef.glide.transformations.CropCircleTransformation.1";

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f84390d.getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        return e0.d(pool, toTransform, outWidth, outHeight);
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof e;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 1288474723;
    }

    public String toString() {
        return "CropCircleTransformation()";
    }
}
