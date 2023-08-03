package com.airbnb.lottie.model;

import android.graphics.PointF;
import androidx.annotation.RestrictTo;

/* compiled from: CubicCurveData.java */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final PointF f4407a;

    /* renamed from: b  reason: collision with root package name */
    private final PointF f4408b;

    /* renamed from: c  reason: collision with root package name */
    private final PointF f4409c;

    public a() {
        this.f4407a = new PointF();
        this.f4408b = new PointF();
        this.f4409c = new PointF();
    }

    public PointF a() {
        return this.f4407a;
    }

    public PointF b() {
        return this.f4408b;
    }

    public PointF c() {
        return this.f4409c;
    }

    public void d(float f10, float f11) {
        this.f4407a.set(f10, f11);
    }

    public void e(float f10, float f11) {
        this.f4408b.set(f10, f11);
    }

    public void f(float f10, float f11) {
        this.f4409c.set(f10, f11);
    }

    public a(PointF pointF, PointF pointF2, PointF pointF3) {
        this.f4407a = pointF;
        this.f4408b = pointF2;
        this.f4409c = pointF3;
    }
}
