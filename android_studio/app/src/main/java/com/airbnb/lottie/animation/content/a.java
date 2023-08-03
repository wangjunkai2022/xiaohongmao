package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BaseStrokeContent.java */
/* loaded from: classes.dex */
public abstract class a implements a.InterfaceC0031a, k, e {

    /* renamed from: e  reason: collision with root package name */
    private final com.airbnb.lottie.h f4065e;

    /* renamed from: f  reason: collision with root package name */
    protected final com.airbnb.lottie.model.layer.a f4066f;

    /* renamed from: h  reason: collision with root package name */
    private final float[] f4068h;

    /* renamed from: i  reason: collision with root package name */
    final Paint f4069i;

    /* renamed from: j  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4070j;

    /* renamed from: k  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Integer> f4071k;

    /* renamed from: l  reason: collision with root package name */
    private final List<com.airbnb.lottie.animation.keyframe.a<?, Float>> f4072l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<?, Float> f4073m;
    @Nullable

    /* renamed from: n  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f4074n;

    /* renamed from: a  reason: collision with root package name */
    private final PathMeasure f4061a = new PathMeasure();

    /* renamed from: b  reason: collision with root package name */
    private final Path f4062b = new Path();

    /* renamed from: c  reason: collision with root package name */
    private final Path f4063c = new Path();

    /* renamed from: d  reason: collision with root package name */
    private final RectF f4064d = new RectF();

    /* renamed from: g  reason: collision with root package name */
    private final List<b> f4067g = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseStrokeContent.java */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final List<n> f4075a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final t f4076b;

