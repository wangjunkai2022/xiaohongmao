package jp.wasabeef.glide.transformations.gpu;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageToonFilter;

/* compiled from: ToonFilterTransformation.java */
/* loaded from: classes4.dex */
public class j extends c {

    /* renamed from: i  reason: collision with root package name */
    private static final int f84426i = 1;

    /* renamed from: j  reason: collision with root package name */
    private static final String f84427j = "jp.wasabeef.glide.transformations.gpu.ToonFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final float f84428g;

    /* renamed from: h  reason: collision with root package name */
    private final float f84429h;

    public j() {
        this(0.2f, 10.0f);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84427j + this.f84428g + this.f84429h).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        if (o9 instanceof j) {
            j jVar = (j) o9;
            if (jVar.f84428g == this.f84428g && jVar.f84429h == this.f84429h) {
                return true;
            }
        }
        return false;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 1209810327 + ((int) (this.f84428g * 1000.0f)) + ((int) (this.f84429h * 10.0f));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "ToonFilterTransformation(threshold=" + this.f84428g + ",quantizationLevels=" + this.f84429h + ")";
    }

    public j(float threshold, float quantizationLevels) {
        super(new GPUImageToonFilter());
        this.f84428g = threshold;
        this.f84429h = quantizationLevels;
        GPUImageToonFilter gPUImageToonFilter = (GPUImageToonFilter) e();
        gPUImageToonFilter.setThreshold(threshold);
        gPUImageToonFilter.setQuantizationLevels(quantizationLevels);
    }
}
