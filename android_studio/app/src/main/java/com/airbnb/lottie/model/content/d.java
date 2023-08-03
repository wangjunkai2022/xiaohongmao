package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;

/* compiled from: GradientFill.java */
/* loaded from: classes.dex */
public class d implements b {

    /* renamed from: a  reason: collision with root package name */
    private final GradientType f4487a;

    /* renamed from: b  reason: collision with root package name */
    private final Path.FillType f4488b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.c f4489c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f4490d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f4491e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.f f4492f;

    /* renamed from: g  reason: collision with root package name */
    private final String f4493g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4494h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4495i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f4496j;

    public d(String str, GradientType gradientType, Path.FillType fillType, com.airbnb.lottie.model.animatable.c cVar, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.f fVar, com.airbnb.lottie.model.animatable.f fVar2, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, boolean z9) {
        this.f4487a = gradientType;
        this.f4488b = fillType;
        this.f4489c = cVar;
        this.f4490d = dVar;
        this.f4491e = fVar;
        this.f4492f = fVar2;
        this.f4493g = str;
        this.f4494h = bVar;
        this.f4495i = bVar2;
        this.f4496j = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.h(hVar, aVar, this);
    }

    public com.airbnb.lottie.model.animatable.f b() {
        return this.f4492f;
    }

    public Path.FillType c() {
        return this.f4488b;
    }

    public com.airbnb.lottie.model.animatable.c d() {
        return this.f4489c;
    }

    public GradientType e() {
        return this.f4487a;
    }

    @Nullable
    com.airbnb.lottie.model.animatable.b f() {
        return this.f4495i;
    }

    @Nullable
    com.airbnb.lottie.model.animatable.b g() {
        return this.f4494h;
    }

    public String h() {
        return this.f4493g;
    }

    public com.airbnb.lottie.model.animatable.d i() {
        return this.f4490d;
    }

    public com.airbnb.lottie.model.animatable.f j() {
        return this.f4491e;
    }

    public boolean k() {
        return this.f4496j;
    }
}
