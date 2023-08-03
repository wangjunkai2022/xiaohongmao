package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageKuwaharaFilter;

/* compiled from: KuwaharaFilterTransformation.java */
/* loaded from: classes4.dex */
public class e extends c {

    /* renamed from: h  reason: collision with root package name */
    private static final int f84410h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final String f84411i = "jp.wasabeef.glide.transformations.gpu.KuwaharaFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final int f84412g;

    public e() {
        this(25);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84411i + this.f84412g).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof e;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return (-1859800423) + (this.f84412g * 10);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "KuwaharaFilterTransformation(radius=" + this.f84412g + ")";
    }

    public e(int radius) {
        super(new GPUImageKuwaharaFilter());
        this.f84412g = radius;
        ((GPUImageKuwaharaFilter) e()).setRadius(radius);
    }
}
