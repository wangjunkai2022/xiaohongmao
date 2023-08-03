package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageBrightnessFilter;

/* compiled from: BrightnessFilterTransformation.java */
/* loaded from: classes4.dex */
public class a extends c {

    /* renamed from: h  reason: collision with root package name */
    private static final int f84398h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final String f84399i = "jp.wasabeef.glide.transformations.gpu.BrightnessFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final float f84400g;

    public a() {
        this(0.0f);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84399i + this.f84400g).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        return (o9 instanceof a) && ((a) o9).f84400g == this.f84400g;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return (-1311211954) + ((int) ((this.f84400g + 1.0f) * 10.0f));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "BrightnessFilterTransformation(brightness=" + this.f84400g + ")";
    }

    public a(float brightness) {
        super(new GPUImageBrightnessFilter());
        this.f84400g = brightness;
        ((GPUImageBrightnessFilter) e()).setBrightness(brightness);
    }
}
