package com.airbnb.lottie.model.content;

import com.airbnb.lottie.animation.content.r;

/* compiled from: ShapePath.java */
/* loaded from: classes.dex */
public class k implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4532a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4533b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.h f4534c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4535d;

    public k(String str, int i4, com.airbnb.lottie.model.animatable.h hVar, boolean z9) {
        this.f4532a = str;
        this.f4533b = i4;
        this.f4534c = hVar;
        this.f4535d = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new r(hVar, aVar, this);
    }

    public String b() {
        return this.f4532a;
    }

    public com.airbnb.lottie.model.animatable.h c() {
        return this.f4534c;
    }

    public boolean d() {
        return this.f4535d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f4532a + ", index=" + this.f4533b + '}';
    }
}
