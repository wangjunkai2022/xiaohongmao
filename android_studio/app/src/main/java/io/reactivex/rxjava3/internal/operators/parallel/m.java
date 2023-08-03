package io.reactivex.rxjava3.internal.operators.parallel;

import io.reactivex.rxjava3.core.r;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Objects;

/* compiled from: ParallelPeek.java */
/* loaded from: classes4.dex */
public final class m<T> extends io.reactivex.rxjava3.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.parallel.a<T> f80624a;

    /* renamed from: b  reason: collision with root package name */
    final q7.g<? super T> f80625b;

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super T> f80626c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super Throwable> f80627d;

    /* renamed from: e  reason: collision with root package name */
    final q7.a f80628e;

    /* renamed from: f  reason: collision with root package name */
    final q7.a f80629f;

    /* renamed from: g  reason: collision with root package name */
    final q7.g<? super org.reactivestreams.e> f80630g;

    /* renamed from: h  reason: collision with root package name */
    final q7.q f80631h;

    /* renamed from: i  reason: collision with root package name */
    final q7.a f80632i;

    /* compiled from: ParallelPeek.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f80633a;

        /* renamed from: b  reason: collision with root package name */
        final m<T> f80634b;

        /* renamed from: c  reason: collision with root package name */
        org.reactivestreams.e f80635c;

        /* renamed from: d  reason: collision with root package name */
        boolean f80636d;

        a(org.reactivestreams.d<? super T> actual, m<T> parent) {
            this.f80633a = actual;
            this.f80634b = parent;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            try {
                this.f80634b.f80632i.run();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            this.f80635c.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f80636d) {
                return;
            }
            this.f80636d = true;
            try {
                this.f80634b.f80628e.run();
                this.f80633a.onComplete();
                try {
                    this.f80634b.f80629f.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                this.f80633a.onError(th2);
            }
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f80636d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f80636d = true;
            try {
                this.f80634b.f80627d.accept(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                t9 = new CompositeException(t9, th);
            }
            this.f80633a.onError(t9);
            try {
                this.f80634b.f80629f.run();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                io.reactivex.rxjava3.plugins.a.Y(th2);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f80636d) {
                return;
            }
            try {
                this.f80634b.f80625b.accept(t9);
                this.f80633a.onNext(t9);
                try {
                    this.f80634b.f80626c.accept(t9);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                onError(th2);
            }
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f80635c, s9)) {
                this.f80635c = s9;
                try {
                    this.f80634b.f80630g.accept(s9);
                    this.f80633a.onSubscribe(this);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    s9.cancel();
                    this.f80633a.onSubscribe(EmptySubscription.INSTANCE);
                    onError(th);
                }
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            try {
                this.f80634b.f80631h.a(n9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                io.reactivex.rxjava3.plugins.a.Y(th);
            }
            this.f80635c.request(n9);
        }
    }

    public m(io.reactivex.rxjava3.parallel.a<T> source, q7.g<? super T> onNext, q7.g<? super T> onAfterNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.a onAfterTerminated, q7.g<? super org.reactivestreams.e> onSubscribe, q7.q onRequest, q7.a onCancel) {
        this.f80624a = source;
        Objects.requireNonNull(onNext, "onNext is null");
        this.f80625b = onNext;
        Objects.requireNonNull(onAfterNext, "onAfterNext is null");
        this.f80626c = onAfterNext;
        Objects.requireNonNull(onError, "onError is null");
        this.f80627d = onError;
        Objects.requireNonNull(onComplete, "onComplete is null");
        this.f80628e = onComplete;
        Objects.requireNonNull(onAfterTerminated, "onAfterTerminated is null");
        this.f80629f = onAfterTerminated;
        Objects.requireNonNull(onSubscribe, "onSubscribe is null");
        this.f80630g = onSubscribe;
        Objects.requireNonNull(onRequest, "onRequest is null");
        this.f80631h = onRequest;
        Objects.requireNonNull(onCancel, "onCancel is null");
        this.f80632i = onCancel;
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public int M() {
        return this.f80624a.M();
    }

    @Override // io.reactivex.rxjava3.parallel.a
    public void X(org.reactivestreams.d<? super T>[] subscribers) {
        if (b0(subscribers)) {
            int length = subscribers.length;
            org.reactivestreams.d<? super T>[] dVarArr = new org.reactivestreams.d[length];
            for (int i4 = 0; i4 < length; i4++) {
                dVarArr[i4] = new a(subscribers[i4], this);
            }
            this.f80624a.X(dVarArr);
        }
    }
}
