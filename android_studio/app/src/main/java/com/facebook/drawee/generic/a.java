package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.VisibleForTesting;
import com.facebook.drawee.drawable.g;
import com.facebook.drawee.drawable.j;
import com.facebook.drawee.drawable.r;
import com.facebook.drawee.drawable.s;
import i1.i;
import r7.h;

/* compiled from: GenericDraweeHierarchy.java */
/* loaded from: classes.dex */
public class a implements z0.c {

    /* renamed from: g  reason: collision with root package name */
    private static final int f11590g = 0;

    /* renamed from: h  reason: collision with root package name */
    private static final int f11591h = 1;

    /* renamed from: i  reason: collision with root package name */
    private static final int f11592i = 2;

    /* renamed from: j  reason: collision with root package name */
    private static final int f11593j = 3;

    /* renamed from: k  reason: collision with root package name */
    private static final int f11594k = 4;

    /* renamed from: l  reason: collision with root package name */
    private static final int f11595l = 5;

    /* renamed from: m  reason: collision with root package name */
    private static final int f11596m = 6;

    /* renamed from: a  reason: collision with root package name */
    private final Drawable f11597a;

    /* renamed from: b  reason: collision with root package name */
    private final Resources f11598b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private RoundingParams f11599c;

    /* renamed from: d  reason: collision with root package name */
    private final d f11600d;

    /* renamed from: e  reason: collision with root package name */
    private final g f11601e;

