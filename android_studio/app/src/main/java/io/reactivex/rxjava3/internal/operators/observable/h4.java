package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableWindow.java */
/* loaded from: classes4.dex */
public final class h4<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, io.reactivex.rxjava3.core.g0<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f79512b;

    /* renamed from: c  reason: collision with root package name */
    final long f79513c;

    /* renamed from: d  reason: collision with root package name */
    final int f79514d;

    /* compiled from: ObservableWindow.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f79515h = -7481782523886138128L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> f79516a;

        /* renamed from: b  reason: collision with root package name */
        final long f79517b;

        /* renamed from: c  reason: collision with root package name */
        final int f79518c;

        /* renamed from: d  reason: collision with root package name */
        long f79519d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79520e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.subjects.j<T> f79521f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79522g;

        a(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> actual, long count, int capacityHint) {
            this.f79516a = actual;
            this.f79517b = count;
            this.f79518c = capacityHint;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79522g = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79522g;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            io.reactivex.rxjava3.subjects.j<T> jVar = this.f79521f;
            if (jVar != null) {
                this.f79521f = null;
                jVar.onComplete();
            }
            this.f79516a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            io.reactivex.rxjava3.subjects.j<T> jVar = this.f79521f;
            if (jVar != null) {
                this.f79521f = null;
                jVar.onError(t9);
            }
            this.f79516a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            k4 k4Var;
            io.reactivex.rxjava3.subjects.j<T> jVar = this.f79521f;
            if (jVar != null || this.f79522g) {
                k4Var = null;
            } else {
                jVar = io.reactivex.rxjava3.subjects.j.H8(this.f79518c, this);
                this.f79521f = jVar;
                k4Var = new k4(jVar);
                this.f79516a.onNext(k4Var);
            }
            if (jVar != null) {
                jVar.onNext(t9);
                long j4 = this.f79519d + 1;
                this.f79519d = j4;
                if (j4 >= this.f79517b) {
                    this.f79519d = 0L;
                    this.f79521f = null;
                    jVar.onComplete();
                    if (this.f79522g) {
                        this.f79520e.dispose();
                    }
                }
                if (k4Var == null || !k4Var.A8()) {
                    return;
                }
                jVar.onComplete();
                this.f79521f = null;
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79520e, d4)) {
                this.f79520e = d4;
                this.f79516a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f79522g) {
                this.f79520e.dispose();
            }
        }
    }

    /* compiled from: ObservableWindow.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f, Runnable {

        /* renamed from: k  reason: collision with root package name */
        private static final long f79523k = 3366976432059579510L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> f79524a;

        /* renamed from: b  reason: collision with root package name */
        final long f79525b;

        /* renamed from: c  reason: collision with root package name */
        final long f79526c;

        /* renamed from: d  reason: collision with root package name */
        final int f79527d;

        /* renamed from: f  reason: collision with root package name */
        long f79529f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f79530g;

        /* renamed from: h  reason: collision with root package name */
        long f79531h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79532i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f79533j = new AtomicInteger();

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<io.reactivex.rxjava3.subjects.j<T>> f79528e = new ArrayDeque<>();

        b(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> actual, long count, long skip, int capacityHint) {
            this.f79524a = actual;
            this.f79525b = count;
            this.f79526c = skip;
            this.f79527d = capacityHint;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79530g = true;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79530g;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            ArrayDeque<io.reactivex.rxjava3.subjects.j<T>> arrayDeque = this.f79528e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onComplete();
            }
            this.f79524a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            ArrayDeque<io.reactivex.rxjava3.subjects.j<T>> arrayDeque = this.f79528e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(t9);
            }
            this.f79524a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            k4 k4Var;
            ArrayDeque<io.reactivex.rxjava3.subjects.j<T>> arrayDeque = this.f79528e;
            long j4 = this.f79529f;
            long j10 = this.f79526c;
            if (j4 % j10 != 0 || this.f79530g) {
                k4Var = null;
            } else {
                this.f79533j.getAndIncrement();
                io.reactivex.rxjava3.subjects.j<T> H8 = io.reactivex.rxjava3.subjects.j.H8(this.f79527d, this);
                k4Var = new k4(H8);
                arrayDeque.offer(H8);
                this.f79524a.onNext(k4Var);
            }
            long j11 = this.f79531h + 1;
            Iterator<io.reactivex.rxjava3.subjects.j<T>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().onNext(t9);
            }
            if (j11 >= this.f79525b) {
                arrayDeque.poll().onComplete();
                if (arrayDeque.isEmpty() && this.f79530g) {
                    this.f79532i.dispose();
                    return;
                }
                this.f79531h = j11 - j10;
            } else {
                this.f79531h = j11;
            }
            this.f79529f = j4 + 1;
            if (k4Var == null || !k4Var.A8()) {
                return;
            }
            k4Var.f79655a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79532i, d4)) {
                this.f79532i = d4;
                this.f79524a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f79533j.decrementAndGet() == 0 && this.f79530g) {
                this.f79532i.dispose();
            }
        }
    }

    public h4(io.reactivex.rxjava3.core.l0<T> source, long count, long skip, int capacityHint) {
        super(source);
        this.f79512b = count;
        this.f79513c = skip;
        this.f79514d = capacityHint;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super io.reactivex.rxjava3.core.g0<T>> t9) {
        if (this.f79512b == this.f79513c) {
            this.f79141a.a(new a(t9, this.f79512b, this.f79514d));
        } else {
            this.f79141a.a(new b(t9, this.f79512b, this.f79513c, this.f79514d));
        }
    }
}
