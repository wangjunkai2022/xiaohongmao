package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FillContent.java */
/* loaded from: classes.dex */
public class g implements e, a.InterfaceC0031a, k {

    /* renamed from: a  reason: collision with root package name */
    private final Path f4098a;

    /* renamed from: b  reason: collision with root package name */
    private final Paint f4099b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f4100c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4101d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4102e;

    /* renamed from: f  reason: collision with root package name */
    private final List<n> f4103f;

    /* renamed from: g  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f4104g;

    /* renamed from: h  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f4105h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f4106i;

    /* renamed from: j  reason: collision with root package name */
    private final com.airbnb.lottie.h f4107j;

    public g(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.i iVar) {
        Path path = new Path();
        this.f4098a = path;
        this.f4099b = new com.airbnb.lottie.animation.a(1);
        this.f4103f = new ArrayList();
        this.f4100c = aVar;
        this.f4101d = iVar.d();
        this.f4102e = iVar.f();
        this.f4107j = hVar;
        if (iVar.b() != null && iVar.e() != null) {
            path.setFillType(iVar.c());
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a10 = iVar.b().a();
            this.f4104g = a10;
            a10.a(this);
            aVar.h(a10);
            com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a11 = iVar.e().a();
            this.f4105h = a11;
            a11.a(this);
            aVar.h(a11);
            return;
        }
        this.f4104g = null;
        this.f4105h = null;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        this.f4107j.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        for (int i4 = 0; i4 < list2.size(); i4++) {
            c cVar = list2.get(i4);
            if (cVar instanceof n) {
                this.f4103f.add((n) cVar);
            }
        }
    }

    @Override // com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t9 == com.airbnb.lottie.m.f4358a) {
            this.f4104g.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4361d) {
            this.f4105h.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.B) {
            if (jVar == null) {
                this.f4106i = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.p pVar = new com.airbnb.lottie.animation.keyframe.p(jVar);
            this.f4106i = pVar;
            pVar.a(this);
            this.f4100c.h(this.f4106i);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.g.l(dVar, i4, list, dVar2, this);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        this.f4098a.reset();
        for (int i4 = 0; i4 < this.f4103f.size(); i4++) {
            this.f4098a.addPath(this.f4103f.get(i4).getPath(), matrix);
        }
        this.f4098a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        if (this.f4102e) {
            return;
        }
        com.airbnb.lottie.e.a("FillContent#draw");
        this.f4099b.setColor(((com.airbnb.lottie.animation.keyframe.b) this.f4104g).n());
        this.f4099b.setAlpha(com.airbnb.lottie.utils.g.c((int) ((((i4 / 255.0f) * this.f4105h.h().intValue()) / 100.0f) * 255.0f), 0, 255));
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f4106i;
        if (aVar != null) {
            this.f4099b.setColorFilter(aVar.h());
        }
        this.f4098a.reset();
        for (int i10 = 0; i10 < this.f4103f.size(); i10++) {
            this.f4098a.addPath(this.f4103f.get(i10).getPath(), matrix);
        }
        canvas.drawPath(this.f4098a, this.f4099b);
        com.airbnb.lottie.e.b("FillContent#draw");
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4101d;
    }
}
