package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.t1;

/* compiled from: StandaloneMediaClock.java */
/* loaded from: classes2.dex */
public final class q0 implements y {

    /* renamed from: a  reason: collision with root package name */
    private final d f27676a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f27677b;

    /* renamed from: c  reason: collision with root package name */
    private long f27678c;

    /* renamed from: d  reason: collision with root package name */
    private long f27679d;

    /* renamed from: e  reason: collision with root package name */
    private t1 f27680e = t1.f25296d;

    public q0(d dVar) {
        this.f27676a = dVar;
    }

    public void a(long j4) {
        this.f27678c = j4;
        if (this.f27677b) {
            this.f27679d = this.f27676a.b();
        }
    }

    public void b() {
        if (this.f27677b) {
            return;
        }
        this.f27679d = this.f27676a.b();
        this.f27677b = true;
    }

    public void c() {
        if (this.f27677b) {
            a(o());
            this.f27677b = false;
        }
    }

    @Override // com.google.android.exoplayer2.util.y
    public t1 e() {
        return this.f27680e;
    }

    @Override // com.google.android.exoplayer2.util.y
    public void g(t1 t1Var) {
        if (this.f27677b) {
            a(o());
        }
        this.f27680e = t1Var;
    }

    @Override // com.google.android.exoplayer2.util.y
    public long o() {
        long b10;
        long j4 = this.f27678c;
        if (this.f27677b) {
            long b11 = this.f27676a.b() - this.f27679d;
            t1 t1Var = this.f27680e;
            if (t1Var.f25300a == 1.0f) {
                b10 = com.google.android.exoplayer2.i.c(b11);
            } else {
                b10 = t1Var.b(b11);
            }
            return j4 + b10;
        }
        return j4;
    }
}
