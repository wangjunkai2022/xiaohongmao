package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.List;

/* compiled from: RectangleContent.java */
/* loaded from: classes.dex */
public class p implements a.InterfaceC0031a, k, n {

    /* renamed from: c  reason: collision with root package name */
    private final String f4165c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f4166d;

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.h f4167e;

    /* renamed from: f  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f4168f;

    /* renamed from: g  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, PointF> f4169g;

    /* renamed from: h  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4170h;

    /* renamed from: j  reason: collision with root package name */
    private boolean f4172j;

    /* renamed from: a  reason: collision with root package name */
    private final Path f4163a = new Path();

    /* renamed from: b  reason: collision with root package name */
    private final RectF f4164b = new RectF();

    /* renamed from: i  reason: collision with root package name */
    private b f4171i = new b();

    public p(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.f fVar) {
        this.f4165c = fVar.c();
        this.f4166d = fVar.f();
        this.f4167e = hVar;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a10 = fVar.d().a();
        this.f4168f = a10;
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a11 = fVar.e().a();
        this.f4169g = a11;
        com.airbnb.lottie.animation.keyframe.a<Float, Float> a12 = fVar.b().a();
        this.f4170h = a12;
        aVar.h(a10);
        aVar.h(a11);
        aVar.h(a12);
        a10.a(this);
        a11.a(this);
        a12.a(this);
    }

    private void f() {
        this.f4172j = false;
        this.f4167e.invalidateSelf();
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
                    this.f4171i.a(tVar);
                    tVar.c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t9 == com.airbnb.lottie.m.f4365h) {
            this.f4169g.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4367j) {
            this.f4168f.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4366i) {
            this.f4170h.m(jVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.g.l(dVar, i4, list, dVar2, this);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4165c;
    }

    @Override // com.airbnb.lottie.animation.content.n
    public Path getPath() {
        if (this.f4172j) {
            return this.f4163a;
        }
        this.f4163a.reset();
        if (this.f4166d) {
            this.f4172j = true;
            return this.f4163a;
        }
        PointF h4 = this.f4169g.h();
        float f10 = h4.x / 2.0f;
        float f11 = h4.y / 2.0f;
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.f4170h;
        float n9 = aVar == null ? 0.0f : ((com.airbnb.lottie.animation.keyframe.c) aVar).n();
        float min = Math.min(f10, f11);
        if (n9 > min) {
            n9 = min;
        }
        PointF h10 = this.f4168f.h();
        this.f4163a.moveTo(h10.x + f10, (h10.y - f11) + n9);
        this.f4163a.lineTo(h10.x + f10, (h10.y + f11) - n9);
        int i4 = (n9 > 0.0f ? 1 : (n9 == 0.0f ? 0 : -1));
        if (i4 > 0) {
            RectF rectF = this.f4164b;
            float f12 = h10.x;
            float f13 = n9 * 2.0f;
            float f14 = h10.y;
            rectF.set((f12 + f10) - f13, (f14 + f11) - f13, f12 + f10, f14 + f11);
            this.f4163a.arcTo(this.f4164b, 0.0f, 90.0f, false);
        }
        this.f4163a.lineTo((h10.x - f10) + n9, h10.y + f11);
        if (i4 > 0) {
            RectF rectF2 = this.f4164b;
            float f15 = h10.x;
            float f16 = h10.y;
            float f17 = n9 * 2.0f;
            rectF2.set(f15 - f10, (f16 + f11) - f17, (f15 - f10) + f17, f16 + f11);
            this.f4163a.arcTo(this.f4164b, 90.0f, 90.0f, false);
        }
        this.f4163a.lineTo(h10.x - f10, (h10.y - f11) + n9);
        if (i4 > 0) {
            RectF rectF3 = this.f4164b;
            float f18 = h10.x;
            float f19 = h10.y;
            float f20 = n9 * 2.0f;
            rectF3.set(f18 - f10, f19 - f11, (f18 - f10) + f20, (f19 - f11) + f20);
            this.f4163a.arcTo(this.f4164b, 180.0f, 90.0f, false);
        }
        this.f4163a.lineTo((h10.x + f10) - n9, h10.y - f11);
        if (i4 > 0) {
            RectF rectF4 = this.f4164b;
            float f21 = h10.x;
            float f22 = n9 * 2.0f;
            float f23 = h10.y;
            rectF4.set((f21 + f10) - f22, f23 - f11, f21 + f10, (f23 - f11) + f22);
            this.f4163a.arcTo(this.f4164b, 270.0f, 90.0f, false);
        }
        this.f4163a.close();
        this.f4171i.b(this.f4163a);
        this.f4172j = true;
        return this.f4163a;
    }
}
