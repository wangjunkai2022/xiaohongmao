package com.airbnb.lottie.utils;

/* compiled from: MeanCalculator.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private float f5637a;

    /* renamed from: b  reason: collision with root package name */
    private int f5638b;

    public void a(float f10) {
        float f11 = this.f5637a + f10;
        this.f5637a = f11;
        int i4 = this.f5638b + 1;
        this.f5638b = i4;
        if (i4 == Integer.MAX_VALUE) {
            this.f5637a = f11 / 2.0f;
            this.f5638b = i4 / 2;
        }
    }

    public float b() {
        int i4 = this.f5638b;
        if (i4 == 0) {
            return 0.0f;
        }
        return this.f5637a / i4;
    }
}
