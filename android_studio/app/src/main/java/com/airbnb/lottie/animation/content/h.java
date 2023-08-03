package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.animation.keyframe.a;
import com.airbnb.lottie.model.content.GradientType;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GradientFillContent.java */
/* loaded from: classes.dex */
public class h implements e, a.InterfaceC0031a, k {

    /* renamed from: s  reason: collision with root package name */
    private static final int f4108s = 32;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f4109a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f4110b;

    /* renamed from: c  reason: collision with root package name */
    private final com.airbnb.lottie.model.layer.a f4111c;

    /* renamed from: d  reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f4112d = new LongSparseArray<>();

    /* renamed from: e  reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f4113e = new LongSparseArray<>();

    /* renamed from: f  reason: collision with root package name */
    private final Path f4114f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f4115g;

    /* renamed from: h  reason: collision with root package name */
    private final RectF f4116h;

    /* renamed from: i  reason: collision with root package name */
    private final List<n> f4117i;

    /* renamed from: j  reason: collision with root package name */
    private final GradientType f4118j;

    /* renamed from: k  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> f4119k;

    /* renamed from: l  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<Integer, Integer> f4120l;

    /* renamed from: m  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> f4121m;

    /* renamed from: n  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> f4122n;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> f4123o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.p f4124p;

    /* renamed from: q  reason: collision with root package name */
    private final com.airbnb.lottie.h f4125q;

    /* renamed from: r  reason: collision with root package name */
    private final int f4126r;

    public h(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.d dVar) {
        Path path = new Path();
        this.f4114f = path;
        this.f4115g = new com.airbnb.lottie.animation.a(1);
        this.f4116h = new RectF();
        this.f4117i = new ArrayList();
        this.f4111c = aVar;
        this.f4109a = dVar.h();
        this.f4110b = dVar.k();
        this.f4125q = hVar;
        this.f4118j = dVar.e();
        path.setFillType(dVar.c());
        this.f4126r = (int) (hVar.m().d() / 32.0f);
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> a10 = dVar.d().a();
        this.f4119k = a10;
        a10.a(this);
        aVar.h(a10);
        com.airbnb.lottie.animation.keyframe.a<Integer, Integer> a11 = dVar.i().a();
        this.f4120l = a11;
        a11.a(this);
        aVar.h(a11);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a12 = dVar.j().a();
        this.f4121m = a12;
        a12.a(this);
        aVar.h(a12);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a13 = dVar.b().a();
        this.f4122n = a13;
        a13.a(this);
        aVar.h(a13);
    }

    private int[] f(int[] iArr) {
        com.airbnb.lottie.animation.keyframe.p pVar = this.f4124p;
        if (pVar != null) {
            Integer[] numArr = (Integer[]) pVar.h();
            int i4 = 0;
            if (iArr.length == numArr.length) {
                while (i4 < iArr.length) {
                    iArr[i4] = numArr[i4].intValue();
                    i4++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i4 < numArr.length) {
                    iArr[i4] = numArr[i4].intValue();
                    i4++;
                }
            }
        }
        return iArr;
    }

