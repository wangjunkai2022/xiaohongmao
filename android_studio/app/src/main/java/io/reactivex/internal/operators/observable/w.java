package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.InnerQueuedObserver;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ObservableConcatMapEager.java */
/* loaded from: classes3.dex */
public final class w<T, R> extends io.reactivex.internal.operators.observable.a<T, R> {

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f74903b;

    /* renamed from: c  reason: collision with root package name */
    final ErrorMode f74904c;

    /* renamed from: d  reason: collision with root package name */
    final int f74905d;

    /* renamed from: e  reason: collision with root package name */
    final int f74906e;

    /* compiled from: ObservableConcatMapEager.java */
    /* loaded from: classes3.dex */
    static final class a<T, R> extends AtomicInteger implements io.reactivex.g0<T>, io.reactivex.disposables.c, io.reactivex.internal.observers.j<R> {

        /* renamed from: o  reason: collision with root package name */
        private static final long f74907o = 8080567949447303262L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super R> f74908a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super T, ? extends io.reactivex.e0<? extends R>> f74909b;

        /* renamed from: c  reason: collision with root package name */
        final int f74910c;

        /* renamed from: d  reason: collision with root package name */
        final int f74911d;

        /* renamed from: e  reason: collision with root package name */
        final ErrorMode f74912e;

        /* renamed from: f  reason: collision with root package name */
        final AtomicThrowable f74913f = new AtomicThrowable();

        /* renamed from: g  reason: collision with root package name */
        final ArrayDeque<InnerQueuedObserver<R>> f74914g = new ArrayDeque<>();

        /* renamed from: h  reason: collision with root package name */
        o7.o<T> f74915h;

        /* renamed from: i  reason: collision with root package name */
        io.reactivex.disposables.c f74916i;

        /* renamed from: j  reason: collision with root package name */
        volatile boolean f74917j;

        /* renamed from: k  reason: collision with root package name */
        int f74918k;

        /* renamed from: l  reason: collision with root package name */
        volatile boolean f74919l;

        /* renamed from: m  reason: collision with root package name */
        InnerQueuedObserver<R> f74920m;

        /* renamed from: n  reason: collision with root package name */
        int f74921n;

        a(io.reactivex.g0<? super R> g0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, int i4, int i10, ErrorMode errorMode) {
            this.f74908a = g0Var;
            this.f74909b = oVar;
            this.f74910c = i4;
            this.f74911d = i10;
            this.f74912e = errorMode;
        }

        void a() {
            InnerQueuedObserver<R> innerQueuedObserver = this.f74920m;
            if (innerQueuedObserver != null) {
                innerQueuedObserver.dispose();
            }
            while (true) {
                InnerQueuedObserver<R> poll = this.f74914g.poll();
                if (poll == null) {
                    return;
                }
                poll.dispose();
            }
        }

