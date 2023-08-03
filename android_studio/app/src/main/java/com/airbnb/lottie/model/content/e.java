package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.model.content.ShapeStroke;
import java.util.List;

/* compiled from: GradientStroke.java */
/* loaded from: classes.dex */
public class e implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4497a;

    /* renamed from: b  reason: collision with root package name */
    private final GradientType f4498b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.c f4499c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f4500d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f4501e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f4502f;

    /* renamed from: g  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4503g;

    /* renamed from: h  reason: collision with root package name */
    private final ShapeStroke.LineCapType f4504h;

    /* renamed from: i  reason: collision with root package name */
    private final ShapeStroke.LineJoinType f4505i;

    /* renamed from: j  reason: collision with root package name */
    private final float f4506j;

    /* renamed from: k  reason: collision with root package name */
    private final List<com.airbnb.lottie.model.animatable.b> f4507k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4508l;

    /* renamed from: m  reason: collision with root package name */
    private final boolean f4509m;

    public e(String str, GradientType gradientType, com.airbnb.lottie.model.animatable.c cVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.f fVar, com.airbnb.lottie.model.animatable.f fVar2, com.airbnb.lottie.model.animatable.b bVar, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f10, List<com.airbnb.lottie.model.animatable.b> list, @Nullable com.airbnb.lottie.model.animatable.b bVar2, boolean z9) {
        this.f4497a = str;
        this.f4498b = gradientType;
        this.f4499c = cVar;
        this.f4500d = dVar;
        this.f4501e = fVar;
        this.f4502f = fVar2;
        this.f4503g = bVar;
        this.f4504h = lineCapType;
        this.f4505i = lineJoinType;
        this.f4506j = f10;
        this.f4507k = list;
        this.f4508l = bVar2;
        this.f4509m = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.i(hVar, aVar, this);
    }

    public ShapeStroke.LineCapType b() {
        return this.f4504h;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.b c() {
        return this.f4508l;
    }

    public com.airbnb.lottie.model.animatable.f d() {
        return this.f4502f;
    }

    public com.airbnb.lottie.model.animatable.c e() {
        return this.f4499c;
    }

    public GradientType f() {
        return this.f4498b;
    }

    public ShapeStroke.LineJoinType g() {
        return this.f4505i;
    }

    public List<com.airbnb.lottie.model.animatable.b> h() {
        return this.f4507k;
    }

    public float i() {
        return this.f4506j;
    }

    public String j() {
        return this.f4497a;
    }

    public com.airbnb.lottie.model.animatable.d k() {
        return this.f4500d;
    }

    public com.airbnb.lottie.model.animatable.f l() {
        return this.f4501e;
    }

    public com.airbnb.lottie.model.animatable.b m() {
        return this.f4503g;
    }

    public boolean n() {
        return this.f4509m;
    }
}
