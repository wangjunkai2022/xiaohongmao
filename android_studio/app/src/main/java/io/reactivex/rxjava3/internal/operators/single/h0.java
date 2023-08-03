package io.reactivex.rxjava3.internal.operators.single;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.NoSuchElementException;

/* compiled from: SingleFromPublisher.java */
/* loaded from: classes4.dex */
public final class h0<T> extends io.reactivex.rxjava3.core.p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final org.reactivestreams.c<? extends T> f80828a;

    /* compiled from: SingleFromPublisher.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.r<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super T> f80829a;

        /* renamed from: b  reason: collision with root package name */
        org.reactivestreams.e f80830b;

        /* renamed from: c  reason: collision with root package name */
        T f80831c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80832d;

        /* renamed from: e  reason: collision with root package name */
        volatile boolean f80833e;

        a(io.reactivex.rxjava3.core.s0<? super T> downstream) {
            this.f80829a = downstream;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f80833e = true;
            this.f80830b.cancel();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f80833e;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80832d) {
                return;
            }
            this.f80832d = true;
            T t9 = this.f80831c;
            this.f80831c = null;
            if (t9 == null) {
                this.f80829a.onError(new NoSuchElementException("The source Publisher is empty"));
            } else {
                this.f80829a.onSuccess(t9);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80832d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80832d = true;
            this.f80831c = null;
            this.f80829a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80832d) {
                return;
            }
            if (this.f80831c != null) {
                this.f80830b.cancel();
                this.f80832d = true;
                this.f80831c = null;
                this.f80829a.onError(new IndexOutOfBoundsException("Too many elements in the Publisher"));
                return;
            }
            this.f80831c = t9;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80830b, s9)) {
                this.f80830b = s9;
                this.f80829a.onSubscribe(this);
                s9.request(Long.MAX_VALUE);
            }
        }
    }

    public h0(org.reactivestreams.c<? extends T> publisher) {
        this.f80828a = publisher;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(final io.reactivex.rxjava3.core.s0<? super T> observer) {
        this.f80828a.i(new a(observer));
    }
}
