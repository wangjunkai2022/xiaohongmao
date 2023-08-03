package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.model.animatable.m;

/* compiled from: CircleShape.java */
/* loaded from: classes.dex */
public class a implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4480a;

    /* renamed from: b  reason: collision with root package name */
    private final m<PointF, PointF> f4481b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f4482c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4483d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4484e;

    public a(String str, m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.f fVar, boolean z9, boolean z10) {
        this.f4480a = str;
        this.f4481b = mVar;
        this.f4482c = fVar;
        this.f4483d = z9;
        this.f4484e = z10;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.f(hVar, aVar, this);
    }

    public String b() {
        return this.f4480a;
    }

    public m<PointF, PointF> c() {
        return this.f4481b;
    }

    public com.airbnb.lottie.model.animatable.f d() {
        return this.f4482c;
    }

    public boolean e() {
        return this.f4484e;
    }

    public boolean f() {
        return this.f4483d;
    }
}
