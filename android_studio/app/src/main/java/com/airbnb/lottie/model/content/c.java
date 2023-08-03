package com.airbnb.lottie.model.content;

/* compiled from: GradientColor.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f4485a;

    /* renamed from: b  reason: collision with root package name */
    private final int[] f4486b;

    public c(float[] fArr, int[] iArr) {
        this.f4485a = fArr;
        this.f4486b = iArr;
    }

    public int[] a() {
        return this.f4486b;
    }

    public float[] b() {
        return this.f4485a;
    }

    public int c() {
        return this.f4486b.length;
    }

    public void d(c cVar, c cVar2, float f10) {
        if (cVar.f4486b.length == cVar2.f4486b.length) {
            for (int i4 = 0; i4 < cVar.f4486b.length; i4++) {
                this.f4485a[i4] = com.airbnb.lottie.utils.g.j(cVar.f4485a[i4], cVar2.f4485a[i4], f10);
                this.f4486b[i4] = com.airbnb.lottie.utils.b.c(f10, cVar.f4486b[i4], cVar2.f4486b[i4]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + cVar.f4486b.length + " vs " + cVar2.f4486b.length + ")");
    }
}
