package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: BaseConsumer.java */
@s7.d
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public abstract class b<T> implements l<T> {

    /* renamed from: g  reason: collision with root package name */
    private boolean f12903g = false;

    public static boolean f(int status) {
        return (status & 1) == 1;
    }

    public static boolean g(int status) {
        return !f(status);
    }

    public static int m(boolean isLast) {
        return isLast ? 1 : 0;
    }

    public static boolean n(int status, int flag) {
        return (status & flag) != 0;
    }

    public static boolean o(int status, int flag) {
        return (status & flag) == flag;
    }

    public static int p(int status, int flag) {
        return status & (~flag);
    }

    public static int q(int status, int flag) {
        return status | flag;
    }

    @Override // com.facebook.imagepipeline.producers.l
    public synchronized void a(Throwable t9) {
        if (this.f12903g) {
            return;
        }
        this.f12903g = true;
        try {
            i(t9);
        } catch (Exception e4) {
            l(e4);
        }
    }

    @Override // com.facebook.imagepipeline.producers.l
    public synchronized void b() {
        if (this.f12903g) {
            return;
        }
        this.f12903g = true;
        try {
            h();
        } catch (Exception e4) {
            l(e4);
        }
    }

    @Override // com.facebook.imagepipeline.producers.l
    public synchronized void c(@r7.h T newResult, int status) {
        if (this.f12903g) {
            return;
        }
        this.f12903g = f(status);
        try {
            j(newResult, status);
        } catch (Exception e4) {
            l(e4);
        }
    }

    @Override // com.facebook.imagepipeline.producers.l
    public synchronized void d(float progress) {
        if (this.f12903g) {
            return;
        }
        try {
            k(progress);
        } catch (Exception e4) {
            l(e4);
        }
    }

    protected abstract void h();

    protected abstract void i(Throwable t9);

    protected abstract void j(@r7.h T newResult, int status);

    protected void k(float progress) {
    }

    protected void l(Exception e4) {
        p0.a.t0(getClass(), "unhandled exception", e4);
    }
}
