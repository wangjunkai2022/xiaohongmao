package io.reactivex.internal.subscriptions;

import m7.f;
import org.reactivestreams.d;

/* loaded from: classes4.dex */
public class DeferredScalarSubscription<T> extends BasicIntQueueSubscription<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final long f75867d = -2151279923272604993L;

    /* renamed from: e  reason: collision with root package name */
    static final int f75868e = 0;

    /* renamed from: f  reason: collision with root package name */
    static final int f75869f = 1;

    /* renamed from: g  reason: collision with root package name */
    static final int f75870g = 2;

    /* renamed from: h  reason: collision with root package name */
    static final int f75871h = 3;

    /* renamed from: i  reason: collision with root package name */
    static final int f75872i = 4;

    /* renamed from: j  reason: collision with root package name */
    static final int f75873j = 8;

    /* renamed from: k  reason: collision with root package name */
    static final int f75874k = 16;

    /* renamed from: l  reason: collision with root package name */
    static final int f75875l = 32;

    /* renamed from: b  reason: collision with root package name */
    protected final d<? super T> f75876b;

    /* renamed from: c  reason: collision with root package name */
    protected T f75877c;

    public DeferredScalarSubscription(d<? super T> dVar) {
        this.f75876b = dVar;
    }

    public void cancel() {
        set(4);
        this.f75877c = null;
    }

    @Override // o7.o
    public final void clear() {
        lazySet(32);
        this.f75877c = null;
    }

    public final void complete(T t9) {
        int i4 = get();
        while (i4 != 8) {
            if ((i4 & (-3)) != 0) {
                return;
            }
            if (i4 == 2) {
                lazySet(3);
                d<? super T> dVar = this.f75876b;
                dVar.onNext(t9);
                if (get() != 4) {
                    dVar.onComplete();
                    return;
                }
                return;
            }
            this.f75877c = t9;
            if (compareAndSet(0, 1)) {
                return;
            }
            i4 = get();
            if (i4 == 4) {
                this.f75877c = null;
                return;
            }
        }
        this.f75877c = t9;
        lazySet(16);
        d<? super T> dVar2 = this.f75876b;
        dVar2.onNext(t9);
        if (get() != 4) {
            dVar2.onComplete();
        }
    }

    public final boolean isCancelled() {
        return get() == 4;
    }

    @Override // o7.o
    public final boolean isEmpty() {
        return get() != 16;
    }

    @Override // o7.o
    @f
    public final T poll() {
        if (get() == 16) {
            lazySet(32);
            T t9 = this.f75877c;
            this.f75877c = null;
            return t9;
        }
        return null;
    }

    @Override // org.reactivestreams.e
    public final void request(long j4) {
        T t9;
        if (SubscriptionHelper.validate(j4)) {
            do {
                int i4 = get();
                if ((i4 & (-2)) != 0) {
                    return;
                }
                if (i4 == 1) {
                    if (!compareAndSet(1, 3) || (t9 = this.f75877c) == null) {
                        return;
                    }
                    this.f75877c = null;
                    d<? super T> dVar = this.f75876b;
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

    @Override // o7.k
    public final int requestFusion(int i4) {
        if ((i4 & 2) != 0) {
            lazySet(8);
            return 2;
        }
        return 0;
    }

    public final boolean tryCancel() {
        return getAndSet(4) != 4;
    }
}
