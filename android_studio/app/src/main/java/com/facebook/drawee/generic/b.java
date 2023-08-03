package com.facebook.drawee.generic;

import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import com.facebook.common.internal.j;
import com.facebook.drawee.drawable.s;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;
import java.util.List;
import r7.h;

/* compiled from: GenericDraweeHierarchyBuilder.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class b {

    /* renamed from: t  reason: collision with root package name */
    public static final int f11603t = 300;

    /* renamed from: u  reason: collision with root package name */
    public static final s.c f11604u = s.c.f11565h;

    /* renamed from: v  reason: collision with root package name */
    public static final s.c f11605v = s.c.f11566i;

    /* renamed from: a  reason: collision with root package name */
    private Resources f11606a;

    /* renamed from: b  reason: collision with root package name */
    private int f11607b;

    /* renamed from: c  reason: collision with root package name */
    private float f11608c;
    @h

    /* renamed from: d  reason: collision with root package name */
    private Drawable f11609d;
    @h

    /* renamed from: e  reason: collision with root package name */
    private s.c f11610e;
    @h

    /* renamed from: f  reason: collision with root package name */
    private Drawable f11611f;
    @h

    /* renamed from: g  reason: collision with root package name */
    private s.c f11612g;
    @h

    /* renamed from: h  reason: collision with root package name */
    private Drawable f11613h;
    @h

    /* renamed from: i  reason: collision with root package name */
    private s.c f11614i;
    @h

    /* renamed from: j  reason: collision with root package name */
    private Drawable f11615j;
    @h

    /* renamed from: k  reason: collision with root package name */
    private s.c f11616k;
    @h

    /* renamed from: l  reason: collision with root package name */
    private s.c f11617l;
    @h

    /* renamed from: m  reason: collision with root package name */
    private Matrix f11618m;
    @h

    /* renamed from: n  reason: collision with root package name */
    private PointF f11619n;
    @h

    /* renamed from: o  reason: collision with root package name */
    private ColorFilter f11620o;
    @h

    /* renamed from: p  reason: collision with root package name */
    private Drawable f11621p;
    @h

    /* renamed from: q  reason: collision with root package name */
    private List<Drawable> f11622q;
    @h

    /* renamed from: r  reason: collision with root package name */
    private Drawable f11623r;
    @h

    /* renamed from: s  reason: collision with root package name */
    private RoundingParams f11624s;

    public b(Resources resources) {
        this.f11606a = resources;
        t();
    }

    private void a0() {
        List<Drawable> list = this.f11622q;
        if (list != null) {
            for (Drawable drawable : list) {
                j.i(drawable);
            }
        }
    }

    private void t() {
        this.f11607b = 300;
        this.f11608c = 0.0f;
        this.f11609d = null;
        s.c cVar = f11604u;
        this.f11610e = cVar;
        this.f11611f = null;
        this.f11612g = cVar;
        this.f11613h = null;
        this.f11614i = cVar;
        this.f11615j = null;
        this.f11616k = cVar;
        this.f11617l = f11605v;
        this.f11618m = null;
        this.f11619n = null;
        this.f11620o = null;
        this.f11621p = null;
        this.f11622q = null;
        this.f11623r = null;
        this.f11624s = null;
    }

    public static b u(Resources resources) {
        return new b(resources);
    }

    public b A(float desiredAspectRatio) {
        this.f11608c = desiredAspectRatio;
        return this;
    }

    public b B(int fadeDuration) {
        this.f11607b = fadeDuration;
        return this;
    }

    public b C(int resourceId) {
        this.f11613h = this.f11606a.getDrawable(resourceId);
        return this;
    }

    public b D(int resourceId, @h s.c failureImageScaleType) {
        this.f11613h = this.f11606a.getDrawable(resourceId);
        this.f11614i = failureImageScaleType;
        return this;
    }

    public b E(@h Drawable failureDrawable) {
        this.f11613h = failureDrawable;
        return this;
    }

    public b F(Drawable failureDrawable, @h s.c failureImageScaleType) {
        this.f11613h = failureDrawable;
        this.f11614i = failureImageScaleType;
        return this;
    }

    public b G(@h s.c failureImageScaleType) {
        this.f11614i = failureImageScaleType;
        return this;
    }

    public b H(@h Drawable overlay) {
        if (overlay == null) {
            this.f11622q = null;
        } else {
            this.f11622q = Arrays.asList(overlay);
        }
        return this;
    }

    public b I(@h List<Drawable> overlays) {
        this.f11622q = overlays;
        return this;
    }

    public b J(int resourceId) {
        this.f11609d = this.f11606a.getDrawable(resourceId);
        return this;
    }

    public b K(int resourceId, @h s.c placeholderImageScaleType) {
        this.f11609d = this.f11606a.getDrawable(resourceId);
        this.f11610e = placeholderImageScaleType;
        return this;
    }

    public b L(@h Drawable placeholderDrawable) {
        this.f11609d = placeholderDrawable;
        return this;
    }

    public b M(Drawable placeholderDrawable, @h s.c placeholderImageScaleType) {
        this.f11609d = placeholderDrawable;
        this.f11610e = placeholderImageScaleType;
        return this;
    }

    public b N(@h s.c placeholderImageScaleType) {
        this.f11610e = placeholderImageScaleType;
        return this;
    }

    public b O(@h Drawable drawable) {
        if (drawable == null) {
            this.f11623r = null;
        } else {
            StateListDrawable stateListDrawable = new StateListDrawable();
            stateListDrawable.addState(new int[]{16842919}, drawable);
            this.f11623r = stateListDrawable;
        }
        return this;
    }

    public b P(int resourceId) {
        this.f11615j = this.f11606a.getDrawable(resourceId);
        return this;
    }

    public b Q(int resourceId, @h s.c progressBarImageScaleType) {
        this.f11615j = this.f11606a.getDrawable(resourceId);
        this.f11616k = progressBarImageScaleType;
        return this;
    }

    public b R(@h Drawable progressBarDrawable) {
        this.f11615j = progressBarDrawable;
        return this;
    }

    public b S(Drawable progressBarDrawable, @h s.c progressBarImageScaleType) {
        this.f11615j = progressBarDrawable;
        this.f11616k = progressBarImageScaleType;
        return this;
    }

    public b T(@h s.c progressBarImageScaleType) {
        this.f11616k = progressBarImageScaleType;
        return this;
    }

    public b U(int resourceId) {
        this.f11611f = this.f11606a.getDrawable(resourceId);
        return this;
    }

    public b V(int resourceId, @h s.c retryImageScaleType) {
        this.f11611f = this.f11606a.getDrawable(resourceId);
        this.f11612g = retryImageScaleType;
        return this;
    }

    public b W(@h Drawable retryDrawable) {
        this.f11611f = retryDrawable;
        return this;
    }

    public b X(Drawable retryDrawable, @h s.c retryImageScaleType) {
        this.f11611f = retryDrawable;
        this.f11612g = retryImageScaleType;
        return this;
    }

    public b Y(@h s.c retryImageScaleType) {
        this.f11612g = retryImageScaleType;
        return this;
    }

    public b Z(@h RoundingParams roundingParams) {
        this.f11624s = roundingParams;
        return this;
    }

    public a a() {
        a0();
        return new a(this);
    }

    @h
    public ColorFilter b() {
        return this.f11620o;
    }

    @h
    public PointF c() {
        return this.f11619n;
    }

    @h
    public s.c d() {
        return this.f11617l;
    }

    @h
    public Drawable e() {
        return this.f11621p;
    }

    public float f() {
        return this.f11608c;
    }

    public int g() {
        return this.f11607b;
    }

    @h
    public Drawable h() {
        return this.f11613h;
    }

    @h
    public s.c i() {
        return this.f11614i;
    }

    @h
    public List<Drawable> j() {
        return this.f11622q;
    }

    @h
    public Drawable k() {
        return this.f11609d;
    }

    @h
    public s.c l() {
        return this.f11610e;
    }

    @h
    public Drawable m() {
        return this.f11623r;
    }

    @h
    public Drawable n() {
        return this.f11615j;
    }

    @h
    public s.c o() {
        return this.f11616k;
    }

    public Resources p() {
        return this.f11606a;
    }

    @h
    public Drawable q() {
        return this.f11611f;
    }

    @h
    public s.c r() {
        return this.f11612g;
    }

    @h
    public RoundingParams s() {
        return this.f11624s;
    }

    public b v() {
        t();
        return this;
    }

    public b w(@h ColorFilter colorFilter) {
        this.f11620o = colorFilter;
        return this;
    }

    public b x(@h PointF focusPoint) {
        this.f11619n = focusPoint;
        return this;
    }

    public b y(@h s.c actualImageScaleType) {
        this.f11617l = actualImageScaleType;
        this.f11618m = null;
        return this;
    }

    public b z(@h Drawable background) {
        this.f11621p = background;
        return this;
    }
}
