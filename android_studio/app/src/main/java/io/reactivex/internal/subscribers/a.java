package io.reactivex.internal.subscribers;

import io.reactivex.internal.subscriptions.SubscriptionHelper;

/* compiled from: BasicFuseableConditionalSubscriber.java */
/* loaded from: classes4.dex */
public abstract class a<T, R> implements o7.a<T>, o7.l<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final o7.a<? super R> f75814a;

    /* renamed from: b  reason: collision with root package name */
    protected org.reactivestreams.e f75815b;

    /* renamed from: c  reason: collision with root package name */
    protected o7.l<T> f75816c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f75817d;

    /* renamed from: e  reason: collision with root package name */
    protected int f75818e;

    public a(o7.a<? super R> aVar) {
        this.f75814a = aVar;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        this.f75815b.cancel();
    }

    @Override // o7.o
    public void clear() {
        this.f75816c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(Throwable th) {
        io.reactivex.exceptions.a.b(th);
        this.f75815b.cancel();
        onError(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int g(int i4) {
        o7.l<T> lVar = this.f75816c;
        if (lVar == null || (i4 & 4) != 0) {
            return 0;
        }
        int requestFusion = lVar.requestFusion(i4);
        if (requestFusion != 0) {
            this.f75818e = requestFusion;
        }
        return requestFusion;
    }

    @Override // o7.o
    public boolean isEmpty() {
        return this.f75816c.isEmpty();
    }

    @Override // o7.o
    public final boolean offer(R r9) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f75817d) {
            return;
        }
        this.f75817d = true;
        this.f75814a.onComplete();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable th) {
        if (this.f75817d) {
            io.reactivex.plugins.a.Y(th);
            return;
        }
        this.f75817d = true;
        this.f75814a.onError(th);
    }

    @Override // io.reactivex.o, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e eVar) {
        if (SubscriptionHelper.validate(this.f75815b, eVar)) {
            this.f75815b = eVar;
            if (eVar instanceof o7.l) {
                this.f75816c = (o7.l) eVar;
            }
            if (b()) {
                this.f75814a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long j4) {
        this.f75815b.request(j4);
    }

    @Override // o7.o
    public final boolean offer(R r9, R r10) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
