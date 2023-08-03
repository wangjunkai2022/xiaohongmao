package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.model.content.GradientType;

/* compiled from: GradientStrokeContent.java */
/* loaded from: classes.dex */
public class i extends a {

    /* renamed from: z  reason: collision with root package name */
    private static final int f4127z = 32;

    /* renamed from: o  reason: collision with root package name */
    private final String f4128o;

    /* renamed from: p  reason: collision with root package name */
    private final boolean f4129p;

    /* renamed from: q  reason: collision with root package name */
    private final LongSparseArray<LinearGradient> f4130q;

    /* renamed from: r  reason: collision with root package name */
    private final LongSparseArray<RadialGradient> f4131r;

    /* renamed from: s  reason: collision with root package name */
    private final RectF f4132s;

    /* renamed from: t  reason: collision with root package name */
    private final GradientType f4133t;

    /* renamed from: u  reason: collision with root package name */
    private final int f4134u;

    /* renamed from: v  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> f4135v;

    /* renamed from: w  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> f4136w;

    /* renamed from: x  reason: collision with root package name */
    private final com.airbnb.lottie.animation.keyframe.a<PointF, PointF> f4137x;
    @Nullable

    /* renamed from: y  reason: collision with root package name */
    private com.airbnb.lottie.animation.keyframe.p f4138y;

    public i(com.airbnb.lottie.h hVar, com.airbnb.lottie.model.layer.a aVar, com.airbnb.lottie.model.content.e eVar) {
        super(hVar, aVar, eVar.b().toPaintCap(), eVar.g().toPaintJoin(), eVar.i(), eVar.k(), eVar.m(), eVar.h(), eVar.c());
        this.f4130q = new LongSparseArray<>();
        this.f4131r = new LongSparseArray<>();
        this.f4132s = new RectF();
        this.f4128o = eVar.j();
        this.f4133t = eVar.f();
        this.f4129p = eVar.n();
        this.f4134u = (int) (hVar.m().d() / 32.0f);
        com.airbnb.lottie.animation.keyframe.a<com.airbnb.lottie.model.content.c, com.airbnb.lottie.model.content.c> a10 = eVar.e().a();
        this.f4135v = a10;
        a10.a(this);
        aVar.h(a10);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a11 = eVar.l().a();
        this.f4136w = a11;
        a11.a(this);
        aVar.h(a11);
        com.airbnb.lottie.animation.keyframe.a<PointF, PointF> a12 = eVar.d().a();
        this.f4137x = a12;
        a12.a(this);
        aVar.h(a12);
    }

    private int[] i(int[] iArr) {
        com.airbnb.lottie.animation.keyframe.p pVar = this.f4138y;
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

    private int j() {
        int round = Math.round(this.f4136w.f() * this.f4134u);
        int round2 = Math.round(this.f4137x.f() * this.f4134u);
        int round3 = Math.round(this.f4135v.f() * this.f4134u);
        int i4 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i4 = i4 * 31 * round2;
        }
        return round3 != 0 ? i4 * 31 * round3 : i4;
    }

    private LinearGradient k() {
        long j4 = j();
        LinearGradient linearGradient = this.f4130q.get(j4);
        if (linearGradient != null) {
            return linearGradient;
        }
        PointF h4 = this.f4136w.h();
        PointF h10 = this.f4137x.h();
        com.airbnb.lottie.model.content.c h11 = this.f4135v.h();
        LinearGradient linearGradient2 = new LinearGradient(h4.x, h4.y, h10.x, h10.y, i(h11.a()), h11.b(), Shader.TileMode.CLAMP);
        this.f4130q.put(j4, linearGradient2);
        return linearGradient2;
    }

    private RadialGradient l() {
        float f10;
        float f11;
        long j4 = j();
        RadialGradient radialGradient = this.f4131r.get(j4);
        if (radialGradient != null) {
            return radialGradient;
        }
        PointF h4 = this.f4136w.h();
        PointF h10 = this.f4137x.h();
        com.airbnb.lottie.model.content.c h11 = this.f4135v.h();
        int[] i4 = i(h11.a());
        float[] b10 = h11.b();
        RadialGradient radialGradient2 = new RadialGradient(h4.x, h4.y, (float) Math.hypot(h10.x - f10, h10.y - f11), i4, b10, Shader.TileMode.CLAMP);
        this.f4131r.put(j4, radialGradient2);
        return radialGradient2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.model.e
    public <T> void c(T t9, @Nullable com.airbnb.lottie.value.j<T> jVar) {
        super.c(t9, jVar);
        if (t9 == com.airbnb.lottie.m.C) {
            if (jVar == null) {
                com.airbnb.lottie.animation.keyframe.p pVar = this.f4138y;
                if (pVar != null) {
                    this.f4066f.A(pVar);
                }
                this.f4138y = null;
                return;
            }
            com.airbnb.lottie.animation.keyframe.p pVar2 = new com.airbnb.lottie.animation.keyframe.p(jVar);
            this.f4138y = pVar2;
            pVar2.a(this);
            this.f4066f.h(this.f4138y);
        }
    }

    @Override // com.airbnb.lottie.animation.content.a, com.airbnb.lottie.animation.content.e
    public void g(Canvas canvas, Matrix matrix, int i4) {
        Shader l10;
        if (this.f4129p) {
            return;
        }
        e(this.f4132s, matrix, false);
        if (this.f4133t == GradientType.LINEAR) {
            l10 = k();
        } else {
            l10 = l();
        }
        l10.setLocalMatrix(matrix);
        this.f4069i.setShader(l10);
        super.g(canvas, matrix, i4);
    }

    @Override // com.airbnb.lottie.animation.content.c
    public String getName() {
        return this.f4128o;
    }
}