        private b(@Nullable t tVar) {
            this.f4075a = new ArrayList();
            this.f4076b = tVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, Paint.Cap cap, Paint.Join join, float f10, com.airbnb.lottie.model.animatable.d dVar, com.airbnb.lottie.model.animatable.b bVar, List<com.airbnb.lottie.model.animatable.b> list, com.airbnb.lottie.model.animatable.b bVar2) {
        com.airbnb.lottie.animation.a aVar2 = new com.airbnb.lottie.animation.a(1);
        this.f4069i = aVar2;
        this.f4065e = hVar;
        this.f4066f = aVar;
        aVar2.setStyle(Paint.Style.STROKE);
        aVar2.setStrokeCap(cap);
        aVar2.setStrokeJoin(join);
        aVar2.setStrokeMiter(f10);
        this.f4071k = dVar.a();
        this.f4070j = bVar.a();
        if (bVar2 == null) {
            this.f4073m = null;
        } else {
            this.f4073m = bVar2.a();
        }
        this.f4072l = new ArrayList(list.size());
        this.f4068h = new float[list.size()];
        for (int i4 = 0; i4 < list.size(); i4++) {
            this.f4072l.add(list.get(i4).a());
        }
        aVar.h(this.f4071k);
        aVar.h(this.f4070j);
        for (int i10 = 0; i10 < this.f4072l.size(); i10++) {
            aVar.h(this.f4072l.get(i10));
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar3 = this.f4073m;
        if (aVar3 != null) {
            aVar.h(aVar3);
        }
        this.f4071k.a(this);
        this.f4070j.a(this);
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f4072l.get(i11).a(this);
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar4 = this.f4073m;
        if (aVar4 != null) {
            aVar4.a(this);
        }
    }

    private void f(Matrix matrix) {
        com.airbnb.lottie.e.a("StrokeContent#applyDashPattern");
        if (this.f4072l.isEmpty()) {
            com.airbnb.lottie.e.b("StrokeContent#applyDashPattern");
            return;
        }
        float g4 = com.airbnb.lottie.utils.h.g(matrix);
        for (int i4 = 0; i4 < this.f4072l.size(); i4++) {
            this.f4068h[i4] = this.f4072l.get(i4).h().floatValue();
            if (i4 % 2 == 0) {
                float[] fArr = this.f4068h;
                if (fArr[i4] < 1.0f) {
                    fArr[i4] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f4068h;
                if (fArr2[i4] < 0.1f) {
                    fArr2[i4] = 0.1f;
                }
            }
            float[] fArr3 = this.f4068h;
            fArr3[i4] = fArr3[i4] * g4;
        }
        com.airbnb.lottie.animation.keyframe.a<?, Float> aVar = this.f4073m;
        this.f4069i.setPathEffect(new DashPathEffect(this.f4068h, aVar == null ? 0.0f : g4 * aVar.h().floatValue()));
        com.airbnb.lottie.e.b("StrokeContent#applyDashPattern");
    }

    private void h(Canvas canvas, b bVar, Matrix matrix) {
        com.airbnb.lottie.e.a("StrokeContent#applyTrimPath");
        if (bVar.f4076b == null) {
            com.airbnb.lottie.e.b("StrokeContent#applyTrimPath");
            return;
        }
        this.f4062b.reset();
        for (int size = bVar.f4075a.size() - 1; size >= 0; size--) {
            this.f4062b.addPath(((n) bVar.f4075a.get(size)).getPath(), matrix);
        }
        this.f4061a.setPath(this.f4062b, false);
        float length = this.f4061a.getLength();
        while (this.f4061a.nextContour()) {
            length += this.f4061a.getLength();
        }
        float floatValue = (bVar.f4076b.f().h().floatValue() * length) / 360.0f;
        float floatValue2 = ((bVar.f4076b.h().h().floatValue() * length) / 100.0f) + floatValue;
        float floatValue3 = ((bVar.f4076b.d().h().floatValue() * length) / 100.0f) + floatValue;
        float f10 = 0.0f;
        for (int size2 = bVar.f4075a.size() - 1; size2 >= 0; size2--) {
            this.f4063c.set(((n) bVar.f4075a.get(size2)).getPath());
            this.f4063c.transform(matrix);
            this.f4061a.setPath(this.f4063c, false);
            float length2 = this.f4061a.getLength();
            if (floatValue3 > length) {
                float f11 = floatValue3 - length;
                if (f11 < f10 + length2 && f10 < f11) {
                    com.airbnb.lottie.utils.h.a(this.f4063c, floatValue2 > length ? (floatValue2 - length) / length2 : 0.0f, Math.min(f11 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f4063c, this.f4069i);
                    f10 += length2;
                }
            }
            float f12 = f10 + length2;
            if (f12 >= floatValue2 && f10 <= floatValue3) {
                if (f12 <= floatValue3 && floatValue2 < f10) {
                    canvas.drawPath(this.f4063c, this.f4069i);
                } else {
                    com.airbnb.lottie.utils.h.a(this.f4063c, floatValue2 < f10 ? 0.0f : (floatValue2 - f10) / length2, floatValue3 <= f12 ? (floatValue3 - f10) / length2 : 1.0f, 0.0f);
                    canvas.drawPath(this.f4063c, this.f4069i);
                }
            }
            f10 += length2;
        }
        com.airbnb.lottie.e.b("StrokeContent#applyTrimPath");
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        this.f4065e.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        t tVar = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            c cVar = list.get(size);
            if (cVar instanceof t) {
                t tVar2 = (t) cVar;
                if (tVar2.i() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    tVar = tVar2;
                }
            }
        }
        if (tVar != null) {
            tVar.c(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            c cVar2 = list2.get(size2);
            if (cVar2 instanceof t) {
                t tVar3 = (t) cVar2;
                if (tVar3.i() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (bVar != null) {
                        this.f4067g.add(bVar);
                    }
                    bVar = new b(tVar3);
                    tVar3.c(this);
                }
            }
            if (cVar2 instanceof n) {
                if (bVar == null) {
                    bVar = new b(tVar);
                }
                bVar.f4075a.add((n) cVar2);
            }
        }
        if (bVar != null) {
            this.f4067g.add(bVar);
        }
    }

    @Override // com.airbnb.lottie.model.e
    @CallSuper
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t9 == com.airbnb.lottie.m.f4361d) {
            this.f4071k.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.f4372o) {
            this.f4070j.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.B) {
            if (jVar == null) {
                this.f4074n = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.p pVar = new com.airbnb.lottie.animation.keyframe.p(jVar);
            this.f4074n = pVar;
            pVar.a(this);
            this.f4066f.h(this.f4074n);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.g.l(dVar, i4, list, dVar2, this);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        com.airbnb.lottie.e.a("StrokeContent#getBounds");
        this.f4062b.reset();
        for (int i4 = 0; i4 < this.f4067g.size(); i4++) {
            b bVar = this.f4067g.get(i4);
            for (int i10 = 0; i10 < bVar.f4075a.size(); i10++) {
                this.f4062b.addPath(((n) bVar.f4075a.get(i10)).getPath(), matrix);
            }
        }
        this.f4062b.computeBounds(this.f4064d, false);
        float n9 = ((com.airbnb.lottie.animation.keyframe.c) this.f4070j).n();
        RectF rectF2 = this.f4064d;
        float f10 = n9 / 2.0f;
        rectF2.set(rectF2.left - f10, rectF2.top - f10, rectF2.right + f10, rectF2.bottom + f10);
        rectF.set(this.f4064d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.airbnb.lottie.e.b("StrokeContent#getBounds");
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        com.airbnb.lottie.e.a("StrokeContent#draw");
        if (com.airbnb.lottie.utils.h.h(matrix)) {
            com.airbnb.lottie.e.b("StrokeContent#draw");
            return;
        }
        this.f4069i.setAlpha(com.airbnb.lottie.utils.g.c((int) ((((i4 / 255.0f) * ((com.airbnb.lottie.animation.keyframe.e) this.f4071k).n()) / 100.0f) * 255.0f), 0, 255));
        this.f4069i.setStrokeWidth(((com.airbnb.lottie.animation.keyframe.c) this.f4070j).n() * com.airbnb.lottie.utils.h.g(matrix));
        if (this.f4069i.getStrokeWidth() <= 0.0f) {
            com.airbnb.lottie.e.b("StrokeContent#draw");
            return;
        }
        f(matrix);
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f4074n;
        if (aVar != null) {
            this.f4069i.setColorFilter(aVar.h());
        }
        for (int i10 = 0; i10 < this.f4067g.size(); i10++) {
            b bVar = this.f4067g.get(i10);
            if (bVar.f4076b != null) {
                h(canvas, bVar, matrix);
            } else {
                com.airbnb.lottie.e.a("StrokeContent#buildPath");
                this.f4062b.reset();
                for (int size = bVar.f4075a.size() - 1; size >= 0; size--) {
                    this.f4062b.addPath(((n) bVar.f4075a.get(size)).getPath(), matrix);
                }
                com.airbnb.lottie.e.b("StrokeContent#buildPath");
                com.airbnb.lottie.e.a("StrokeContent#drawPath");
                canvas.drawPath(this.f4062b, this.f4069i);
                com.airbnb.lottie.e.b("StrokeContent#drawPath");
            }
        }
        com.airbnb.lottie.e.b("StrokeContent#draw");
    }
}
