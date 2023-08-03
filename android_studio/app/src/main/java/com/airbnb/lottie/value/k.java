package com.airbnb.lottie.value;

import io.sentry.protocol.y;

/* compiled from: ScaleXY.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private float f5678a;

    /* renamed from: b  reason: collision with root package name */
    private float f5679b;

    public k(float f10, float f11) {
        this.f5678a = f10;
        this.f5679b = f11;
    }

    public boolean a(float f10, float f11) {
        return this.f5678a == f10 && this.f5679b == f11;
    }

    public float b() {
        return this.f5678a;
    }

    public float c() {
        return this.f5679b;
    }

    public void d(float f10, float f11) {
        this.f5678a = f10;
        this.f5679b = f11;
    }

    public String toString() {
        return b() + y.b.f83919g + c();
    }

    public k() {
        this(1.0f, 1.0f);
    }
}
