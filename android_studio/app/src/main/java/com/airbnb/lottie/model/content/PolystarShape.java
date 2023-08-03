package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.animation.content.o;
import com.airbnb.lottie.model.animatable.m;

/* loaded from: classes.dex */
public class PolystarShape implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4447a;

    /* renamed from: b  reason: collision with root package name */
    private final Type f4448b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4449c;

    /* renamed from: d  reason: collision with root package name */
    private final m<PointF, PointF> f4450d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4451e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4452f;

    /* renamed from: g  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4453g;

    /* renamed from: h  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4454h;

    /* renamed from: i  reason: collision with root package name */
    private final com.airbnb.lottie.model.animatable.b f4455i;

    /* renamed from: j  reason: collision with root package name */
    private final boolean f4456j;

    /* loaded from: classes.dex */
    public enum Type {
        STAR(1),
        POLYGON(2);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f4458a;

        Type(int i4) {
            this.f4458a = i4;
        }

        public static Type forValue(int i4) {
            Type[] values;
            for (Type type : values()) {
                if (type.f4458a == i4) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, com.airbnb.lottie.model.animatable.b bVar, m<PointF, PointF> mVar, com.airbnb.lottie.model.animatable.b bVar2, com.airbnb.lottie.model.animatable.b bVar3, com.airbnb.lottie.model.animatable.b bVar4, com.airbnb.lottie.model.animatable.b bVar5, com.airbnb.lottie.model.animatable.b bVar6, boolean z9) {
        this.f4447a = str;
        this.f4448b = type;
        this.f4449c = bVar;
        this.f4450d = mVar;
        this.f4451e = bVar2;
        this.f4452f = bVar3;
        this.f4453g = bVar4;
        this.f4454h = bVar5;
        this.f4455i = bVar6;
        this.f4456j = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new o(hVar, aVar, this);
    }

    public com.airbnb.lottie.model.animatable.b b() {
        return this.f4452f;
    }

    public com.airbnb.lottie.model.animatable.b c() {
        return this.f4454h;
    }

    public String d() {
        return this.f4447a;
    }

    public com.airbnb.lottie.model.animatable.b e() {
        return this.f4453g;
    }

    public com.airbnb.lottie.model.animatable.b f() {
        return this.f4455i;
    }

    public com.airbnb.lottie.model.animatable.b g() {
        return this.f4449c;
    }

    public m<PointF, PointF> h() {
        return this.f4450d;
    }

    public com.airbnb.lottie.model.animatable.b i() {
        return this.f4451e;
    }

    public Type j() {
        return this.f4448b;
    }

    public boolean k() {
        return this.f4456j;
    }
}
