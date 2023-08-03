package com.google.android.exoplayer2.decoder;

import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.DecoderException;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.decoder.f;
import java.util.ArrayDeque;

/* compiled from: SimpleDecoder.java */
/* loaded from: classes2.dex */
public abstract class g<I extends DecoderInputBuffer, O extends f, E extends DecoderException> implements c<I, O, E> {

    /* renamed from: a  reason: collision with root package name */
    private final Thread f21628a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f21629b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayDeque<I> f21630c = new ArrayDeque<>();

    /* renamed from: d  reason: collision with root package name */
    private final ArrayDeque<O> f21631d = new ArrayDeque<>();

    /* renamed from: e  reason: collision with root package name */
    private final I[] f21632e;

    /* renamed from: f  reason: collision with root package name */
    private final O[] f21633f;

    /* renamed from: g  reason: collision with root package name */
    private int f21634g;

    /* renamed from: h  reason: collision with root package name */
    private int f21635h;

    /* renamed from: i  reason: collision with root package name */
    private I f21636i;

    /* renamed from: j  reason: collision with root package name */
    private E f21637j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f21638k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f21639l;

    /* renamed from: m  reason: collision with root package name */
    private int f21640m;

    /* compiled from: SimpleDecoder.java */
    /* loaded from: classes2.dex */
    class a extends Thread {
        a(String str) {
            super(str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            g.this.t();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public g(I[] iArr, O[] oArr) {
        this.f21632e = iArr;
        this.f21634g = iArr.length;
        for (int i4 = 0; i4 < this.f21634g; i4++) {
            this.f21632e[i4] = g();
        }
        this.f21633f = oArr;
        this.f21635h = oArr.length;
        for (int i10 = 0; i10 < this.f21635h; i10++) {
            this.f21633f[i10] = h();
        }
        a aVar = new a("ExoPlayer:SimpleDecoder");
        this.f21628a = aVar;
        aVar.start();
    }

    private boolean f() {
        return !this.f21630c.isEmpty() && this.f21635h > 0;
    }

    private boolean k() throws InterruptedException {
        E i4;
        synchronized (this.f21629b) {
            while (!this.f21639l && !f()) {
                this.f21629b.wait();
            }
            if (this.f21639l) {
                return false;
            }
            I removeFirst = this.f21630c.removeFirst();
            O[] oArr = this.f21633f;
            int i10 = this.f21635h - 1;
            this.f21635h = i10;
            O o9 = oArr[i10];
            boolean z9 = this.f21638k;
            this.f21638k = false;
            if (removeFirst.l()) {
                o9.e(4);
            } else {
                if (removeFirst.k()) {
                    o9.e(Integer.MIN_VALUE);
                }
                try {
                    i4 = j(removeFirst, o9, z9);
                } catch (OutOfMemoryError e4) {
                    i4 = i(e4);
                } catch (RuntimeException e10) {
                    i4 = i(e10);
                }
                if (i4 != null) {
                    synchronized (this.f21629b) {
                        this.f21637j = i4;
                    }
                    return false;
                }
            }
            synchronized (this.f21629b) {
                if (this.f21638k) {
                    o9.o();
                } else if (o9.k()) {
                    this.f21640m++;
                    o9.o();
                } else {
                    o9.f21627c = this.f21640m;
                    this.f21640m = 0;
                    this.f21631d.addLast(o9);
                }
                q(removeFirst);
            }
            return true;
        }
    }

    private void n() {
        if (f()) {
            this.f21629b.notify();
        }
    }

    private void o() throws DecoderException {
        E e4 = this.f21637j;
        if (e4 != null) {
            throw e4;
        }
    }

    private void q(I i4) {
        i4.f();
        I[] iArr = this.f21632e;
        int i10 = this.f21634g;
        this.f21634g = i10 + 1;
        iArr[i10] = i4;
    }

    private void s(O o9) {
        o9.f();
        O[] oArr = this.f21633f;
        int i4 = this.f21635h;
        this.f21635h = i4 + 1;
        oArr[i4] = o9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        do {
            try {
            } catch (InterruptedException e4) {
                throw new IllegalStateException(e4);
            }
        } while (k());
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public final void flush() {
        synchronized (this.f21629b) {
            this.f21638k = true;
            this.f21640m = 0;
            I i4 = this.f21636i;
            if (i4 != null) {
                q(i4);
                this.f21636i = null;
            }
            while (!this.f21630c.isEmpty()) {
                q(this.f21630c.removeFirst());
            }
            while (!this.f21631d.isEmpty()) {
                this.f21631d.removeFirst().o();
            }
        }
    }

    protected abstract I g();

    protected abstract O h();

    protected abstract E i(Throwable th);

    @Nullable
    protected abstract E j(I i4, O o9, boolean z9);

    @Override // com.google.android.exoplayer2.decoder.c
    @Nullable
    /* renamed from: l */
    public final I d() throws DecoderException {
        I i4;
        synchronized (this.f21629b) {
            o();
            com.google.android.exoplayer2.util.a.i(this.f21636i == null);
            int i10 = this.f21634g;
            if (i10 == 0) {
                i4 = null;
            } else {
                I[] iArr = this.f21632e;
                int i11 = i10 - 1;
                this.f21634g = i11;
                i4 = iArr[i11];
            }
            this.f21636i = i4;
        }
        return i4;
    }

    @Override // com.google.android.exoplayer2.decoder.c
    @Nullable
    /* renamed from: m */
    public final O b() throws DecoderException {
        synchronized (this.f21629b) {
            o();
            if (this.f21631d.isEmpty()) {
                return null;
            }
            return this.f21631d.removeFirst();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.c
    /* renamed from: p */
    public final void c(I i4) throws DecoderException {
        synchronized (this.f21629b) {
            o();
            com.google.android.exoplayer2.util.a.a(i4 == this.f21636i);
            this.f21630c.addLast(i4);
            n();
            this.f21636i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @CallSuper
    public void r(O o9) {
        synchronized (this.f21629b) {
            s(o9);
            n();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.c
    @CallSuper
    public void release() {
        synchronized (this.f21629b) {
            this.f21639l = true;
            this.f21629b.notify();
        }
        try {
            this.f21628a.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u(int i4) {
        com.google.android.exoplayer2.util.a.i(this.f21634g == this.f21632e.length);
        for (I i10 : this.f21632e) {
            i10.p(i4);
        }
    }
}
