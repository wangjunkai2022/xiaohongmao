package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImagePixelationFilter;

/* compiled from: PixelationFilterTransformation.java */
/* loaded from: classes4.dex */
public class f extends c {

    /* renamed from: h  reason: collision with root package name */
    private static final int f84413h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final String f84414i = "jp.wasabeef.glide.transformations.gpu.PixelationFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final float f84415g;

    public f() {
        this(10.0f);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84414i + this.f84415g).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof f;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 1525023660 + ((int) (this.f84415g * 10.0f));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "PixelationFilterTransformation(pixel=" + this.f84415g + ")";
    }

    public f(float pixel) {
        super(new GPUImagePixelationFilter());
        this.f84415g = pixel;
        ((GPUImagePixelationFilter) e()).setPixel(pixel);
    }
}
