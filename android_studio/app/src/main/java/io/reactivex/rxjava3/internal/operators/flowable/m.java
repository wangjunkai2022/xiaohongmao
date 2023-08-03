package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: FlowableBuffer.java */
/* loaded from: classes4.dex */
public final class m<T, C extends Collection<? super T>> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, C> {

    /* renamed from: c  reason: collision with root package name */
    final int f77501c;

    /* renamed from: d  reason: collision with root package name */
    final int f77502d;

    /* renamed from: e  reason: collision with root package name */
    final q7.s<C> f77503e;

    /* compiled from: FlowableBuffer.java */
    /* loaded from: classes4.dex */
    static final class a<T, C extends Collection<? super T>> implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f77504a;

        /* renamed from: b  reason: collision with root package name */
        final q7.s<C> f77505b;

        /* renamed from: c  reason: collision with root package name */
        final int f77506c;

        /* renamed from: d  reason: collision with root package name */
        C f77507d;

        /* renamed from: e  reason: collision with root package name */
        org.reactivestreams.e f77508e;

        /* renamed from: f  reason: collision with root package name */
        boolean f77509f;

        /* renamed from: g  reason: collision with root package name */
        int f77510g;

        a(org.reactivestreams.d<? super C> actual, int size, q7.s<C> bufferSupplier) {
            this.f77504a = actual;
            this.f77506c = size;
            this.f77505b = bufferSupplier;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77508e.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77509f) {
                return;
            }
            this.f77509f = true;
            C c10 = this.f77507d;
            this.f77507d = null;
            if (c10 != null) {
                this.f77504a.onNext(c10);
            }
            this.f77504a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77509f) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77507d = null;
            this.f77509f = true;
            this.f77504a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77509f) {
                return;
            }
            C c10 = this.f77507d;
            if (c10 == null) {
                try {
                    C c11 = this.f77505b.get();
                    Objects.requireNonNull(c11, "The bufferSupplier returned a null buffer");
                    c10 = c11;
                    this.f77507d = c10;
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            c10.add(t9);
            int i4 = this.f77510g + 1;
            if (i4 == this.f77506c) {
                this.f77510g = 0;
                this.f77507d = null;
                this.f77504a.onNext(c10);
                return;
            }
            this.f77510g = i4;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77508e, s9)) {
                this.f77508e = s9;
                this.f77504a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                this.f77508e.request(io.reactivex.rxjava3.internal.util.b.d(n9, this.f77506c));
            }
        }
    }

    /* compiled from: FlowableBuffer.java */
    /* loaded from: classes4.dex */
    static final class b<T, C extends Collection<? super T>> extends AtomicLong implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e, q7.e {

        /* renamed from: l  reason: collision with root package name */
        private static final long f77511l = -7370244972039324525L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f77512a;

        /* renamed from: b  reason: collision with root package name */
        final q7.s<C> f77513b;

        /* renamed from: c  reason: collision with root package name */
        final int f77514c;

        /* renamed from: d  reason: collision with root package name */
        final int f77515d;

        /* renamed from: g  reason: collision with root package name */
        org.reactivestreams.e f77518g;

        /* renamed from: h  reason: collision with root package name */
        boolean f77519h;

        /* renamed from: i  reason: collision with root package name */
        int f77520i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f77521j;

        /* renamed from: k  reason: collision with root package name */
        long f77522k;

        /* renamed from: f  reason: collision with root package name */
        final AtomicBoolean f77517f = new AtomicBoolean();

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<C> f77516e = new ArrayDeque<>();

        b(org.reactivestreams.d<? super C> actual, int size, int skip, q7.s<C> bufferSupplier) {
            this.f77512a = actual;
            this.f77514c = size;
            this.f77515d = skip;
            this.f77513b = bufferSupplier;
        }

        @Override // q7.e
        public boolean a() {
            return this.f77521j;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77521j = true;
            this.f77518g.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77519h) {
                return;
            }
            this.f77519h = true;
            long j4 = this.f77522k;
            if (j4 != 0) {
                io.reactivex.rxjava3.internal.util.b.e(this, j4);
            }
            io.reactivex.rxjava3.internal.util.o.g(this.f77512a, this.f77516e, this, this);
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77519h) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77519h = true;
            this.f77516e.clear();
            this.f77512a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77519h) {
                return;
            }
            ArrayDeque<C> arrayDeque = this.f77516e;
            int i4 = this.f77520i;
            int i10 = i4 + 1;
            if (i4 == 0) {
                try {
                    C c10 = this.f77513b.get();
                    Objects.requireNonNull(c10, "The bufferSupplier returned a null buffer");
                    arrayDeque.offer(c10);
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            C peek = arrayDeque.peek();
            if (peek.size() + 1 == this.f77514c) {
                arrayDeque.poll();
                peek.add(t9);
                this.f77522k++;
                this.f77512a.onNext(peek);
            }
            Iterator<C> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().add(t9);
            }
            if (i10 == this.f77515d) {
                i10 = 0;
            }
            this.f77520i = i10;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77518g, s9)) {
                this.f77518g = s9;
                this.f77512a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (!SubscriptionHelper.validate(n9) || io.reactivex.rxjava3.internal.util.o.i(n9, this.f77512a, this.f77516e, this, this)) {
                return;
            }
            if (!this.f77517f.get() && this.f77517f.compareAndSet(false, true)) {
                this.f77518g.request(io.reactivex.rxjava3.internal.util.b.c(this.f77514c, io.reactivex.rxjava3.internal.util.b.d(this.f77515d, n9 - 1)));
                return;
            }
            this.f77518g.request(io.reactivex.rxjava3.internal.util.b.d(this.f77515d, n9));
        }
    }

    /* compiled from: FlowableBuffer.java */
    /* loaded from: classes4.dex */
    static final class c<T, C extends Collection<? super T>> extends AtomicInteger implements io.reactivex.rxjava3.core.r<T>, org.reactivestreams.e {

        /* renamed from: i  reason: collision with root package name */
        private static final long f77523i = -5616169793639412593L;

        /* renamed from: a  reason: collision with root package name */
        final org.reactivestreams.d<? super C> f77524a;

        /* renamed from: b  reason: collision with root package name */
        final q7.s<C> f77525b;

        /* renamed from: c  reason: collision with root package name */
        final int f77526c;

        /* renamed from: d  reason: collision with root package name */
        final int f77527d;

        /* renamed from: e  reason: collision with root package name */
        C f77528e;

        /* renamed from: f  reason: collision with root package name */
        org.reactivestreams.e f77529f;

        /* renamed from: g  reason: collision with root package name */
        boolean f77530g;

        /* renamed from: h  reason: collision with root package name */
        int f77531h;

        c(org.reactivestreams.d<? super C> actual, int size, int skip, q7.s<C> bufferSupplier) {
            this.f77524a = actual;
            this.f77526c = size;
            this.f77527d = skip;
            this.f77525b = bufferSupplier;
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f77529f.cancel();
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            if (this.f77530g) {
                return;
            }
            this.f77530g = true;
            C c10 = this.f77528e;
            this.f77528e = null;
            if (c10 != null) {
                this.f77524a.onNext(c10);
            }
            this.f77524a.onComplete();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f77530g) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f77530g = true;
            this.f77528e = null;
            this.f77524a.onError(t9);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f77530g) {
                return;
            }
            C c10 = this.f77528e;
            int i4 = this.f77531h;
            int i10 = i4 + 1;
            if (i4 == 0) {
                try {
                    C c11 = this.f77525b.get();
                    Objects.requireNonNull(c11, "The bufferSupplier returned a null buffer");
                    c10 = c11;
                    this.f77528e = c10;
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    cancel();
                    onError(th);
                    return;
                }
            }
            if (c10 != null) {
                c10.add(t9);
                if (c10.size() == this.f77526c) {
                    this.f77528e = null;
                    this.f77524a.onNext(c10);
                }
            }
            if (i10 == this.f77527d) {
                i10 = 0;
            }
            this.f77531h = i10;
        }

        @Override // io.reactivex.rxjava3.core.r, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e s9) {
            if (SubscriptionHelper.validate(this.f77529f, s9)) {
                this.f77529f = s9;
                this.f77524a.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                if (get() == 0 && compareAndSet(0, 1)) {
                    this.f77529f.request(io.reactivex.rxjava3.internal.util.b.c(io.reactivex.rxjava3.internal.util.b.d(n9, this.f77526c), io.reactivex.rxjava3.internal.util.b.d(this.f77527d - this.f77526c, n9 - 1)));
                    return;
                }
                this.f77529f.request(io.reactivex.rxjava3.internal.util.b.d(this.f77527d, n9));
            }
        }
    }

    public m(io.reactivex.rxjava3.core.m<T> source, int size, int skip, q7.s<C> bufferSupplier) {
        super(source);
        this.f77501c = size;
        this.f77502d = skip;
        this.f77503e = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super C> s9) {
        int i4 = this.f77501c;
        int i10 = this.f77502d;
        if (i4 == i10) {
            this.f76811b.G6(new a(s9, i4, this.f77503e));
        } else if (i10 > i4) {
            this.f76811b.G6(new c(s9, this.f77501c, this.f77502d, this.f77503e));
        } else {
            this.f76811b.G6(new b(s9, this.f77501c, this.f77502d, this.f77503e));
        }
    }
}
