package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableWindow.java */
/* loaded from: classes3.dex */
public final class e4<T> extends io.reactivex.internal.operators.observable.a<T, io.reactivex.z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f74044b;

    /* renamed from: c  reason: collision with root package name */
    final long f74045c;

    /* renamed from: d  reason: collision with root package name */
    final int f74046d;

    /* compiled from: ObservableWindow.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: h  reason: collision with root package name */
        private static final long f74047h = -7481782523886138128L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f74048a;

        /* renamed from: b  reason: collision with root package name */
        final long f74049b;

        /* renamed from: c  reason: collision with root package name */
        final int f74050c;

        /* renamed from: d  reason: collision with root package name */
        long f74051d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74052e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.subjects.j<T> f74053f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f74054g;

        a(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, int i4) {
            this.f74048a = g0Var;
            this.f74049b = j4;
            this.f74050c = i4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74054g = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74054g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            io.reactivex.subjects.j<T> jVar = this.f74053f;
            if (jVar != null) {
                this.f74053f = null;
                jVar.onComplete();
            }
            this.f74048a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            io.reactivex.subjects.j<T> jVar = this.f74053f;
            if (jVar != null) {
                this.f74053f = null;
                jVar.onError(th);
            }
            this.f74048a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            io.reactivex.subjects.j<T> jVar = this.f74053f;
            if (jVar == null && !this.f74054g) {
                jVar = io.reactivex.subjects.j.j(this.f74050c, this);
                this.f74053f = jVar;
                this.f74048a.onNext(jVar);
            }
            if (jVar != null) {
                jVar.onNext(t9);
                long j4 = this.f74051d + 1;
                this.f74051d = j4;
                if (j4 >= this.f74049b) {
                    this.f74051d = 0L;
                    this.f74053f = null;
                    jVar.onComplete();
                    if (this.f74054g) {
                        this.f74052e.dispose();
                    }
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74052e, cVar)) {
                this.f74052e = cVar;
                this.f74048a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74054g) {
                this.f74052e.dispose();
            }
        }
    }

    /* compiled from: ObservableWindow.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.c, Runnable {

        /* renamed from: k  reason: collision with root package name */
        private static final long f74055k = 3366976432059579510L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super io.reactivex.z<T>> f74056a;

        /* renamed from: b  reason: collision with root package name */
        final long f74057b;

        /* renamed from: c  reason: collision with root package name */
        final long f74058c;

        /* renamed from: d  reason: collision with root package name */
        final int f74059d;

        /* renamed from: f  reason: collision with root package name */
        long f74061f;

        /* renamed from: g  reason: collision with root package name */
        volatile boolean f74062g;

        /* renamed from: h  reason: collision with root package name */
        long f74063h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.disposables.c f74064i;

        /* renamed from: j  reason: collision with root package name */
        final AtomicInteger f74065j = new AtomicInteger();

        /* renamed from: e  reason: collision with root package name */
        final ArrayDeque<io.reactivex.subjects.j<T>> f74060e = new ArrayDeque<>();

        b(io.reactivex.g0<? super io.reactivex.z<T>> g0Var, long j4, long j10, int i4) {
            this.f74056a = g0Var;
            this.f74057b = j4;
            this.f74058c = j10;
            this.f74059d = i4;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74062g = true;
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74062g;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            ArrayDeque<io.reactivex.subjects.j<T>> arrayDeque = this.f74060e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onComplete();
            }
            this.f74056a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            ArrayDeque<io.reactivex.subjects.j<T>> arrayDeque = this.f74060e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(th);
            }
            this.f74056a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            ArrayDeque<io.reactivex.subjects.j<T>> arrayDeque = this.f74060e;
            long j4 = this.f74061f;
            long j10 = this.f74058c;
            if (j4 % j10 == 0 && !this.f74062g) {
                this.f74065j.getAndIncrement();
                io.reactivex.subjects.j<T> j11 = io.reactivex.subjects.j.j(this.f74059d, this);
                arrayDeque.offer(j11);
                this.f74056a.onNext(j11);
            }
            long j12 = this.f74063h + 1;
            Iterator<io.reactivex.subjects.j<T>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().onNext(t9);
            }
            if (j12 >= this.f74057b) {
                arrayDeque.poll().onComplete();
                if (arrayDeque.isEmpty() && this.f74062g) {
                    this.f74064i.dispose();
                    return;
                }
                this.f74063h = j12 - j10;
            } else {
                this.f74063h = j12;
            }
            this.f74061f = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74064i, cVar)) {
                this.f74064i = cVar;
                this.f74056a.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f74065j.decrementAndGet() == 0 && this.f74062g) {
                this.f74064i.dispose();
            }
        }
    }

    public e4(io.reactivex.e0<T> e0Var, long j4, long j10, int i4) {
        super(e0Var);
        this.f74044b = j4;
        this.f74045c = j10;
        this.f74046d = i4;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super io.reactivex.z<T>> g0Var) {
        if (this.f74044b == this.f74045c) {
            this.f73827a.subscribe(new a(g0Var, this.f74044b, this.f74046d));
        } else {
            this.f73827a.subscribe(new b(g0Var, this.f74044b, this.f74045c, this.f74046d));
        }
    }
}
