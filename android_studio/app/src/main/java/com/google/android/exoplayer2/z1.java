package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import java.util.concurrent.TimeoutException;

/* compiled from: PlayerMessage.java */
/* loaded from: classes2.dex */
public final class z1 {

    /* renamed from: a  reason: collision with root package name */
    private final b f28146a;

    /* renamed from: b  reason: collision with root package name */
    private final a f28147b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.d f28148c;

    /* renamed from: d  reason: collision with root package name */
    private final s2 f28149d;

    /* renamed from: e  reason: collision with root package name */
    private int f28150e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Object f28151f;

    /* renamed from: g  reason: collision with root package name */
    private Looper f28152g;

    /* renamed from: h  reason: collision with root package name */
    private int f28153h;

    /* renamed from: i  reason: collision with root package name */
    private long f28154i = i.f23649b;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28155j = true;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28156k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28157l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f28158m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28159n;

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes2.dex */
    public interface a {
        void d(z1 z1Var);
    }

    /* compiled from: PlayerMessage.java */
    /* loaded from: classes2.dex */
    public interface b {
        void d(int i4, @Nullable Object obj) throws ExoPlaybackException;
    }

    public z1(a aVar, b bVar, s2 s2Var, int i4, com.google.android.exoplayer2.util.d dVar, Looper looper) {
        this.f28147b = aVar;
        this.f28146a = bVar;
        this.f28149d = s2Var;
        this.f28152g = looper;
        this.f28148c = dVar;
        this.f28153h = i4;
    }

    public synchronized boolean a() throws InterruptedException {
        com.google.android.exoplayer2.util.a.i(this.f28156k);
        com.google.android.exoplayer2.util.a.i(this.f28152g.getThread() != Thread.currentThread());
        while (!this.f28158m) {
            wait();
        }
        return this.f28157l;
    }

    public synchronized boolean b(long j4) throws InterruptedException, TimeoutException {
        boolean z9;
        com.google.android.exoplayer2.util.a.i(this.f28156k);
        com.google.android.exoplayer2.util.a.i(this.f28152g.getThread() != Thread.currentThread());
        long b10 = this.f28148c.b() + j4;
        while (true) {
            z9 = this.f28158m;
            if (z9 || j4 <= 0) {
                break;
            }
            this.f28148c.e();
            wait(j4);
            j4 = b10 - this.f28148c.b();
        }
        if (!z9) {
            throw new TimeoutException("Message delivery timed out.");
        }
        return this.f28157l;
    }

    public synchronized z1 c() {
        com.google.android.exoplayer2.util.a.i(this.f28156k);
        this.f28159n = true;
        m(false);
        return this;
    }

    public boolean d() {
        return this.f28155j;
    }

    public Looper e() {
        return this.f28152g;
    }

    @Nullable
    public Object f() {
        return this.f28151f;
    }

    public long g() {
        return this.f28154i;
    }

    public b h() {
        return this.f28146a;
    }

    public s2 i() {
        return this.f28149d;
    }

    public int j() {
        return this.f28150e;
    }

    public int k() {
        return this.f28153h;
    }

    public synchronized boolean l() {
        return this.f28159n;
    }

    public synchronized void m(boolean z9) {
        this.f28157l = z9 | this.f28157l;
        this.f28158m = true;
        notifyAll();
    }

    public z1 n() {
        com.google.android.exoplayer2.util.a.i(!this.f28156k);
        if (this.f28154i == i.f23649b) {
            com.google.android.exoplayer2.util.a.a(this.f28155j);
        }
        this.f28156k = true;
        this.f28147b.d(this);
        return this;
    }

    public z1 o(boolean z9) {
        com.google.android.exoplayer2.util.a.i(!this.f28156k);
        this.f28155j = z9;
        return this;
    }

    @Deprecated
    public z1 p(Handler handler) {
        return q(handler.getLooper());
    }

    public z1 q(Looper looper) {
        com.google.android.exoplayer2.util.a.i(!this.f28156k);
        this.f28152g = looper;
        return this;
    }

    public z1 r(@Nullable Object obj) {
        com.google.android.exoplayer2.util.a.i(!this.f28156k);
        this.f28151f = obj;
        return this;
    }

    public z1 s(int i4, long j4) {
        com.google.android.exoplayer2.util.a.i(!this.f28156k);
        com.google.android.exoplayer2.util.a.a(j4 != i.f23649b);
        if (i4 >= 0 && (this.f28149d.v() || i4 < this.f28149d.u())) {
            this.f28153h = i4;
            this.f28154i = j4;
            return this;
        }
        throw new IllegalSeekPositionException(this.f28149d, i4, j4);
    }

    public z1 t(long j4) {
        com.google.android.exoplayer2.util.a.i(!this.f28156k);
        this.f28154i = j4;
        return this;
    }

    public z1 u(int i4) {
        com.google.android.exoplayer2.util.a.i(!this.f28156k);
        this.f28150e = i4;
        return this;
    }
}
