package io.reactivex.rxjava3.internal.subscribers;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.internal.fuseable.n;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;

/* compiled from: BasicFuseableSubscriber.java */
/* loaded from: classes4.dex */
public abstract class b<T, R> implements r<T>, n<R> {

    /* renamed from: a  reason: collision with root package name */
    protected final org.reactivestreams.d<? super R> f81234a;

    /* renamed from: b  reason: collision with root package name */
    protected org.reactivestreams.e f81235b;

    /* renamed from: c  reason: collision with root package name */
    protected n<T> f81236c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f81237d;

    /* renamed from: e  reason: collision with root package name */
    protected int f81238e;

    public b(org.reactivestreams.d<? super R> downstream) {
        this.f81234a = downstream;
    }

    protected void a() {
    }

    protected boolean b() {
        return true;
    }

    @Override // org.reactivestreams.e
    public void cancel() {
        this.f81235b.cancel();
    }

    public void clear() {
        this.f81236c.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f(Throwable t9) {
        io.reactivex.rxjava3.exceptions.a.b(t9);
        this.f81235b.cancel();
        onError(t9);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int g(int mode) {
        n<T> nVar = this.f81236c;
        if (nVar == null || (mode & 4) != 0) {
            return 0;
        }
        int requestFusion = nVar.requestFusion(mode);
        if (requestFusion != 0) {
            this.f81238e = requestFusion;
        }
        return requestFusion;
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public boolean isEmpty() {
        return this.f81236c.isEmpty();
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(R e4) {
        throw new UnsupportedOperationException("Should not be called!");
    }

    @Override // org.reactivestreams.d
    public void onComplete() {
        if (this.f81237d) {
            return;
        }
        this.f81237d = true;
        this.f81234a.onComplete();
    }

    @Override // org.reactivestreams.d
    public void onError(Throwable t9) {
        if (this.f81237d) {
            io.reactivex.rxjava3.plugins.a.Y(t9);
            return;
        }
        this.f81237d = true;
        this.f81234a.onError(t9);
    }

    @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
    public final void onSubscribe(org.reactivestreams.e s9) {
        if (SubscriptionHelper.validate(this.f81235b, s9)) {
            this.f81235b = s9;
            if (s9 instanceof n) {
                this.f81236c = (n) s9;
            }
            if (b()) {
                this.f81234a.onSubscribe(this);
                a();
            }
        }
    }

    @Override // org.reactivestreams.e
    public void request(long n9) {
        this.f81235b.request(n9);
    }

    @Override // io.reactivex.rxjava3.internal.fuseable.q
    public final boolean offer(R v12, R v22) {
        throw new UnsupportedOperationException("Should not be called!");
    }
}
