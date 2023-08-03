package io.reactivex.internal.operators.mixed;

import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: FlowableConcatMapCompletable.java */
/* loaded from: classes3.dex */
public final class c<T> extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.j<T> f73548a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.g> f73549b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f73550c;

    /* renamed from: d  reason: collision with root package name */
    final int f73551d;

    /* compiled from: FlowableConcatMapCompletable.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.o<T>, io.reactivex.disposables.c {

        /* renamed from: m  reason: collision with root package name */
        private static final long f73552m = 3610901111000061034L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f73553a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.g> f73554b;

        /* renamed from: c  reason: collision with root package name */
        final ErrorMode f73555c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f73556d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final C0573a f73557e = new C0573a(this);

        /* renamed from: f  reason: collision with root package name */
        final int f73558f;

        /* renamed from: g  reason: collision with root package name */
        final o7.n<T> f73559g;

        /* renamed from: h  reason: collision with root package name */
        org.reactivestreams.e f73560h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f73561i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f73562j;

        /* renamed from: k  reason: collision with root package name */
        volatile boolean f73563k;

        /* renamed from: l  reason: collision with root package name */
        int f73564l;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: FlowableConcatMapCompletable.java */
        /* renamed from: io.reactivex.internal.operators.mixed.c$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0573a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f73565b = 5638352172918776687L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f73566a;

            C0573a(a<?> aVar) {
                this.f73566a = aVar;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.d
            public void onComplete() {
                this.f73566a.b();
            }

            @Override // io.reactivex.d
            public void onError(Throwable th) {
                this.f73566a.c(th);
            }

            @Override // io.reactivex.d
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.replace(this, cVar);
            }
        }

        a(io.reactivex.d dVar, n7.o<? super T, ? extends io.reactivex.g> oVar, ErrorMode errorMode, int i4) {
            this.f73553a = dVar;
            this.f73554b = oVar;
            this.f73555c = errorMode;
            this.f73558f = i4;
            this.f73559g = new SpscArrayQueue(i4);
        }

        void a() {
            if (getAndIncrement() != 0) {
                return;
            }
            while (!this.f73563k) {
                if (!this.f73561i) {
                    if (this.f73555c == ErrorMode.BOUNDARY && this.f73556d.get() != null) {
                        this.f73559g.clear();
                        this.f73553a.onError(this.f73556d.terminate());
                        return;
                    }
                    boolean z9 = this.f73562j;
                    T poll = this.f73559g.poll();
                    boolean z10 = poll == null;
                    if (z9 && z10) {
                        Throwable terminate = this.f73556d.terminate();
                        if (terminate != null) {
                            this.f73553a.onError(terminate);
                            return;
                        } else {
                            this.f73553a.onComplete();
                            return;
                        }
                    } else if (!z10) {
                        int i4 = this.f73558f;
                        int i10 = i4 - (i4 >> 1);
                        int i11 = this.f73564l + 1;
                        if (i11 == i10) {
                            this.f73564l = 0;
                            this.f73560h.request(i10);
                        } else {
                            this.f73564l = i11;
                        }
                        try {
                            io.reactivex.g gVar = (io.reactivex.g) io.reactivex.internal.functions.b.g(this.f73554b.apply(poll), "The mapper returned a null CompletableSource");
                            this.f73561i = true;
                            gVar.d(this.f73557e);
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f73559g.clear();
                            this.f73560h.cancel();
                            this.f73556d.addThrowable(th);
                            this.f73553a.onError(this.f73556d.terminate());
                            return;
                        }
                    }
                }
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            this.f73559g.clear();
        }

        void b() {
            this.f73561i = false;
            a();
        }

        void c(Throwable th) {
            if (this.f73556d.addThrowable(th)) {
                if (this.f73555c == ErrorMode.IMMEDIATE) {
                    this.f73560h.cancel();
                    Throwable terminate = this.f73556d.terminate();
                    if (terminate != io.reactivex.internal.util.g.f75916a) {
                        this.f73553a.onError(terminate);
                    }
                    if (getAndIncrement() == 0) {
                        this.f73559g.clear();
                        return;
                    }
                    return;
                }
                this.f73561i = false;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f73563k = true;
            this.f73560h.cancel();
            this.f73557e.a();
            if (getAndIncrement() == 0) {
                this.f73559g.clear();
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f73563k;
        }

        @Override // org.reactivestreams.d
        public void onComplete() {
            this.f73562j = true;
            a();
        }

        @Override // org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f73556d.addThrowable(th)) {
                if (this.f73555c == ErrorMode.IMMEDIATE) {
                    this.f73557e.a();
                    Throwable terminate = this.f73556d.terminate();
                    if (terminate != io.reactivex.internal.util.g.f75916a) {
                        this.f73553a.onError(terminate);
                    }
                    if (getAndIncrement() == 0) {
                        this.f73559g.clear();
                        return;
                    }
                    return;
                }
                this.f73562j = true;
                a();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f73559g.offer(t9)) {
                a();
                return;
            }
            this.f73560h.cancel();
            onError(new MissingBackpressureException("Queue full?!"));
        }

        @Override // io.reactivex.o, org.reactivestreams.d
        public void onSubscribe(org.reactivestreams.e eVar) {
            if (SubscriptionHelper.validate(this.f73560h, eVar)) {
                this.f73560h = eVar;
                this.f73553a.onSubscribe(this);
                eVar.request(this.f73558f);
            }
        }
    }

    public c(io.reactivex.j<T> jVar, n7.o<? super T, ? extends io.reactivex.g> oVar, ErrorMode errorMode, int i4) {
        this.f73548a = jVar;
        this.f73549b = oVar;
        this.f73550c = errorMode;
        this.f73551d = i4;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        this.f73548a.j6(new a(dVar, this.f73549b, this.f73550c, this.f73551d));
    }
}
