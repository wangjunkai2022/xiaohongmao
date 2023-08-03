package io.reactivex.internal.queue;

import io.reactivex.internal.util.m;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import m7.f;
import o7.n;

/* compiled from: SpscLinkedArrayQueue.java */
/* loaded from: classes4.dex */
public final class b<T> implements n<T> {

    /* renamed from: i  reason: collision with root package name */
    static final int f75603i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j  reason: collision with root package name */
    private static final Object f75604j = new Object();

    /* renamed from: b  reason: collision with root package name */
    int f75606b;

    /* renamed from: c  reason: collision with root package name */
    long f75607c;

    /* renamed from: d  reason: collision with root package name */
    final int f75608d;

    /* renamed from: e  reason: collision with root package name */
    AtomicReferenceArray<Object> f75609e;

    /* renamed from: f  reason: collision with root package name */
    final int f75610f;

    /* renamed from: g  reason: collision with root package name */
    AtomicReferenceArray<Object> f75611g;

    /* renamed from: a  reason: collision with root package name */
    final AtomicLong f75605a = new AtomicLong();

    /* renamed from: h  reason: collision with root package name */
    final AtomicLong f75612h = new AtomicLong();

    public b(int i4) {
        int b10 = m.b(Math.max(8, i4));
        int i10 = b10 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(b10 + 1);
        this.f75609e = atomicReferenceArray;
        this.f75608d = i10;
        a(b10);
        this.f75611g = atomicReferenceArray;
        this.f75610f = i10;
        this.f75607c = i10 - 1;
        t(0L);
    }

    private void a(int i4) {
        this.f75606b = Math.min(i4 / 4, f75603i);
    }

    private static int b(int i4) {
        return i4;
    }

    private static int f(long j4, int i4) {
        return b(((int) j4) & i4);
    }

    private long g() {
        return this.f75612h.get();
    }

    private long h() {
        return this.f75605a.get();
    }

    private long i() {
        return this.f75612h.get();
    }

    private static <E> Object j(AtomicReferenceArray<Object> atomicReferenceArray, int i4) {
        return atomicReferenceArray.get(i4);
    }

    private AtomicReferenceArray<Object> k(AtomicReferenceArray<Object> atomicReferenceArray, int i4) {
        int b10 = b(i4);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) j(atomicReferenceArray, b10);
        r(atomicReferenceArray, b10, null);
        return atomicReferenceArray2;
    }

    private long l() {
        return this.f75605a.get();
    }

    private T m(AtomicReferenceArray<Object> atomicReferenceArray, long j4, int i4) {
        this.f75611g = atomicReferenceArray;
        return (T) j(atomicReferenceArray, f(j4, i4));
    }

    private T n(AtomicReferenceArray<Object> atomicReferenceArray, long j4, int i4) {
        this.f75611g = atomicReferenceArray;
        int f10 = f(j4, i4);
        T t9 = (T) j(atomicReferenceArray, f10);
        if (t9 != null) {
            r(atomicReferenceArray, f10, null);
            q(j4 + 1);
        }
        return t9;
    }

    private void o(AtomicReferenceArray<Object> atomicReferenceArray, long j4, int i4, T t9, long j10) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f75609e = atomicReferenceArray2;
        this.f75607c = (j10 + j4) - 1;
        r(atomicReferenceArray2, i4, t9);
        s(atomicReferenceArray, atomicReferenceArray2);
        r(atomicReferenceArray, i4, f75604j);
        t(j4 + 1);
    }

    private void q(long j4) {
        this.f75612h.lazySet(j4);
    }

    private static void r(AtomicReferenceArray<Object> atomicReferenceArray, int i4, Object obj) {
        atomicReferenceArray.lazySet(i4, obj);
    }

    private void s(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        r(atomicReferenceArray, b(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    private void t(long j4) {
        this.f75605a.lazySet(j4);
    }

    private boolean u(AtomicReferenceArray<Object> atomicReferenceArray, T t9, long j4, int i4) {
        r(atomicReferenceArray, i4, t9);
        t(j4 + 1);
        return true;
    }

    @Override // o7.o
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // o7.o
    public boolean isEmpty() {
        return l() == i();
    }

    @Override // o7.o
    public boolean offer(T t9) {
        Objects.requireNonNull(t9, "Null is not a valid element");
        AtomicReferenceArray<Object> atomicReferenceArray = this.f75609e;
        long h4 = h();
        int i4 = this.f75608d;
        int f10 = f(h4, i4);
        if (h4 < this.f75607c) {
            return u(atomicReferenceArray, t9, h4, f10);
        }
        long j4 = this.f75606b + h4;
        if (j(atomicReferenceArray, f(j4, i4)) == null) {
            this.f75607c = j4 - 1;
            return u(atomicReferenceArray, t9, h4, f10);
        } else if (j(atomicReferenceArray, f(1 + h4, i4)) == null) {
            return u(atomicReferenceArray, t9, h4, f10);
        } else {
            o(atomicReferenceArray, h4, f10, t9, i4);
            return true;
        }
    }

    public int p() {
        long i4 = i();
        while (true) {
            long l10 = l();
            long i10 = i();
            if (i4 == i10) {
                return (int) (l10 - i10);
            }
            i4 = i10;
        }
    }

    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f75611g;
        long g4 = g();
        int i4 = this.f75610f;
        T t9 = (T) j(atomicReferenceArray, f(g4, i4));
        return t9 == f75604j ? m(k(atomicReferenceArray, i4 + 1), g4, i4) : t9;
    }

    @Override // o7.n, o7.o
    @f
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f75611g;
        long g4 = g();
        int i4 = this.f75610f;
        int f10 = f(g4, i4);
        T t9 = (T) j(atomicReferenceArray, f10);
        boolean z9 = t9 == f75604j;
        if (t9 == null || z9) {
            if (z9) {
                return n(k(atomicReferenceArray, i4 + 1), g4, i4);
            }
            return null;
        }
        r(atomicReferenceArray, f10, null);
        q(g4 + 1);
        return t9;
    }

    @Override // o7.o
    public boolean offer(T t9, T t10) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f75609e;
        long l10 = l();
        int i4 = this.f75608d;
        long j4 = 2 + l10;
        if (j(atomicReferenceArray, f(j4, i4)) == null) {
            int f10 = f(l10, i4);
            r(atomicReferenceArray, f10 + 1, t10);
            r(atomicReferenceArray, f10, t9);
            t(j4);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f75609e = atomicReferenceArray2;
        int f11 = f(l10, i4);
        r(atomicReferenceArray2, f11 + 1, t10);
        r(atomicReferenceArray2, f11, t9);
        s(atomicReferenceArray, atomicReferenceArray2);
        r(atomicReferenceArray, f11, f75604j);
        t(j4);
        return true;
    }
}
