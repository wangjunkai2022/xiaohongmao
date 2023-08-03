package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes4.dex */
public abstract class SinglePostCompleteSubscriber<T, R> extends AtomicLong implements r<T>, org.reactivestreams.e {

    /* renamed from: e  reason: collision with root package name */
    private static final long f81212e = 7917814472626990048L;

    /* renamed from: f  reason: collision with root package name */
    static final long f81213f = Long.MIN_VALUE;

    /* renamed from: g  reason: collision with root package name */
    static final long f81214g = Long.MAX_VALUE;

    /* renamed from: a  reason: collision with root package name */
    protected final org.reactivestreams.d<? super R> f81215a;

    /* renamed from: b  reason: collision with root package name */
    protected org.reactivestreams.e f81216b;

    /* renamed from: c  reason: collision with root package name */
    protected R f81217c;

    /* renamed from: d  reason: collision with root package name */
    protected long f81218d;

    public SinglePostCompleteSubscriber(org.reactivestreams.d<? super R> downstream) {
        this.f81215a = downstream;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(R n9) {
        long j4 = this.f81218d;
        if (j4 != 0) {
            io.reactivex.rxjava3.internal.util.b.e(this, j4);
        }
        while (true) {
            long j10 = get();
            if ((j10 & Long.MIN_VALUE) != 0) {
                b(n9);
                return;
            } else if ((j10 & Long.MAX_VALUE) != 0) {
                lazySet(com.google.android.exoplayer2.i.f23649b);
                this.f81215a.onNext(n9);
                this.f81215a.onComplete();
                return;
            } else {
                this.f81217c = n9;
                if (compareAndSet(0L, Long.MIN_VALUE)) {
                    return;
                }
                this.f81217c = null;
            }
        }
    }

    protected void b(R n9) {
    }

    public void cancel() {
        this.f81216b.cancel();
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.validate(this.f81216b, s9)) {
            this.f81216b = s9;
            this.f81215a.onSubscribe(this);
        }
    }

    @Override // org.reactivestreams.e
    public final void request(long n9) {
        long j4;
        if (SubscriptionHelper.validate(n9)) {
            do {
                j4 = get();
                if ((j4 & Long.MIN_VALUE) != 0) {
                    if (compareAndSet(Long.MIN_VALUE, com.google.android.exoplayer2.i.f23649b)) {
                        this.f81215a.onNext((R) this.f81217c);
                        this.f81215a.onComplete();
                        return;
                    }
                    return;
                }
            } while (!compareAndSet(j4, io.reactivex.rxjava3.internal.util.b.c(j4, n9)));
            this.f81216b.request(n9);
        }
    }
}
