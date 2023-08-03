package jp.wasabeef.glide.transformations.gpu;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.util.Arrays;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageVignetteFilter;

/* compiled from: VignetteFilterTransformation.java */
/* loaded from: classes4.dex */
public class k extends c {

    /* renamed from: k  reason: collision with root package name */
    private static final int f84430k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final String f84431l = "jp.wasabeef.glide.transformations.gpu.VignetteFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final PointF f84432g;

    /* renamed from: h  reason: collision with root package name */
    private final float[] f84433h;

    /* renamed from: i  reason: collision with root package name */
    private final float f84434i;

    /* renamed from: j  reason: collision with root package name */
    private final float f84435j;

    public k() {
        this(new PointF(0.5f, 0.5f), new float[]{0.0f, 0.0f, 0.0f}, 0.0f, 0.75f);
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84431l + this.f84432g + Arrays.hashCode(this.f84433h) + this.f84434i + this.f84435j).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        if (o9 instanceof k) {
            k kVar = (k) o9;
            PointF pointF = kVar.f84432g;
            PointF pointF2 = this.f84432g;
            if (pointF.equals(pointF2.x, pointF2.y) && Arrays.equals(kVar.f84433h, this.f84433h) && kVar.f84434i == this.f84434i && kVar.f84435j == this.f84435j) {
                return true;
            }
        }
        return false;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return 1874002103 + this.f84432g.hashCode() + Arrays.hashCode(this.f84433h) + ((int) (this.f84434i * 100.0f)) + ((int) (this.f84435j * 10.0f));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "VignetteFilterTransformation(center=" + this.f84432g.toString() + ",color=" + Arrays.toString(this.f84433h) + ",start=" + this.f84434i + ",end=" + this.f84435j + ")";
    }

    public k(PointF center, float[] color, float start, float end) {
        super(new GPUImageVignetteFilter());
        this.f84432g = center;
        this.f84433h = color;
        this.f84434i = start;
        this.f84435j = end;
        GPUImageVignetteFilter gPUImageVignetteFilter = (GPUImageVignetteFilter) e();
        gPUImageVignetteFilter.setVignetteCenter(center);
        gPUImageVignetteFilter.setVignetteColor(color);
        gPUImageVignetteFilter.setVignetteStart(start);
        gPUImageVignetteFilter.setVignetteEnd(end);
    }
}
