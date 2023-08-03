package com.airbnb.lottie.animation.content;

import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;

/* compiled from: TrimPathContent.java */
/* loaded from: classes.dex */
public class t implements c, a.InterfaceC0031a {

    /* renamed from: a  reason: collision with root package name */
    private final String f4195a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f4196b;

    /* renamed from: c  reason: collision with root package name */
    private final List<a.InterfaceC0031a> f4197c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final ShapeTrimPath.Type f4198d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4199e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4200f;

    /* renamed from: g  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4201g;

    public t(com.airbnb.lottie.model.layer.a aVar, ShapeTrimPath shapeTrimPath) {
        this.f4195a = shapeTrimPath.c();
        this.f4196b = shapeTrimPath.g();
        this.f4198d = shapeTrimPath.f();
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a10 = shapeTrimPath.e().a();
        this.f4199e = a10;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a11 = shapeTrimPath.b().a();
        this.f4200f = a11;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a12 = shapeTrimPath.d().a();
        this.f4201g = a12;
        aVar.h(a10);
        aVar.h(a11);
        aVar.h(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        for (int i4 = 0; i4 < this.f4197c.size(); i4++) {
            this.f4197c.get(i4).a();
        }
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(a.InterfaceC0031a interfaceC0031a) {
        this.f4197c.add(interfaceC0031a);
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> d() {
        return this.f4200f;
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> f() {
        return this.f4201g;
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4195a;
    }

    public com.airbnb.lottie.animation.keyframe.a<?, Float> h() {
        return this.f4199e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShapeTrimPath.Type i() {
        return this.f4198d;
    }

    public boolean j() {
        return this.f4196b;
    }
}
