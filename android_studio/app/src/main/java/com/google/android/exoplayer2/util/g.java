package com.google.android.exoplayer2.util;

/* compiled from: ConditionVariable.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final d f27545a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27546b;

    public g() {
        this(d.f27523a);
    }

    public synchronized void a() throws InterruptedException {
        while (!this.f27546b) {
            wait();
        }
    }

    public synchronized boolean b(long j4) throws InterruptedException {
        if (j4 <= 0) {
            return this.f27546b;
        }
        long b10 = this.f27545a.b();
        long j10 = j4 + b10;
        if (j10 < b10) {
            a();
        } else {
            while (!this.f27546b && b10 < j10) {
                wait(j10 - b10);
                b10 = this.f27545a.b();
            }
        }
        return this.f27546b;
    }

    public synchronized void c() {
        boolean z9 = false;
        while (!this.f27546b) {
            try {
                wait();
            } catch (InterruptedException unused) {
                z9 = true;
            }
        }
        if (z9) {
            Thread.currentThread().interrupt();
        }
    }

    public synchronized boolean d() {
        boolean z9;
        z9 = this.f27546b;
        this.f27546b = false;
        return z9;
    }

    public synchronized boolean e() {
        return this.f27546b;
    }

    public synchronized boolean f() {
        if (this.f27546b) {
            return false;
        }
        this.f27546b = true;
        notifyAll();
        return true;
    }

    public g(d dVar) {
        this.f27545a = dVar;
    }
}
