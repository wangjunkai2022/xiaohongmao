package io.reactivex.rxjava3.internal.queue;

import io.reactivex.rxjava3.internal.fuseable.p;
import io.reactivex.rxjava3.internal.util.m;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p7.f;

/* loaded from: classes4.dex */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements p<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f81007f = -1296597691183856449L;

    /* renamed from: g  reason: collision with root package name */
    private static final Integer f81008g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: a  reason: collision with root package name */
    final int f81009a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicLong f81010b;

    /* renamed from: c  reason: collision with root package name */
    long f81011c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicLong f81012d;

    /* renamed from: e  reason: collision with root package name */
    final int f81013e;

    public SpscArrayQueue(int capacity) {
        super(m.b(capacity));
        this.f81009a = length() - 1;
        this.f81010b = new AtomicLong();
        this.f81012d = new AtomicLong();
        this.f81013e = Math.min(capacity / 4, f81008g.intValue());
    }

    int a(long index) {
        return this.f81009a & ((int) index);
    }

    int b(long index, int mask) {
        return ((int) index) & mask;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    E h(int offset) {
        return get(offset);
    }

    void i(long newIndex) {
        this.f81012d.lazySet(newIndex);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return this.f81010b.get() == this.f81012d.get();
    }

    void j(int offset, E value) {
        lazySet(offset, value);
    }

    void k(long newIndex) {
        this.f81010b.lazySet(newIndex);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(E e4) {
        Objects.requireNonNull(e4, "Null is not a valid element");
        int i4 = this.f81009a;
        long j4 = this.f81010b.get();
        int b10 = b(j4, i4);
        if (j4 >= this.f81011c) {
            long j10 = this.f81013e + j4;
            if (h(b(j10, i4)) == null) {
                this.f81011c = j10;
            } else if (h(b10) != null) {
                return false;
            }
        }
        j(b10, e4);
        k(j4 + 1);
        return true;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.p, io.reactivex.rxjava3.internal.fuseable.q
    @f
    public E poll() {
        long j4 = this.f81012d.get();
        int a10 = a(j4);
        E h4 = h(a10);
        if (h4 == null) {
            return null;
        }
        i(j4 + 1);
        j(a10, null);
        return h4;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean offer(E v12, E v22) {
        return offer(v12) && offer(v22);
    }
}