        @Override // io.reactivex.internal.observers.j
        public void b() {
            R poll;
            boolean z9;
            if (getAndIncrement() != 0) {
                return;
            }
            o7.o<T> oVar = this.f74915h;
            ArrayDeque<InnerQueuedObserver<R>> arrayDeque = this.f74914g;
            io.reactivex.g0<? super R> g0Var = this.f74908a;
            ErrorMode errorMode = this.f74912e;
            int i4 = 1;
            while (true) {
                int i10 = this.f74921n;
                while (i10 != this.f74910c) {
                    if (this.f74919l) {
                        oVar.clear();
                        a();
                        return;
                    } else if (errorMode == ErrorMode.IMMEDIATE && this.f74913f.get() != null) {
                        oVar.clear();
                        a();
                        g0Var.onError(this.f74913f.terminate());
                        return;
                    } else {
                        try {
                            T poll2 = oVar.poll();
                            if (poll2 == null) {
                                break;
                            }
                            io.reactivex.e0 e0Var = (io.reactivex.e0) io.reactivex.internal.functions.b.g(this.f74909b.apply(poll2), "The mapper returned a null ObservableSource");
                            InnerQueuedObserver<R> innerQueuedObserver = new InnerQueuedObserver<>(this, this.f74911d);
                            arrayDeque.offer(innerQueuedObserver);
                            e0Var.subscribe(innerQueuedObserver);
                            i10++;
                        } catch (Throwable th) {
                            io.reactivex.exceptions.a.b(th);
                            this.f74916i.dispose();
                            oVar.clear();
                            a();
                            this.f74913f.addThrowable(th);
                            g0Var.onError(this.f74913f.terminate());
                            return;
                        }
                    }
                }
                this.f74921n = i10;
                if (this.f74919l) {
                    oVar.clear();
                    a();
                    return;
                } else if (errorMode == ErrorMode.IMMEDIATE && this.f74913f.get() != null) {
                    oVar.clear();
                    a();
                    g0Var.onError(this.f74913f.terminate());
                    return;
                } else {
                    InnerQueuedObserver<R> innerQueuedObserver2 = this.f74920m;
                    if (innerQueuedObserver2 == null) {
                        if (errorMode == ErrorMode.BOUNDARY && this.f74913f.get() != null) {
                            oVar.clear();
                            a();
                            g0Var.onError(this.f74913f.terminate());
                            return;
                        }
                        boolean z10 = this.f74917j;
                        InnerQueuedObserver<R> poll3 = arrayDeque.poll();
                        boolean z11 = poll3 == null;
                        if (z10 && z11) {
                            if (this.f74913f.get() != null) {
                                oVar.clear();
                                a();
                                g0Var.onError(this.f74913f.terminate());
                                return;
                            }
                            g0Var.onComplete();
                            return;
                        }
                        if (!z11) {
                            this.f74920m = poll3;
                        }
                        innerQueuedObserver2 = poll3;
                    }
                    if (innerQueuedObserver2 != null) {
                        o7.o<R> queue = innerQueuedObserver2.queue();
                        while (!this.f74919l) {
                            boolean isDone = innerQueuedObserver2.isDone();
                            if (errorMode == ErrorMode.IMMEDIATE && this.f74913f.get() != null) {
                                oVar.clear();
                                a();
                                g0Var.onError(this.f74913f.terminate());
                                return;
                            }
                            try {
                                poll = queue.poll();
                                z9 = poll == null;
                            } catch (Throwable th2) {
                                io.reactivex.exceptions.a.b(th2);
                                this.f74913f.addThrowable(th2);
                                this.f74920m = null;
                                this.f74921n--;
                            }
                            if (isDone && z9) {
                                this.f74920m = null;
                                this.f74921n--;
                            } else if (!z9) {
                                g0Var.onNext(poll);
                            }
                        }
                        oVar.clear();
                        a();
                        return;
                    }
                    i4 = addAndGet(-i4);
                    if (i4 == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.observers.j
        public void c(InnerQueuedObserver<R> innerQueuedObserver, Throwable th) {
            if (this.f74913f.addThrowable(th)) {
                if (this.f74912e == ErrorMode.IMMEDIATE) {
                    this.f74916i.dispose();
                }
                innerQueuedObserver.setDone();
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.internal.observers.j
        public void d(InnerQueuedObserver<R> innerQueuedObserver) {
            innerQueuedObserver.setDone();
            b();
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            if (this.f74919l) {
                return;
            }
            this.f74919l = true;
            this.f74916i.dispose();
            h();
        }

        @Override // io.reactivex.internal.observers.j
        public void e(InnerQueuedObserver<R> innerQueuedObserver, R r9) {
            innerQueuedObserver.queue().offer(r9);
            b();
        }

        void h() {
            if (getAndIncrement() == 0) {
                do {
                    this.f74915h.clear();
                    a();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74919l;
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            this.f74917j = true;
            b();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74913f.addThrowable(th)) {
                this.f74917j = true;
                b();
                return;
            }
            io.reactivex.plugins.a.Y(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74918k == 0) {
                this.f74915h.offer(t9);
            }
            b();
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74916i, cVar)) {
                this.f74916i = cVar;
                if (cVar instanceof o7.j) {
                    o7.j jVar = (o7.j) cVar;
                    int requestFusion = jVar.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f74918k = requestFusion;
                        this.f74915h = jVar;
                        this.f74917j = true;
                        this.f74908a.onSubscribe(this);
                        b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f74918k = requestFusion;
                        this.f74915h = jVar;
                        this.f74908a.onSubscribe(this);
                        return;
                    }
                }
                this.f74915h = new io.reactivex.internal.queue.b(this.f74911d);
                this.f74908a.onSubscribe(this);
            }
        }
    }

    public w(io.reactivex.e0<T> e0Var, n7.o<? super T, ? extends io.reactivex.e0<? extends R>> oVar, ErrorMode errorMode, int i4, int i10) {
        super(e0Var);
        this.f74903b = oVar;
        this.f74904c = errorMode;
        this.f74905d = i4;
        this.f74906e = i10;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super R> g0Var) {
        this.f73827a.subscribe(new a(g0Var, this.f74903b, this.f74905d, this.f74906e, this.f74904c));
    }
}
