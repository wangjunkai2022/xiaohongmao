package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;

/* compiled from: ShapeFill.java */
/* loaded from: classes.dex */
public class i implements b {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4523a;

    /* renamed from: b  reason: collision with root package name */
    private final Path.FillType f4524b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4525c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.a f4526d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.d f4527e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f4528f;

    public i(String str, boolean z9, Path.FillType fillType, @Nullable com.airbnb.lottie.model.animatable.a aVar, @Nullable com.airbnb.lottie.model.animatable.d dVar, boolean z10) {
        this.f4525c = str;
        this.f4523a = z9;
        this.f4524b = fillType;
        this.f4526d = aVar;
        this.f4527e = dVar;
        this.f4528f = z10;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.g(hVar, aVar, this);
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.a b() {
        return this.f4526d;
    }

    public Path.FillType c() {
        return this.f4524b;
    }

    public String d() {
        return this.f4525c;
    }

    @Nullable
    public com.airbnb.lottie.model.animatable.d e() {
        return this.f4527e;
    }

    public boolean f() {
        return this.f4528f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f4523a + '}';
    }
}
