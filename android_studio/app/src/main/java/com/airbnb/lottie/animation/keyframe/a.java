package com.airbnb.lottie.animation.keyframe;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BaseKeyframeAnimation.java */
/* loaded from: classes.dex */
public abstract class a<K, A> {

    /* renamed from: c  reason: collision with root package name */
    private final List<? extends com.airbnb.lottie.value.a<K>> f4204c;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    protected com.airbnb.lottie.value.j<A> f4206e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private com.airbnb.lottie.value.a<K> f4207f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private com.airbnb.lottie.value.a<K> f4208g;

    /* renamed from: a  reason: collision with root package name */
    final List<InterfaceC0031a> f4202a = new ArrayList(1);

    /* renamed from: b  reason: collision with root package name */
    private boolean f4203b = false;

    /* renamed from: d  reason: collision with root package name */
    private float f4205d = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private float f4209h = -1.0f;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private A f4210i = null;

    /* renamed from: j  reason: collision with root package name */
    private float f4211j = -1.0f;

    /* renamed from: k  reason: collision with root package name */
    private float f4212k = -1.0f;

    /* compiled from: BaseKeyframeAnimation.java */
    /* renamed from: com.airbnb.lottie.animation.keyframe.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0031a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(List<? extends com.airbnb.lottie.value.a<K>> list) {
        this.f4204c = list;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    private float g() {
        if (this.f4211j == -1.0f) {
            this.f4211j = this.f4204c.isEmpty() ? 0.0f : this.f4204c.get(0).e();
        }
        return this.f4211j;
    }

    public void a(InterfaceC0031a interfaceC0031a) {
        this.f4202a.add(interfaceC0031a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.airbnb.lottie.value.a<K> b() {
        List<? extends com.airbnb.lottie.value.a<K>> list;
        com.airbnb.lottie.e.a("BaseKeyframeAnimation#getCurrentKeyframe");
        com.airbnb.lottie.value.a<K> aVar = this.f4207f;
        if (aVar != null && aVar.a(this.f4205d)) {
            com.airbnb.lottie.e.b("BaseKeyframeAnimation#getCurrentKeyframe");
            return this.f4207f;
        }
        com.airbnb.lottie.value.a<K> aVar2 = this.f4204c.get(list.size() - 1);
        if (this.f4205d < aVar2.e()) {
            for (int size = this.f4204c.size() - 1; size >= 0; size--) {
                aVar2 = this.f4204c.get(size);
                if (aVar2.a(this.f4205d)) {
                    break;
                }
            }
        }
        this.f4207f = aVar2;
        com.airbnb.lottie.e.b("BaseKeyframeAnimation#getCurrentKeyframe");
        return aVar2;
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    float c() {
        float b10;
        if (this.f4212k == -1.0f) {
            if (this.f4204c.isEmpty()) {
                b10 = 1.0f;
            } else {
                List<? extends com.airbnb.lottie.value.a<K>> list = this.f4204c;
                b10 = list.get(list.size() - 1).b();
            }
            this.f4212k = b10;
        }
        return this.f4212k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float d() {
        com.airbnb.lottie.value.a<K> b10 = b();
        if (b10.h()) {
            return 0.0f;
        }
        return b10.f5652d.getInterpolation(e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float e() {
        if (this.f4203b) {
            return 0.0f;
        }
        com.airbnb.lottie.value.a<K> b10 = b();
        if (b10.h()) {
            return 0.0f;
        }
        return (this.f4205d - b10.e()) / (b10.b() - b10.e());
    }

    public float f() {
        return this.f4205d;
    }

    public A h() {
        com.airbnb.lottie.value.a<K> b10 = b();
        float d4 = d();
        if (this.f4206e == null && b10 == this.f4208g && this.f4209h == d4) {
            return this.f4210i;
        }
        this.f4208g = b10;
        this.f4209h = d4;
        A i4 = i(b10, d4);
        this.f4210i = i4;
        return i4;
    }

    abstract A i(com.airbnb.lottie.value.a<K> aVar, float f10);

    public void j() {
        for (int i4 = 0; i4 < this.f4202a.size(); i4++) {
            this.f4202a.get(i4).a();
        }
    }

    public void k() {
        this.f4203b = true;
    }

    public void l(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        if (this.f4204c.isEmpty()) {
            return;
        }
        com.airbnb.lottie.value.a<K> b10 = b();
        if (f10 < g()) {
            f10 = g();
        } else if (f10 > c()) {
            f10 = c();
        }
        if (f10 == this.f4205d) {
            return;
        }
        this.f4205d = f10;
        com.airbnb.lottie.value.a<K> b11 = b();
        if (b10 == b11 && b11.h()) {
            return;
        }
        j();
    }

    public void m(@Nullable com.airbnb.lottie.value.j<A> jVar) {
        com.airbnb.lottie.value.j<A> jVar2 = this.f4206e;
        if (jVar2 != null) {
            jVar2.c(null);
        }
        this.f4206e = jVar;
        if (jVar != null) {
            jVar.c(this);
        }
    }
}
