package com.airbnb.lottie.model.content;

import com.airbnb.lottie.animation.content.t;

/* loaded from: classes.dex */
public class ShapeTrimPath implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4473a;

    /* renamed from: b  reason: collision with root package name */
    private final Type f4474b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4475c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4476d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4477e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f4478f;

    /* loaded from: classes.dex */
    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i4) {
            if (i4 != 1) {
                if (i4 == 2) {
                    return INDIVIDUALLY;
                }
                throw new IllegalArgumentException("Unknown trim path type " + i4);
            }
            return SIMULTANEOUSLY;
        }
    }

    public ShapeTrimPath(String str, Type type, com.airbnb.lottie.model.animatable.b bVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.b bVar3, boolean z9) {
        this.f4473a = str;
        this.f4474b = type;
        this.f4475c = bVar;
        this.f4476d = bVar2;
        this.f4477e = bVar3;
        this.f4478f = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new t(aVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f4476d;
    }

    public String c() {
        return this.f4473a;
    }

    public com.airbnb.lottie.model.animatable.b d() {
        return this.f4477e;
    }

    public com.airbnb.lottie.model.animatable.b e() {
        return this.f4475c;
    }

    public Type f() {
        return this.f4474b;
    }

    public boolean g() {
        return this.f4478f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f4475c + ", end: " + this.f4476d + ", offset: " + this.f4477e + com.alipay.sdk.util.i.f6967d;
    }
}
