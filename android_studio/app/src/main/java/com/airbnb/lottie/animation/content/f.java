package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

/* compiled from: EllipseContent.java */
/* loaded from: classes.dex */
public class f implements n, a.InterfaceC0031a, k {

    /* renamed from: i  reason: collision with root package name */
    private static final float f4089i = 0.55228f;

    /* renamed from: b  reason: collision with root package name */
    private final String f4091b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.h f4092c;

    /* renamed from: d  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f4093d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f4094e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.model.content.a f4095f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f4097h;

    /* renamed from: a  reason: collision with root package name */
    private final Path f4090a = new Path();

    /* renamed from: g  reason: collision with root package name */
    private b f4096g = new b();

    public f(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.a aVar2) {
        this.f4091b = aVar2.b();
        this.f4092c = hVar;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a10 = aVar2.d().a();
        this.f4093d = a10;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a11 = aVar2.c().a();
        this.f4094e = a11;
        this.f4095f = aVar2;
        aVar.h(a10);
        aVar.h(a11);
        a10.a(this);
        a11.a(this);
    }

    private void f() {
        this.f4097h = false;
        this.f4092c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        f();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        for (int i4 = 0; i4 < list.size(); i4++) {
            c cVar = list.get(i4);
            if (cVar instanceof t) {
                t tVar = (t) cVar;
                if (tVar.i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f4096g.a(tVar);
                    tVar.c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t9 == com.airbnb.lottie.m.f4364g) {
            this.f4093d.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4367j) {
            this.f4094e.m(jVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.g.l(dVar, i4, list, dVar2, this);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4091b;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        if (this.f4097h) {
            return this.f4090a;
        }
        this.f4090a.reset();
        if (this.f4095f.e()) {
            this.f4097h = true;
            return this.f4090a;
        }
        PointF h4 = this.f4093d.h();
        float f10 = h4.x / 2.0f;
        float f11 = h4.y / 2.0f;
        float f12 = f10 * f4089i;
        float f13 = f4089i * f11;
        this.f4090a.reset();
        if (this.f4095f.f()) {
            float f14 = -f11;
            this.f4090a.moveTo(0.0f, f14);
            float f15 = 0.0f - f12;
            float f16 = -f10;
            float f17 = 0.0f - f13;
            this.f4090a.cubicTo(f15, f14, f16, f17, f16, 0.0f);
            float f18 = f13 + 0.0f;
            this.f4090a.cubicTo(f16, f18, f15, f11, 0.0f, f11);
            float f19 = f12 + 0.0f;
            this.f4090a.cubicTo(f19, f11, f10, f18, f10, 0.0f);
            this.f4090a.cubicTo(f10, f17, f19, f14, 0.0f, f14);
        } else {
            float f20 = -f11;
            this.f4090a.moveTo(0.0f, f20);
            float f21 = f12 + 0.0f;
            float f22 = 0.0f - f13;
            this.f4090a.cubicTo(f21, f20, f10, f22, f10, 0.0f);
            float f23 = f13 + 0.0f;
            this.f4090a.cubicTo(f10, f23, f21, f11, 0.0f, f11);
            float f24 = 0.0f - f12;
            float f25 = -f10;
            this.f4090a.cubicTo(f24, f11, f25, f23, f25, 0.0f);
            this.f4090a.cubicTo(f25, f22, f24, f20, 0.0f, f20);
        }
        PointF h10 = this.f4094e.h();
        this.f4090a.offset(h10.x, h10.y);
        this.f4090a.close();
        this.f4096g.b(this.f4090a);
        this.f4097h = true;
        return this.f4090a;
    }
}
