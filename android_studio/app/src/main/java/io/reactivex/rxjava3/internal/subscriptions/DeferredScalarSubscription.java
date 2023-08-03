package io.reactivex.rxjava3.internal.subscriptions;

import org.reactivestreams.d;
import p7.f;

/* loaded from: classes4.dex */
public class DeferredScalarSubscription<T> extends BasicIntQueueSubscription<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f81282d = -2151279923272604993L;

    /* renamed from: e  reason: collision with root package name */
    static final int f81283e = 0;

    /* renamed from: f  reason: collision with root package name */
    static final int f81284f = 1;

    /* renamed from: g  reason: collision with root package name */
    static final int f81285g = 2;

    /* renamed from: h  reason: collision with root package name */
    static final int f81286h = 3;

    /* renamed from: i  reason: collision with root package name */
    static final int f81287i = 4;

    /* renamed from: j  reason: collision with root package name */
    static final int f81288j = 8;

    /* renamed from: k  reason: collision with root package name */
    static final int f81289k = 16;

    /* renamed from: l  reason: collision with root package name */
    static final int f81290l = 32;

    /* renamed from: b  reason: collision with root package name */
    protected final d<? super T> f81291b;

    /* renamed from: c  reason: collision with root package name */
    protected T f81292c;

    public DeferredScalarSubscription(d<? super T> downstream) {
        this.f81291b = downstream;
    }

    public void cancel() {
        set(4);
        this.f81292c = null;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final void clear() {
        lazySet(32);
        this.f81292c = null;
    }

    public final void complete(T v9) {
        int i4 = get();
        while (i4 != 8) {
            if ((i4 & (-3)) != 0) {
                return;
            }
            if (i4 == 2) {
                lazySet(3);
                d<? super T> dVar = this.f81291b;
                dVar.onNext(v9);
                if (get() != 4) {
                    dVar.onComplete();
                    return;
                }
                return;
            }
            this.f81292c = v9;
            if (compareAndSet(0, 1)) {
                return;
            }
            i4 = get();
            if (i4 == 4) {
                this.f81292c = null;
                return;
            }
        }
        this.f81292c = v9;
        lazySet(16);
        d<? super T> dVar2 = this.f81291b;
        dVar2.onNext(v9);
        if (get() != 4) {
            dVar2.onComplete();
        }
    }

    public final boolean isCancelled() {
        return get() == 4;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    @f
    public final T poll() {
        if (get() == 16) {
            lazySet(32);
            T t9 = this.f81292c;
            this.f81292c = null;
            return t9;
        }
        return null;
    }

    @Override // org.reactivestreams.e
    public final void request(long n9) {
        T t9;
        if (SubscriptionHelper.validate(n9)) {
            do {
                int i4 = get();
                if ((i4 & (-2)) != 0) {
                    return;
                }
                if (i4 == 1) {
                    if (!compareAndSet(1, 3) || (t9 = this.f81292c) == null) {
                        return;
                    }
                    this.f81292c = null;
                    d<? super T> dVar = this.f81291b;
                    dVar.onNext(t9);
                    if (get() != 4) {
                        dVar.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(0, 2));
        }
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.m
    public final int requestFusion(int mode) {
        if ((mode & 2) != 0) {
            lazySet(8);
            return 2;
        }
        return 0;
    }

    public final boolean tryCancel() {
        return getAndSet(4) != 4;
    }
}
