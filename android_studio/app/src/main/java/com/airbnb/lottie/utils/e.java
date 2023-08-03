package com.airbnb.lottie.utils;

import android.view.Choreographer;
import androidx.annotation.FloatRange;
import androidx.annotation.MainThread;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;

/* compiled from: LottieValueAnimator.java */
/* loaded from: classes.dex */
public class e extends a implements Choreographer.FrameCallback {
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private com.airbnb.lottie.f f5635j;

    /* renamed from: c  reason: collision with root package name */
    private float f5628c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5629d = false;

    /* renamed from: e  reason: collision with root package name */
    private long f5630e = 0;

    /* renamed from: f  reason: collision with root package name */
    private float f5631f = 0.0f;

    /* renamed from: g  reason: collision with root package name */
    private int f5632g = 0;

    /* renamed from: h  reason: collision with root package name */
    private float f5633h = -2.14748365E9f;

    /* renamed from: i  reason: collision with root package name */
    private float f5634i = 2.14748365E9f;
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    protected boolean f5636k = false;

    private void B() {
        if (this.f5635j == null) {
            return;
        }
        float f10 = this.f5631f;
        if (f10 < this.f5633h || f10 > this.f5634i) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.f5633h), Float.valueOf(this.f5634i), Float.valueOf(this.f5631f)));
        }
    }

    private float j() {
        com.airbnb.lottie.f fVar = this.f5635j;
        if (fVar == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / fVar.h()) / Math.abs(this.f5628c);
    }

    private boolean n() {
        return m() < 0.0f;
    }

    public void A(float f10) {
        this.f5628c = f10;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    @MainThread
    public void cancel() {
        a();
        r();
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j4) {
        q();
        if (this.f5635j == null || !isRunning()) {
            return;
        }
        com.airbnb.lottie.e.a("LottieValueAnimator#doFrame");
        long j10 = this.f5630e;
        float j11 = ((float) (j10 != 0 ? j4 - j10 : 0L)) / j();
        float f10 = this.f5631f;
        if (n()) {
            j11 = -j11;
        }
        float f11 = f10 + j11;
        this.f5631f = f11;
        boolean z9 = !g.d(f11, l(), k());
        this.f5631f = g.b(this.f5631f, l(), k());
        this.f5630e = j4;
        e();
        if (z9) {
            if (getRepeatCount() != -1 && this.f5632g >= getRepeatCount()) {
                this.f5631f = this.f5628c < 0.0f ? l() : k();
                r();
                b(n());
            } else {
                c();
                this.f5632g++;
                if (getRepeatMode() == 2) {
                    this.f5629d = !this.f5629d;
                    u();
                } else {
                    this.f5631f = n() ? k() : l();
                }
                this.f5630e = j4;
            }
        }
        B();
        com.airbnb.lottie.e.b("LottieValueAnimator#doFrame");
    }

    public void f() {
        this.f5635j = null;
        this.f5633h = -2.14748365E9f;
        this.f5634i = 2.14748365E9f;
    }

    @MainThread
    public void g() {
        r();
        b(n());
    }

    @Override // android.animation.ValueAnimator
    @FloatRange(from = 0.0d, to = 1.0d)
    public float getAnimatedFraction() {
        float l10;
        float k10;
        float l11;
        if (this.f5635j == null) {
            return 0.0f;
        }
        if (n()) {
            l10 = k() - this.f5631f;
            k10 = k();
            l11 = l();
        } else {
            l10 = this.f5631f - l();
            k10 = k();
            l11 = l();
        }
        return l10 / (k10 - l11);
    }

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(h());
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.airbnb.lottie.f fVar = this.f5635j;
        if (fVar == null) {
            return 0L;
        }
        return fVar.d();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float h() {
        com.airbnb.lottie.f fVar = this.f5635j;
        if (fVar == null) {
            return 0.0f;
        }
        return (this.f5631f - fVar.p()) / (this.f5635j.f() - this.f5635j.p());
    }

    public float i() {
        return this.f5631f;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.f5636k;
    }

    public float k() {
        com.airbnb.lottie.f fVar = this.f5635j;
        if (fVar == null) {
            return 0.0f;
        }
        float f10 = this.f5634i;
        return f10 == 2.14748365E9f ? fVar.f() : f10;
    }

    public float l() {
        com.airbnb.lottie.f fVar = this.f5635j;
        if (fVar == null) {
            return 0.0f;
        }
        float f10 = this.f5633h;
        return f10 == -2.14748365E9f ? fVar.p() : f10;
    }

    public float m() {
        return this.f5628c;
    }

    @MainThread
    public void o() {
        r();
    }

    @MainThread
    public void p() {
        this.f5636k = true;
        d(n());
        w((int) (n() ? k() : l()));
        this.f5630e = 0L;
        this.f5632g = 0;
        q();
    }

    protected void q() {
        if (isRunning()) {
            s(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    @MainThread
    protected void r() {
        s(true);
    }

    @MainThread
    protected void s(boolean z9) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z9) {
            this.f5636k = false;
        }
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i4) {
        super.setRepeatMode(i4);
        if (i4 == 2 || !this.f5629d) {
            return;
        }
        this.f5629d = false;
        u();
    }

    @MainThread
    public void t() {
        this.f5636k = true;
        q();
        this.f5630e = 0L;
        if (n() && i() == l()) {
            this.f5631f = k();
        } else if (n() || i() != k()) {
        } else {
            this.f5631f = l();
        }
    }

    public void u() {
        A(-m());
    }

    public void v(com.airbnb.lottie.f fVar) {
        boolean z9 = this.f5635j == null;
        this.f5635j = fVar;
        if (z9) {
            y((int) Math.max(this.f5633h, fVar.p()), (int) Math.min(this.f5634i, fVar.f()));
        } else {
            y((int) fVar.p(), (int) fVar.f());
        }
        float f10 = this.f5631f;
        this.f5631f = 0.0f;
        w((int) f10);
    }

    public void w(float f10) {
        if (this.f5631f == f10) {
            return;
        }
        this.f5631f = g.b(f10, l(), k());
        this.f5630e = 0L;
        e();
    }

    public void x(float f10) {
        y(this.f5633h, f10);
    }

    public void y(float f10, float f11) {
        if (f10 <= f11) {
            com.airbnb.lottie.f fVar = this.f5635j;
            float p9 = fVar == null ? -3.4028235E38f : fVar.p();
            com.airbnb.lottie.f fVar2 = this.f5635j;
            float f12 = fVar2 == null ? Float.MAX_VALUE : fVar2.f();
            this.f5633h = g.b(f10, p9, f12);
            this.f5634i = g.b(f11, p9, f12);
            w((int) g.b(this.f5631f, f10, f11));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f10), Float.valueOf(f11)));
    }

    public void z(int i4) {
        y(i4, (int) this.f5634i);
    }
}
