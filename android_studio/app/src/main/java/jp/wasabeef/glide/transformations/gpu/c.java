package jp.wasabeef.glide.transformations.gpu;

import android.content.Context;
import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.GPUImage;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageFilter;

/* compiled from: GPUFilterTransformation.java */
/* loaded from: classes4.dex */
public class c extends jp.wasabeef.glide.transformations.a {

    /* renamed from: d  reason: collision with root package name */
    private static final int f84404d = 1;

    /* renamed from: e  reason: collision with root package name */
    private static final String f84405e = "jp.wasabeef.glide.transformations.gpu.GPUFilterTransformation.1";

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f84406f = f84405e.getBytes(com.bumptech.glide.load.c.f8527b);

    /* renamed from: c  reason: collision with root package name */
    private final GPUImageFilter f84407c;

    public c(GPUImageFilter filter) {
        this.f84407c = filter;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f84406f);
    }

    @Override // jp.wasabeef.glide.transformations.a
    protected Bitmap d(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.e pool, @NonNull Bitmap toTransform, int outWidth, int outHeight) {
        GPUImage gPUImage = new GPUImage(context);
        gPUImage.setImage(toTransform);
        gPUImage.setFilter(this.f84407c);
        return gPUImage.getBitmapWithFilterApplied();
    }

    public <T> T e() {
        return (T) this.f84407c;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof c;
    }

    @Override // jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 1751294359;
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
