package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageColorInvertFilter;

/* compiled from: InvertFilterTransformation.java */
/* loaded from: classes4.dex */
public class d extends c {

    /* renamed from: g  reason: collision with root package name */
    private static final int f84408g = 1;

    /* renamed from: h  reason: collision with root package name */
    private static final String f84409h = "jp.wasabeef.glide.transformations.gpu.InvertFilterTransformation.1";

    public d() {
        super(new GPUImageColorInvertFilter());
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update(f84409h.getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof d;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 2014901395;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "InvertFilterTransformation()";
    }
}