    /* renamed from: f  reason: collision with root package name */
    private final com.facebook.drawee.drawable.h f11602f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(b builder) {
        ColorDrawable colorDrawable = new ColorDrawable(0);
        this.f11597a = colorDrawable;
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("GenericDraweeHierarchy()");
        }
        this.f11598b = builder.p();
        this.f11599c = builder.s();
        com.facebook.drawee.drawable.h hVar = new com.facebook.drawee.drawable.h(colorDrawable);
        this.f11602f = hVar;
        int i4 = 1;
        int size = builder.j() != null ? builder.j().size() : 1;
        int i10 = (size == 0 ? 1 : size) + (builder.m() != null ? 1 : 0);
        Drawable[] drawableArr = new Drawable[i10 + 6];
        drawableArr[0] = h(builder.e(), null);
        drawableArr[1] = h(builder.k(), builder.l());
        drawableArr[2] = g(hVar, builder.d(), builder.c(), builder.b());
        drawableArr[3] = h(builder.n(), builder.o());
        drawableArr[4] = h(builder.q(), builder.r());
        drawableArr[5] = h(builder.h(), builder.i());
        if (i10 > 0) {
            if (builder.j() != null) {
                i4 = 0;
                for (Drawable drawable : builder.j()) {
                    drawableArr[i4 + 6] = h(drawable, null);
                    i4++;
                }
            }
            if (builder.m() != null) {
                drawableArr[i4 + 6] = h(builder.m(), null);
            }
        }
        g gVar = new g(drawableArr, false, 2);
        this.f11601e = gVar;
        gVar.F(builder.g());
        d dVar = new d(e.f(gVar, this.f11599c));
        this.f11600d = dVar;
        dVar.mutate();
        w();
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
    }

    private void B(int index, @h Drawable drawable) {
        if (drawable == null) {
            this.f11601e.e(index, null);
            return;
        }
        p(index).b(e.d(drawable, this.f11599c, this.f11598b));
    }

    private void P(float progress) {
        Drawable b10 = this.f11601e.b(3);
        if (b10 == null) {
            return;
        }
        if (progress >= 0.999f) {
            if (b10 instanceof Animatable) {
                ((Animatable) b10).stop();
            }
            k(3);
        } else {
            if (b10 instanceof Animatable) {
                ((Animatable) b10).start();
            }
            i(3);
        }
        b10.setLevel(Math.round(progress * 10000.0f));
    }

    @h
    private Drawable g(Drawable drawable, @h s.c scaleType, @h PointF focusPoint, @h ColorFilter colorFilter) {
        drawable.setColorFilter(colorFilter);
        return e.h(drawable, scaleType, focusPoint);
    }

    @h
    private Drawable h(@h Drawable drawable, @h s.c scaleType) {
        return e.g(e.d(drawable, this.f11599c, this.f11598b), scaleType);
    }

    private void i(int index) {
        if (index >= 0) {
            this.f11601e.l(index);
        }
    }

    private void j() {
        k(1);
        k(2);
        k(3);
        k(4);
        k(5);
    }

    private void k(int index) {
        if (index >= 0) {
            this.f11601e.n(index);
        }
    }

    private com.facebook.drawee.drawable.d p(int index) {
        com.facebook.drawee.drawable.d c10 = this.f11601e.c(index);
        if (c10.s() instanceof j) {
            c10 = (j) c10.s();
        }
        return c10.s() instanceof r ? (r) c10.s() : c10;
    }

    private r r(int index) {
        com.facebook.drawee.drawable.d p9 = p(index);
        if (p9 instanceof r) {
            return (r) p9;
        }
        return e.l(p9, s.c.f11558a);
    }

    private boolean u(int index) {
        return p(index) instanceof r;
    }

    private void v() {
        this.f11602f.b(this.f11597a);
    }

    private void w() {
        g gVar = this.f11601e;
        if (gVar != null) {
            gVar.g();
            this.f11601e.k();
            j();
            i(1);
            this.f11601e.r();
            this.f11601e.j();
        }
    }

    public void A(@h Drawable drawable) {
        B(0, drawable);
    }

    public void C(int durationMs) {
        this.f11601e.F(durationMs);
    }

    public void D(int resourceId) {
        F(this.f11598b.getDrawable(resourceId));
    }

    public void E(int resourceId, s.c scaleType) {
        G(this.f11598b.getDrawable(resourceId), scaleType);
    }

    public void F(@h Drawable drawable) {
        B(5, drawable);
    }

    public void G(Drawable drawable, s.c scaleType) {
        B(5, drawable);
        r(5).E(scaleType);
    }

    public void H(i onFadeListener) {
        this.f11601e.E(onFadeListener);
    }

    public void I(int index, @h Drawable drawable) {
        com.facebook.common.internal.j.e(index >= 0 && index + 6 < this.f11601e.d(), "The given index does not correspond to an overlay image.");
        B(index + 6, drawable);
    }

    public void J(@h Drawable drawable) {
        I(0, drawable);
    }

    public void K(int resourceId) {
        M(this.f11598b.getDrawable(resourceId));
    }

    public void L(int resourceId, s.c scaleType) {
        N(this.f11598b.getDrawable(resourceId), scaleType);
    }

    public void M(@h Drawable drawable) {
        B(1, drawable);
    }

    public void N(Drawable drawable, s.c scaleType) {
        B(1, drawable);
        r(1).E(scaleType);
    }

    public void O(PointF focusPoint) {
        com.facebook.common.internal.j.i(focusPoint);
        r(1).D(focusPoint);
    }

    public void Q(int resourceId) {
        S(this.f11598b.getDrawable(resourceId));
    }

    public void R(int resourceId, s.c scaleType) {
        T(this.f11598b.getDrawable(resourceId), scaleType);
    }

    public void S(@h Drawable drawable) {
        B(3, drawable);
    }

    public void T(Drawable drawable, s.c scaleType) {
        B(3, drawable);
        r(3).E(scaleType);
    }

    public void U(int resourceId) {
        W(this.f11598b.getDrawable(resourceId));
    }

    public void V(int resourceId, s.c scaleType) {
        X(this.f11598b.getDrawable(resourceId), scaleType);
    }

    public void W(@h Drawable drawable) {
        B(4, drawable);
    }

    public void X(Drawable drawable, s.c scaleType) {
        B(4, drawable);
        r(4).E(scaleType);
    }

    public void Y(@h RoundingParams roundingParams) {
        this.f11599c = roundingParams;
        e.k(this.f11600d, roundingParams);
        for (int i4 = 0; i4 < this.f11601e.d(); i4++) {
            e.j(p(i4), this.f11599c, this.f11598b);
        }
    }

    @Override // z0.c
    public void a(Throwable throwable) {
        this.f11601e.g();
        j();
        if (this.f11601e.b(4) != null) {
            i(4);
        } else {
            i(1);
        }
        this.f11601e.j();
    }

    @Override // z0.c
    public void b(Throwable throwable) {
        this.f11601e.g();
        j();
        if (this.f11601e.b(5) != null) {
            i(5);
        } else {
            i(1);
        }
        this.f11601e.j();
    }

    @Override // z0.c
    public void c(float progress, boolean immediate) {
        if (this.f11601e.b(3) == null) {
            return;
        }
        this.f11601e.g();
        P(progress);
        if (immediate) {
            this.f11601e.r();
        }
        this.f11601e.j();
    }

    @Override // z0.b
    public Drawable d() {
        return this.f11600d;
    }

    @Override // z0.c
    public void e(Drawable drawable, float progress, boolean immediate) {
        Drawable d4 = e.d(drawable, this.f11599c, this.f11598b);
        d4.mutate();
        this.f11602f.b(d4);
        this.f11601e.g();
        j();
        i(2);
        P(progress);
        if (immediate) {
            this.f11601e.r();
        }
        this.f11601e.j();
    }

    @Override // z0.c
    public void f(@h Drawable drawable) {
        this.f11600d.z(drawable);
    }

    @Override // z0.b
    public Rect getBounds() {
        return this.f11600d.getBounds();
    }

    public void l(RectF outBounds) {
        this.f11602f.w(outBounds);
    }

    @h
    public PointF m() {
        if (u(2)) {
            return r(2).B();
        }
        return null;
    }

    @h
    public s.c n() {
        if (u(2)) {
            return r(2).C();
        }
        return null;
    }

    public int o() {
        return this.f11601e.t();
    }

    @h
    public RoundingParams q() {
        return this.f11599c;
    }

    @Override // z0.c
    public void reset() {
        v();
        w();
    }

    @VisibleForTesting
    public boolean s() {
        return this.f11602f.s() != this.f11597a;
    }

    public boolean t() {
        return this.f11601e.b(1) != null;
    }

    public void x(ColorFilter colorfilter) {
        this.f11602f.setColorFilter(colorfilter);
    }

    public void y(PointF focusPoint) {
        com.facebook.common.internal.j.i(focusPoint);
        r(2).D(focusPoint);
    }

    public void z(s.c scaleType) {
        com.facebook.common.internal.j.i(scaleType);
        r(2).E(scaleType);
    }
}
