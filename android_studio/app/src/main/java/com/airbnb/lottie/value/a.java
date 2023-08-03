package com.airbnb.lottie.value;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;

/* compiled from: Keyframe.java */
/* loaded from: classes.dex */
public class a<T> {

    /* renamed from: o  reason: collision with root package name */
    private static final float f5647o = -3987645.8f;

    /* renamed from: p  reason: collision with root package name */
    private static final int f5648p = 784923401;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final com.airbnb.lottie.f f5649a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public final T f5650b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public T f5651c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public final Interpolator f5652d;

    /* renamed from: e  reason: collision with root package name */
    public final float f5653e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Float f5654f;

    /* renamed from: g  reason: collision with root package name */
    private float f5655g;

    /* renamed from: h  reason: collision with root package name */
    private float f5656h;

    /* renamed from: i  reason: collision with root package name */
    private int f5657i;

    /* renamed from: j  reason: collision with root package name */
    private int f5658j;

    /* renamed from: k  reason: collision with root package name */
    private float f5659k;

    /* renamed from: l  reason: collision with root package name */
    private float f5660l;

    /* renamed from: m  reason: collision with root package name */
    public PointF f5661m;

    /* renamed from: n  reason: collision with root package name */
    public PointF f5662n;

    public a(com.airbnb.lottie.f fVar, @Nullable T t9, @Nullable T t10, @Nullable Interpolator interpolator, float f10, @Nullable Float f11) {
        this.f5655g = f5647o;
        this.f5656h = f5647o;
        this.f5657i = f5648p;
        this.f5658j = f5648p;
        this.f5659k = Float.MIN_VALUE;
        this.f5660l = Float.MIN_VALUE;
        this.f5661m = null;
        this.f5662n = null;
        this.f5649a = fVar;
        this.f5650b = t9;
        this.f5651c = t10;
        this.f5652d = interpolator;
        this.f5653e = f10;
        this.f5654f = f11;
    }

    public boolean a(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        return f10 >= e() && f10 < b();
    }

    public float b() {
        if (this.f5649a == null) {
            return 1.0f;
        }
        if (this.f5660l == Float.MIN_VALUE) {
            if (this.f5654f == null) {
                this.f5660l = 1.0f;
            } else {
                this.f5660l = e() + ((this.f5654f.floatValue() - this.f5653e) / this.f5649a.e());
            }
        }
        return this.f5660l;
    }

    public float c() {
        if (this.f5656h == f5647o) {
            this.f5656h = ((Float) this.f5651c).floatValue();
        }
        return this.f5656h;
    }

    public int d() {
        if (this.f5658j == f5648p) {
            this.f5658j = ((Integer) this.f5651c).intValue();
        }
        return this.f5658j;
    }

    public float e() {
        com.airbnb.lottie.f fVar = this.f5649a;
        if (fVar == null) {
            return 0.0f;
        }
        if (this.f5659k == Float.MIN_VALUE) {
            this.f5659k = (this.f5653e - fVar.p()) / this.f5649a.e();
        }
        return this.f5659k;
    }

    public float f() {
        if (this.f5655g == f5647o) {
            this.f5655g = ((Float) this.f5650b).floatValue();
        }
        return this.f5655g;
    }

    public int g() {
        if (this.f5657i == f5648p) {
            this.f5657i = ((Integer) this.f5650b).intValue();
        }
        return this.f5657i;
    }

    public boolean h() {
        return this.f5652d == null;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.f5650b + ", endValue=" + this.f5651c + ", startFrame=" + this.f5653e + ", endFrame=" + this.f5654f + ", interpolator=" + this.f5652d + '}';
    }

    public a(T t9) {
        this.f5655g = f5647o;
        this.f5656h = f5647o;
        this.f5657i = f5648p;
        this.f5658j = f5648p;
        this.f5659k = Float.MIN_VALUE;
        this.f5660l = Float.MIN_VALUE;
        this.f5661m = null;
        this.f5662n = null;
        this.f5649a = null;
        this.f5650b = t9;
        this.f5651c = t9;
        this.f5652d = null;
        this.f5653e = Float.MIN_VALUE;
        this.f5654f = Float.valueOf(Float.MAX_VALUE);
    }
}
