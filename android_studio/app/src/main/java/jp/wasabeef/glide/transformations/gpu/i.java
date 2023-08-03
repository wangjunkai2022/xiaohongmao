package jp.wasabeef.glide.transformations.gpu;

import android.graphics.PointF;
import androidx.annotation.NonNull;
import java.security.MessageDigest;
import jp.co.cyberagent.android.gpuimage.filter.GPUImageSwirlFilter;

/* compiled from: SwirlFilterTransformation.java */
/* loaded from: classes4.dex */
public class i extends c {

    /* renamed from: j  reason: collision with root package name */
    private static final int f84421j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final String f84422k = "jp.wasabeef.glide.transformations.gpu.SwirlFilterTransformation.1";

    /* renamed from: g  reason: collision with root package name */
    private final float f84423g;

    /* renamed from: h  reason: collision with root package name */
    private final float f84424h;

    /* renamed from: i  reason: collision with root package name */
    private final PointF f84425i;

    public i() {
        this(0.5f, 1.0f, new PointF(0.5f, 0.5f));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public void b(@NonNull MessageDigest messageDigest) {
        messageDigest.update((f84422k + this.f84423g + this.f84424h + this.f84425i.hashCode()).getBytes(com.bumptech.glide.load.c.f8527b));
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public boolean equals(Object o9) {
        if (o9 instanceof i) {
            i iVar = (i) o9;
            float f10 = iVar.f84423g;
            float f11 = this.f84423g;
            if (f10 == f11 && iVar.f84424h == f11) {
                PointF pointF = iVar.f84425i;
                PointF pointF2 = this.f84425i;
                if (pointF.equals(pointF2.x, pointF2.y)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c, jp.wasabeef.glide.transformations.a, com.bumptech.glide.load.c
    public int hashCode() {
        return (-981084566) + ((int) (this.f84423g * 1000.0f)) + ((int) (this.f84424h * 10.0f)) + this.f84425i.hashCode();
    }

    @Override // jp.wasabeef.glide.transformations.gpu.c
    public String toString() {
        return "SwirlFilterTransformation(radius=" + this.f84423g + ",angle=" + this.f84424h + ",center=" + this.f84425i.toString() + ")";
    }

    public i(float radius, float angle, PointF center) {
        super(new GPUImageSwirlFilter());
        this.f84423g = radius;
        this.f84424h = angle;
        this.f84425i = center;
        GPUImageSwirlFilter gPUImageSwirlFilter = (GPUImageSwirlFilter) e();
        gPUImageSwirlFilter.setRadius(radius);
        gPUImageSwirlFilter.setAngle(angle);
        gPUImageSwirlFilter.setCenter(center);
    }
}
