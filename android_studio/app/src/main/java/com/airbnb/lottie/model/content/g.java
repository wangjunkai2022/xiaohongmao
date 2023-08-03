package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.content.q;

/* compiled from: Repeater.java */
/* loaded from: classes.dex */
public class g implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4515a;

    /* renamed from: b  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4516b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4517c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.l f4518d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4519e;

    public g(String str, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.l lVar, boolean z9) {
        this.f4515a = str;
        this.f4516b = bVar;
        this.f4517c = bVar2;
        this.f4518d = lVar;
        this.f4519e = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    @Nullable
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new q(hVar, aVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f4516b;
    }

    public String c() {
        return this.f4515a;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.f4517c;
    }

    public com.airbnb.lottie.model.animatable.l e() {
        return this.f4518d;
    }

    public boolean f() {
        return this.f4519e;
    }
}
