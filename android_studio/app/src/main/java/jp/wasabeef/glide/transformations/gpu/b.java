package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageContrastFilter;

/* compiled from: ContrastFilterTransformation.java */
/* loaded from: classes4.dex */
public class b extends c {

    /* renamed from: h  reason: collision with root package name */
    private static final int f84401h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final String f84402i = "jp.wasabeef.glide.transformations.gpu.ContrastFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final float f84403g;

    public b() {
        this(1.0f);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84402i + this.f84403g).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return o9 instanceof b;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return (-306633601) + ((int) (this.f84403g * 10.0f));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "ContrastFilterTransformation(contrast=" + this.f84403g + ")";
    }

    public b(float contrast) {
        super(new GPUImageContrastFilter());
        this.f84403g = contrast;
        ((GPUImageContrastFilter) e()).setContrast(contrast);
    }
}
