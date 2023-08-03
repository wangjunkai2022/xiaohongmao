package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableBuffer.java */
/* loaded from: classes3.dex */
public final class m<T, C extends Collection<? super T>> extends io.reactivex.internal.operators.flowable.a<T, C> {

    /* renamed from: c  reason: collision with root package name */
    final int f72219c;

    /* renamed from: d  reason: collision with root package name */
    final int f72220d;

    /* renamed from: e  reason: collision with root package name */
    final Callable<C> f72221e;

    /* compiled from: FlowableBuffer.java */
    /* loaded from: classes3.dex */
    static final class a<T, C extends Collection<? super T>> implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f72222a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f72223b;

        /* renamed from: c  reason: collision with root package name */
        final int f72224c;

        /* renamed from: d  reason: collision with root package name */
        C f72225d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f72226e;

        /* renamed from: f  reason: collision with root package name */
        boolean f72227f;

        /* renamed from: g  reason: collision with root package name */
        int f72228g;

        a(org.reactivestreams.d<? super C> dVar, int i4, Callable<C> callable) {
            this.f72222a = dVar;
            this.f72224c = i4;
            this.f72223b = callable;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72226e.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72227f) {
                return;
            }
            this.f72227f = true;
            C c10 = this.f72225d;
            if (c10 != null && !c10.isEmpty()) {
                this.f72222a.onNext(c10);
            }
            this.f72222a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72227f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72227f = true;
            this.f72222a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72227f) {
                return;
            }
            C c10 = this.f72225d;
            if (c10 == null) {
                try {
                    c10 = (C) io.reactivex.internal.functions.b.g(this.f72223b.call(), "The bufferSupplier returned a null buffer");
                    this.f72225d = c10;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            c10.add(t9);
            int i4 = this.f72228g + 1;
            if (i4 == this.f72224c) {
                this.f72228g = 0;
                this.f72225d = null;
                this.f72222a.onNext(c10);
                return;
            }
            this.f72228g = i4;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72226e, eVar)) {
                this.f72226e = eVar;
                this.f72222a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                this.f72226e.request(io.reactivex.internal.util.b.d(j4, this.f72224c));
            }
        }
    }

    /* compiled from: FlowableBuffer.java */
    /* loaded from: classes3.dex */
    static final class b<T, C extends Collection<? super T>> extends AtomicLong implements io.reactivex.o<T>, org.reactivestreams.e, n7.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f72229l = -7370244972039324525L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f72230a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f72231b;

        /* renamed from: c  reason: collision with root package name */
        final int f72232c;

        /* renamed from: d  reason: collision with root package name */
        final int f72233d;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f72236g;

        /* renamed from: h  reason: collision with root package name */
        boolean f72237h;

        /* renamed from: i  reason: collision with root package name */
        int f72238i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f72239j;

        /* renamed from: k  reason: collision with root package name */
        long f72240k;

        /* renamed from: f  reason: collision with root package name */
        final AtomicBoolean f72235f = new AtomicBoolean();

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<C> f72234e = new ArrayDeque<>();

        b(org.reactivestreams.d<? super C> dVar, int i4, int i10, Callable<C> callable) {
            this.f72230a = dVar;
            this.f72232c = i4;
            this.f72233d = i10;
            this.f72231b = callable;
        }

        @Override // n7.e
        public boolean a() {
            return this.f72239j;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72239j = true;
            this.f72236g.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72237h) {
                return;
            }
            this.f72237h = true;
            long j4 = this.f72240k;
            if (j4 != 0) {
                io.reactivex.internal.util.b.e(this, j4);
            }
            io.reactivex.internal.util.o.g(this.f72230a, this.f72234e, this, this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72237h) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72237h = true;
            this.f72234e.clear();
            this.f72230a.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72237h) {
                return;
            }
            ArrayDeque<C> arrayDeque = this.f72234e;
            int i4 = this.f72238i;
            int i10 = i4 + 1;
            if (i4 == 0) {
                try {
                    arrayDeque.offer((Collection) io.reactivex.internal.functions.b.g(this.f72231b.call(), "The bufferSupplier returned a null buffer"));
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            Collection collection = (Collection) arrayDeque.peek();
            if (collection != null && collection.size() + 1 == this.f72232c) {
                arrayDeque.poll();
                collection.add(t9);
                this.f72240k++;
                this.f72230a.onNext(collection);
            }
            Iterator it = arrayDeque.iterator();
            while (it.hasNext()) {
                ((Collection) it.next()).add(t9);
            }
            if (i10 == this.f72233d) {
                i10 = 0;
            }
            this.f72238i = i10;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72236g, eVar)) {
                this.f72236g = eVar;
                this.f72230a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (!SubscriptionHelper.validate(j4) || io.reactivex.internal.util.o.i(j4, this.f72230a, this.f72234e, this, this)) {
                return;
            }
            if (!this.f72235f.get() && this.f72235f.compareAndSet(false, true)) {
                this.f72236g.request(io.reactivex.internal.util.b.c(this.f72232c, io.reactivex.internal.util.b.d(this.f72233d, j4 - 1)));
                return;
            }
            this.f72236g.request(io.reactivex.internal.util.b.d(this.f72233d, j4));
        }
    }

    /* compiled from: FlowableBuffer.java */
    /* loaded from: classes3.dex */
    static final class c<T, C extends Collection<? super T>> extends AtomicInteger implements io.reactivex.o<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f72241i = -5616169793639412593L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f72242a;

        /* renamed from: b  reason: collision with root package name */
        final Callable<C> f72243b;

        /* renamed from: c  reason: collision with root package name */
        final int f72244c;

        /* renamed from: d  reason: collision with root package name */
        final int f72245d;

        /* renamed from: e  reason: collision with root package name */
        C f72246e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f72247f;

        /* renamed from: g  reason: collision with root package name */
        boolean f72248g;

        /* renamed from: h  reason: collision with root package name */
        int f72249h;

        c(org.reactivestreams.d<? super C> dVar, int i4, int i10, Callable<C> callable) {
            this.f72242a = dVar;
            this.f72244c = i4;
            this.f72245d = i10;
            this.f72243b = callable;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f72247f.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f72248g) {
                return;
            }
            this.f72248g = true;
            C c10 = this.f72246e;
            this.f72246e = null;
            if (c10 != null) {
                this.f72242a.onNext(c10);
            }
            this.f72242a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f72248g) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f72248g = true;
            this.f72246e = null;
            this.f72242a.onError(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f72248g) {
                return;
            }
            C c10 = this.f72246e;
            int i4 = this.f72249h;
            int i10 = i4 + 1;
            if (i4 == 0) {
                try {
                    c10 = (C) io.reactivex.internal.functions.b.g(this.f72243b.call(), "The bufferSupplier returned a null buffer");
                    this.f72246e = c10;
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            if (c10 != null) {
                c10.add(t9);
                if (c10.size() == this.f72244c) {
                    this.f72246e = null;
                    this.f72242a.onNext(c10);
                }
            }
            if (i10 == this.f72245d) {
                i10 = 0;
            }
            this.f72249h = i10;
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f72247f, eVar)) {
                this.f72247f = eVar;
                this.f72242a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long j4) {
            if (SubscriptionHelper.validate(j4)) {
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f72247f.request(io.reactivex.internal.util.b.c(io.reactivex.internal.util.b.d(j4, this.f72244c), io.reactivex.internal.util.b.d(this.f72245d - this.f72244c, j4 - 1)));
                    return;
                }
                this.f72247f.request(io.reactivex.internal.util.b.d(this.f72245d, j4));
            }
        }
    }

    public m(io.reactivex.j<T> jVar, int i4, int i10, Callable<C> callable) {
        super(jVar);
        this.f72219c = i4;
        this.f72220d = i10;
        this.f72221e = callable;
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super C> dVar) {
        int i4 = this.f72219c;
        int i10 = this.f72220d;
        if (i4 == i10) {
            this.f71538b.j6(new a(dVar, i4, this.f72221e));
        } else if (i10 > i4) {
            this.f71538b.j6(new c(dVar, this.f72219c, this.f72220d, this.f72221e));
        } else {
            this.f71538b.j6(new b(dVar, this.f72219c, this.f72220d, this.f72221e));
        }
    }
}