    private int h() {
        int round = Math.round(this.f4121m.f() * this.f4126r);
        int round2 = Math.round(this.f4122n.f() * this.f4126r);
        int round3 = Math.round(this.f4119k.f() * this.f4126r);
        int i4 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i4 = i4 * 31 * round2;
        }
        return round3 != 0 ? i4 * 31 * round3 : i4;
    }

    private LinearGradient i() {
        long h4 = h();
        LinearGradient linearGradient = this.f4112d.get(h4);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF h10 = this.f4121m.h();
        PointF h11 = this.f4122n.h();
        com.airbnb.lottie.model.content.c h12 = this.f4119k.h();
        LinearGradient linearGradient2 = new LinearGradient(h10.x, h10.y, h11.x, h11.y, f(h12.a()), h12.b(), Shader.TileMode.CLAMP);
        this.f4112d.put(h4, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient j() {
        long h4 = h();
        RadialGradient radialGradient = this.f4113e.get(h4);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF h10 = this.f4121m.h();
        PointF h11 = this.f4122n.h();
        com.airbnb.lottie.model.content.c h12 = this.f4119k.h();
        int[] f10 = f(h12.a());
        float[] b10 = h12.b();
        float f11 = h10.x;
        float f12 = h10.y;
        float hypot = (float) Math.hypot(h11.x - f11, h11.y - f12);
        RadialGradient radialGradient2 = new RadialGradient(f11, f12, hypot <= 0.0f ? 0.001f : hypot, f10, b10, Shader.TileMode.CLAMP);
        this.f4113e.put(h4, radialGradient2);
        return radialGradient2;
    }

    @Override // com.airbnb.lottie.animation.keyframe.a.InterfaceC0031a
    public void a() {
        this.f4125q.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.c
    public void b(List<c> list, List<c> list2) {
        for (int i4 = 0; i4 < list2.size(); i4++) {
            c cVar = list2.get(i4);
            if (cVar instanceof n) {
                this.f4117i.add((n) cVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        if (t9 == com.airbnb.lottie.m.f4361d) {
            this.f4120l.m(jVar);
        } else if (t9 == com.airbnb.lottie.m.B) {
            if (jVar == null) {
                this.f4123o = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.p pVar = new com.airbnb.lottie.animation.keyframe.p(jVar);
            this.f4123o = pVar;
            pVar.a(this);
            this.f4111c.h(this.f4123o);
        } else if (t9 == com.airbnb.lottie.m.C) {
            if (jVar == null) {
                com.airbnb.lottie.animation.keyframe.p pVar2 = this.f4124p;
                if (pVar2 != null) {
                    this.f4111c.A(pVar2);
                }
                this.f4124p = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.p pVar3 = new com.airbnb.lottie.animation.keyframe.p(jVar);
            this.f4124p = pVar3;
            pVar3.a(this);
            this.f4111c.h(this.f4124p);
        }
    }

    @Override // com.airbnb.lottie.model.e
    public void d(com.airbnb.lottie.model.d dVar, int i4, List<com.airbnb.lottie.model.d> list, com.airbnb.lottie.model.d dVar2) {
        com.airbnb.lottie.utils.g.l(dVar, i4, list, dVar2, this);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void e(RectF rectF, Matrix matrix, boolean z9) {
        this.f4114f.reset();
        for (int i4 = 0; i4 < this.f4117i.size(); i4++) {
            this.f4114f.addPath(this.f4117i.get(i4).getPath(), matrix);
        }
        this.f4114f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        Shader j4;
        if (this.f4110b) {
            return;
        }
        com.airbnb.lottie.e.a("GradientFillContent#draw");
        this.f4114f.reset();
        for (int i10 = 0; i10 < this.f4117i.size(); i10++) {
            this.f4114f.addPath(this.f4117i.get(i10).getPath(), matrix);
        }
        this.f4114f.computeBounds(this.f4116h, false);
        if (this.f4118j == GradientType.LINEAR) {
            j4 = i();
        } else {
            j4 = j();
        }
        j4.setLocalMatrix(matrix);
        this.f4115g.setShader(j4);
        com.airbnb.lottie.animation.keyframe.a<ColorFilter, ColorFilter> aVar = this.f4123o;
        if (aVar != null) {
            this.f4115g.setColorFilter(aVar.h());
        }
        this.f4115g.setAlpha(com.airbnb.lottie.utils.g.c((int) ((((i4 / 255.0f) * this.f4120l.h().intValue()) / 100.0f) * 255.0f), 0, 255));
        canvas.drawPath(this.f4114f, this.f4115g);
        com.airbnb.lottie.e.b("GradientFillContent#draw");
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4109a;
    }
}
