package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.internal.fuseable.n;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: BasicFuseableConditionalSubscriber.java */
/* loaded from: classes4.dex */
public abstract class a<T, R> implements io.reactivex.rxjava3.internal.fuseable.c<T>, n<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final io.reactivex.rxjava3.internal.fuseable.c<? super R> f81229a;

    /* renamed from: b  reason: collision with root package name */
    protected org.reactivestreams.e f81230b;

    /* renamed from: c  reason: collision with root package name */
    protected n<T> f81231c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f81232d;

    /* renamed from: e  reason: collision with root package name */
    protected int f81233e;

    public a(io.reactivex.rxjava3.internal.fuseable.c<? super R> downstream) {
        this.f81229a = downstream;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        this.f81230b.cancel();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public void clear() {
        this.f81231c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(Throwable t9) {
        io.reactivex.rxjava3.exceptions.a.b(t9);
        this.f81230b.cancel();
        onError(t9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int g(int mode) {
        n<T> nVar = this.f81231c;
        if (nVar == null || (mode & 4) != 0) {
            return 0;
        }
        int requestFusion = nVar.requestFusion(mode);
        if (requestFusion != 0) {
            this.f81233e = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return this.f81231c.isEmpty();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(R e4) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81232d) {
            return;
        }
        this.f81232d = true;
        this.f81229a.onComplete();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        if (this.f81232d) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81232d = true;
        this.f81229a.onError(t9);
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.validate(this.f81230b, s9)) {
            this.f81230b = s9;
            if (s9 instanceof n) {
                this.f81231c = (n) s9;
            }
            if (b()) {
                this.f81229a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        this.f81230b.request(n9);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(R v12, R v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
