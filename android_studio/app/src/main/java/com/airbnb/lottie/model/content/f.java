package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.animation.content.p;
import com.airbnb.lottie.model.animatable.m;

/* compiled from: RectangleShape.java */
/* loaded from: classes.dex */
public class f implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4510a;

    /* renamed from: b  reason: collision with root package name */
    private final m<PointF, PointF> f4511b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f4512c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4513d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4514e;

    public f(String str, m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.f fVar, com.airbnb.lottie.model.animatable.b bVar, boolean z9) {
        this.f4510a = str;
        this.f4511b = mVar;
        this.f4512c = fVar;
        this.f4513d = bVar;
        this.f4514e = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new p(hVar, aVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f4513d;
    }

    public String c() {
        return this.f4510a;
    }

    public m<PointF, PointF> d() {
        return this.f4511b;
    }

    public com.airbnb.lottie.model.animatable.f e() {
        return this.f4512c;
    }

    public boolean f() {
        return this.f4514e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f4511b + ", size=" + this.f4512c + '}';
    }
}
