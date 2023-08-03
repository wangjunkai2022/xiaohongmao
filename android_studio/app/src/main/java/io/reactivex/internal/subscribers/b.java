package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.o;

/* compiled from: BasicFuseableSubscriber.java */
/* loaded from: classes4.dex */
public abstract class b<T, R> implements o<T>, o7.l<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final org.reactivestreams.d<? super R> f75819a;

    /* renamed from: b  reason: collision with root package name */
    protected org.reactivestreams.e f75820b;

    /* renamed from: c  reason: collision with root package name */
    protected o7.l<T> f75821c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f75822d;

    /* renamed from: e  reason: collision with root package name */
    protected int f75823e;

    public b(org.reactivestreams.d<? super R> dVar) {
        this.f75819a = dVar;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        this.f75820b.cancel();
    }

    public void clear() {
        this.f75821c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(Throwable th) {
        io.reactivex.exceptions.a.b(th);
        this.f75820b.cancel();
        onError(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int g(int i4) {
        o7.l<T> lVar = this.f75821c;
        if (lVar == null || (i4 & 4) != 0) {
            return 0;
        }
        int requestFusion = lVar.requestFusion(i4);
        if (requestFusion != 0) {
            this.f75823e = requestFusion;
        }
        return requestFusion;
    }

    @Override // o7.o
    public boolean isEmpty() {
        return this.f75821c.isEmpty();
    }

    @Override // o7.o
    public final boolean offer(R r9) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f75822d) {
            return;
        }
        this.f75822d = true;
        this.f75819a.onComplete();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f75822d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f75822d = true;
        this.f75819a.onError(th);
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.validate(this.f75820b, eVar)) {
            this.f75820b = eVar;
            if (eVar instanceof o7.l) {
                this.f75821c = (o7.l) eVar;
            }
            if (b()) {
                this.f75819a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        this.f75820b.request(j4);
    }

    @Override // o7.o
    public final boolean offer(R r9, R r10) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
