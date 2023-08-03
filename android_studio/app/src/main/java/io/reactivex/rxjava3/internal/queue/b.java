package io.reactivex.rxjava3.internal.queue;

import io.reactivex.rxjava3.internal.fuseable.p;
import io.reactivex.rxjava3.internal.util.m;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p7.f;

/* compiled from: SpscLinkedArrayQueue.java */
/* loaded from: classes4.dex */
public final class b<T> implements p<T> {

    /* renamed from: i  reason: collision with root package name */
    static final int f81018i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    /* renamed from: j  reason: collision with root package name */
    private static final Object f81019j = new Object();

    /* renamed from: b  reason: collision with root package name */
    int f81021b;

    /* renamed from: c  reason: collision with root package name */
    long f81022c;

    /* renamed from: d  reason: collision with root package name */
    final int f81023d;

    /* renamed from: e  reason: collision with root package name */
    AtomicReferenceArray<Object> f81024e;

    /* renamed from: f  reason: collision with root package name */
    final int f81025f;

    /* renamed from: g  reason: collision with root package name */
    AtomicReferenceArray<Object> f81026g;

    /* renamed from: a  reason: collision with root package name */
    final AtomicLong f81020a = new AtomicLong();

    /* renamed from: h  reason: collision with root package name */
    final AtomicLong f81027h = new AtomicLong();

    public b(final int bufferSize) {
        int b10 = m.b(Math.max(8, bufferSize));
        int i4 = b10 - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(b10 + 1);
        this.f81024e = atomicReferenceArray;
        this.f81023d = i4;
        a(b10);
        this.f81026g = atomicReferenceArray;
        this.f81025f = i4;
        this.f81022c = i4 - 1;
        t(0L);
    }

    private void a(int capacity) {
        this.f81021b = Math.min(capacity / 4, f81018i);
    }

    private static int b(int index) {
        return index;
    }

    private static int f(long index, int mask) {
        return b(((int) index) & mask);
    }

    private long g() {
        return this.f81027h.get();
    }

    private long h() {
        return this.f81020a.get();
    }

    private long i() {
        return this.f81027h.get();
    }

    private static Object j(AtomicReferenceArray<Object> buffer, int offset) {
        return buffer.get(offset);
    }

    private AtomicReferenceArray<Object> k(AtomicReferenceArray<Object> curr, int nextIndex) {
        int b10 = b(nextIndex);
        AtomicReferenceArray<Object> atomicReferenceArray = (AtomicReferenceArray) j(curr, b10);
        r(curr, b10, null);
        return atomicReferenceArray;
    }

    private long l() {
        return this.f81020a.get();
    }

    private T m(AtomicReferenceArray<Object> nextBuffer, final long index, final int mask) {
        this.f81026g = nextBuffer;
        return (T) j(nextBuffer, f(index, mask));
    }

    private T n(AtomicReferenceArray<Object> nextBuffer, final long index, final int mask) {
        this.f81026g = nextBuffer;
        int f10 = f(index, mask);
        T t9 = (T) j(nextBuffer, f10);
        if (t9 != null) {
            r(nextBuffer, f10, null);
            q(index + 1);
        }
        return t9;
    }

    private void o(final AtomicReferenceArray<Object> oldBuffer, final long currIndex, final int offset, final T e4, final long mask) {
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(oldBuffer.length());
        this.f81024e = atomicReferenceArray;
        this.f81022c = (mask + currIndex) - 1;
        r(atomicReferenceArray, offset, e4);
        s(oldBuffer, atomicReferenceArray);
        r(oldBuffer, offset, f81019j);
        t(currIndex + 1);
    }

    private void q(long v9) {
        this.f81027h.lazySet(v9);
    }

    private static void r(AtomicReferenceArray<Object> buffer, int offset, Object e4) {
        buffer.lazySet(offset, e4);
    }

    private void s(AtomicReferenceArray<Object> curr, AtomicReferenceArray<Object> next) {
        r(curr, b(curr.length() - 1), next);
    }

    private void t(long v9) {
        this.f81020a.lazySet(v9);
    }

    private boolean u(final AtomicReferenceArray<Object> buffer, final T e4, final long index, final int offset) {
        r(buffer, offset, e4);
        t(index + 1);
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return l() == i();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(final T e4) {
        Objects.requireNonNull(e4, "Null is not a valid element");
        AtomicReferenceArray<Object> atomicReferenceArray = this.f81024e;
        long h4 = h();
        int i4 = this.f81023d;
        int f10 = f(h4, i4);
        if (h4 < this.f81022c) {
            return u(atomicReferenceArray, e4, h4, f10);
        }
        long j4 = this.f81021b + h4;
        if (j(atomicReferenceArray, f(j4, i4)) == null) {
            this.f81022c = j4 - 1;
            return u(atomicReferenceArray, e4, h4, f10);
        } else if (j(atomicReferenceArray, f(1 + h4, i4)) == null) {
            return u(atomicReferenceArray, e4, h4, f10);
        } else {
            o(atomicReferenceArray, h4, f10, e4, i4);
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
        AtomicReferenceArray<Object> atomicReferenceArray = this.f81026g;
        long g4 = g();
        int i4 = this.f81025f;
        T t9 = (T) j(atomicReferenceArray, f(g4, i4));
        return t9 == f81019j ? m(k(atomicReferenceArray, i4 + 1), g4, i4) : t9;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.p, io.reactivex.rxjava3.internal.fuseable.q
    @f
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f81026g;
        long g4 = g();
        int i4 = this.f81025f;
        int f10 = f(g4, i4);
        T t9 = (T) j(atomicReferenceArray, f10);
        boolean z9 = t9 == f81019j;
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

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(T first, T second) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f81024e;
        long l10 = l();
        int i4 = this.f81023d;
        long j4 = 2 + l10;
        if (j(atomicReferenceArray, f(j4, i4)) == null) {
            int f10 = f(l10, i4);
            r(atomicReferenceArray, f10 + 1, second);
            r(atomicReferenceArray, f10, first);
            t(j4);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.f81024e = atomicReferenceArray2;
        int f11 = f(l10, i4);
        r(atomicReferenceArray2, f11 + 1, second);
        r(atomicReferenceArray2, f11, first);
        s(atomicReferenceArray, atomicReferenceArray2);
        r(atomicReferenceArray, f11, f81019j);
        t(j4);
        return true;
    }
}
