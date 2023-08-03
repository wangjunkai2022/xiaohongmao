package io.reactivex.internal.operators.single;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: SingleFromPublisher.java */
/* loaded from: classes4.dex */
public final class e0<T> extends io.reactivex.i0<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f75366a;

    /* compiled from: SingleFromPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f75367a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f75368b;

        /* renamed from: c  reason: collision with root package name */
        T f75369c;

        /* renamed from: d  reason: collision with root package name */
        boolean f75370d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f75371e;

        a(io.reactivex.l0<? super T> l0Var) {
            this.f75367a = l0Var;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f75371e = true;
            this.f75368b.cancel();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f75371e;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f75370d) {
                return;
            }
            this.f75370d = true;
            T t9 = this.f75369c;
            this.f75369c = null;
            if (t9 == null) {
                this.f75367a.onError(new NoSuchElementException("The source Publisher is empty"));
            } else {
                this.f75367a.onSuccess(t9);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75370d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f75370d = true;
            this.f75369c = null;
            this.f75367a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75370d) {
                return;
            }
            if (this.f75369c != null) {
                this.f75368b.cancel();
                this.f75370d = true;
                this.f75369c = null;
                this.f75367a.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
                return;
            }
            this.f75369c = t9;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f75368b, eVar)) {
                this.f75368b = eVar;
                this.f75367a.onSubscribe(this);
                eVar.request(Long.MAX_VALUE);
            }
        }
    }

    public e0(org.reactivestreams.c<? extends T> cVar) {
        this.f75366a = cVar;
    }

    @Override // io.reactivex.i0
    protected void b1(io.reactivex.l0<? super T> l0Var) {
        this.f75366a.i(new a(l0Var));
    }
}
