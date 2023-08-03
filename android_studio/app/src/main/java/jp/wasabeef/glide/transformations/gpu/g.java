package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageSepiaToneFilter;

/* compiled from: SepiaFilterTransformation.java */
/* loaded from: classes4.dex */
public class g extends c {

    /* renamed from: h  reason: collision with root package name */
    private static final int f84416h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final String f84417i = "jp.wasabeef.glide.transformations.gpu.SepiaFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final float f84418g;

    public g() {
        this(1.0f);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84417i + this.f84418g).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof g;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 895516065 + ((int) (this.f84418g * 10.0f));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "SepiaFilterTransformation(intensity=" + this.f84418g + ")";
    }

    public g(float intensity) {
        super(new GPUImageSepiaToneFilter());
        this.f84418g = intensity;
        ((GPUImageSepiaToneFilter) e()).setIntensity(intensity);
    }
}
