package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements o<T>, org.reactivestreams.e {

    /* renamed from: e  reason: collision with root package name */
    private static final long f75797e = 7917814472626990048L;

    /* renamed from: f  reason: collision with root package name */
    static final long f75798f = Long.MIN_VALUE;

    /* renamed from: g  reason: collision with root package name */
    static final long f75799g = Long.MAX_VALUE;

    /* renamed from: a  reason: collision with root package name */
    protected final org.reactivestreams.d<? super R> f75800a;

    /* renamed from: b  reason: collision with root package name */
    protected org.reactivestreams.e f75801b;

    /* renamed from: c  reason: collision with root package name */
    protected R f75802c;

    /* renamed from: d  reason: collision with root package name */
    protected long f75803d;

    public SinglePostCompleteSubscriber(org.reactivestreams.d<? super R> dVar) {
        this.f75800a = dVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(R r9) {
        long j4 = this.f75803d;
        if (j4 != 0) {
            io.reactivex.internal.util.b.e(this, j4);
        }
        while (true) {
            long j10 = get();
            if ((j10 & Long.MIN_VALUE) != 0) {
                b(r9);
                return;
            } else if ((j10 & Long.MAX_VALUE) != 0) {
                lazySet(com.google.android.exoplayer2.i.f23649b);
                this.f75800a.onNext(r9);
                this.f75800a.onComplete();
                return;
            } else {
                this.f75802c = r9;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                }
                this.f75802c = null;
            }
        }
    }

    protected void b(R r9) {
    }

    public void cancel() {
        this.f75801b.cancel();
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.validate(this.f75801b, eVar)) {
            this.f75801b = eVar;
            this.f75800a.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.e
    public final void request(long j4) {
        long j10;
        if (SubscriptionHelper.validate(j4)) {
            do {
                j10 = get();
                if ((j10 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, com.google.android.exoplayer2.i.f23649b)) {
                        this.f75800a.onNext((R) this.f75802c);
                        this.f75800a.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j10, io.reactivex.internal.util.b.c(j10, j4)));
            this.f75801b.request(j4);
        }
    }
}
