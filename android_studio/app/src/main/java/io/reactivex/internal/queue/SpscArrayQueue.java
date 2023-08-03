package io.reactivex.internal.queue;

import io.reactivex.internal.util.m;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;
import m7.f;
import o7.n;

/* loaded from: classes4.dex */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements n<E> {

    /* renamed from: f  reason: collision with root package name */
    private static final long f75592f = -1296597691183856449L;

    /* renamed from: g  reason: collision with root package name */
    private static final Integer f75593g = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: a  reason: collision with root package name */
    final int f75594a;

    /* renamed from: b  reason: collision with root package name */
    final AtomicLong f75595b;

    /* renamed from: c  reason: collision with root package name */
    long f75596c;

    /* renamed from: d  reason: collision with root package name */
    final AtomicLong f75597d;

    /* renamed from: e  reason: collision with root package name */
    final int f75598e;

    public SpscArrayQueue(int i4) {
        super(m.b(i4));
        this.f75594a = length() - 1;
        this.f75595b = new AtomicLong();
        this.f75597d = new AtomicLong();
        this.f75598e = Math.min(i4 / 4, f75593g.intValue());
    }

    int a(long j4) {
        return this.f75594a & ((int) j4);
    }

    int b(long j4, int i4) {
        return ((int) j4) & i4;
    }

    @Override // o7.o
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    E h(int i4) {
        return get(i4);
    }

    void i(long j4) {
        this.f75597d.lazySet(j4);
    }

    @Override // o7.o
    public boolean isEmpty() {
        return this.f75595b.get() == this.f75597d.get();
    }

    void j(int i4, E e4) {
        lazySet(i4, e4);
    }

    void k(long j4) {
        this.f75595b.lazySet(j4);
    }

    @Override // o7.o
    public boolean offer(E e4) {
        Objects.requireNonNull(e4, "Null is not a valid element");
        int i4 = this.f75594a;
        long j4 = this.f75595b.get();
        int b10 = b(j4, i4);
        if (j4 >= this.f75596c) {
            long j10 = this.f75598e + j4;
            if (h(b(j10, i4)) == null) {
                this.f75596c = j10;
            } else if (h(b10) != null) {
                return false;
            }
        }
        j(b10, e4);
        k(j4 + 1);
        return true;
    }

    @Override // o7.n, o7.o
    @f
    public E poll() {
        long j4 = this.f75597d.get();
        int a10 = a(j4);
        E h4 = h(a10);
        if (h4 == null) {
            return null;
        }
        i(j4 + 1);
        j(a10, null);
        return h4;
    }

    @Override // o7.o
    public boolean offer(E e4, E e10) {
        return offer(e4) && offer(e10);
    }
}
