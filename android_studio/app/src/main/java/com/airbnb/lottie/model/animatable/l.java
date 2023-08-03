package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import androidx.annotation.Nullable;

/* compiled from: AnimatableTransform.java */
/* loaded from: classes.dex */
public class l implements com.airbnb.lottie.animation.content.m, com.airbnb.lottie.model.content.b {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final e f4417a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final m<PointF, PointF> f4418b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final g f4419c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final b f4420d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final d f4421e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private final b f4422f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final b f4423g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final b f4424h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final b f4425i;

    public l() {
        this(null, null, null, null, null, null, null, null, null);
    }

    @Override // com.airbnb.lottie.model.content.b
    @Nullable
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return null;
    }

    public com.airbnb.lottie.animation.keyframe.o b() {
        return new com.airbnb.lottie.animation.keyframe.o(this);
    }

    @Nullable
    public e c() {
        return this.f4417a;
    }

    @Nullable
    public b d() {
        return this.f4425i;
    }

    @Nullable
    public d e() {
        return this.f4421e;
    }

    @Nullable
    public m<PointF, PointF> f() {
        return this.f4418b;
    }

    @Nullable
    public b g() {
        return this.f4420d;
    }

    @Nullable
    public g h() {
        return this.f4419c;
    }

    @Nullable
    public b i() {
        return this.f4422f;
    }

    @Nullable
    public b j() {
        return this.f4423g;
    }

    @Nullable
    public b k() {
        return this.f4424h;
    }

    public l(@Nullable e eVar, @Nullable m<PointF, PointF> mVar, @Nullable g gVar, @Nullable b bVar, @Nullable d dVar, @Nullable b bVar2, @Nullable b bVar3, @Nullable b bVar4, @Nullable b bVar5) {
        this.f4417a = eVar;
        this.f4418b = mVar;
        this.f4419c = gVar;
        this.f4420d = bVar;
        this.f4421e = dVar;
        this.f4424h = bVar2;
        this.f4425i = bVar3;
        this.f4422f = bVar4;
        this.f4423g = bVar5;
    }
}
