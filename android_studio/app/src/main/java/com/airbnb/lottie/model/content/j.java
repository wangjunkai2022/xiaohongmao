package com.airbnb.lottie.model.content;

import java.util.Arrays;
import java.util.List;

/* compiled from: ShapeGroup.java */
/* loaded from: classes.dex */
public class j implements b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4529a;

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f4530b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4531c;

    public j(String str, List<b> list, boolean z9) {
        this.f4529a = str;
        this.f4530b = list;
        this.f4531c = z9;
    }

    @Override // com.airbnb.lottie.model.content.b
    public com.airbnb.lottie.animation.content.c a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar) {
        return new com.airbnb.lottie.animation.content.d(hVar, aVar, this);
    }

    public List<b> b() {
        return this.f4530b;
    }

    public String c() {
        return this.f4529a;
    }

    public boolean d() {
        return this.f4531c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f4529a + "' Shapes: " + Arrays.toString(this.f4530b.toArray()) + '}';
    }
}
