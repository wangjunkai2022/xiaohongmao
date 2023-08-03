package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.exceptions.CompositeException;

/* compiled from: FlowableDoOnEach.java */
/* loaded from: classes4.dex */
public final class q0<T> extends io.reactivex.rxjava3.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final q7.g<? super T> f77806c;

    /* renamed from: d  reason: collision with root package name */
    final q7.g<? super Throwable> f77807d;

    /* renamed from: e  reason: collision with root package name */
    final q7.a f77808e;

    /* renamed from: f  reason: collision with root package name */
    final q7.a f77809f;

    /* compiled from: FlowableDoOnEach.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends io.reactivex.rxjava3.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.g<? super T> f77810f;

        /* renamed from: g  reason: collision with root package name */
        final q7.g<? super Throwable> f77811g;

        /* renamed from: h  reason: collision with root package name */
        final q7.a f77812h;

        /* renamed from: i  reason: collision with root package name */
        final q7.a f77813i;

        a(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.a onAfterTerminate) {
            super(actual);
            this.f77810f = onNext;
            this.f77811g = onError;
            this.f77812h = onComplete;
            this.f77813i = onAfterTerminate;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.c
        public boolean h(T t9) {
            if (this.f81232d) {
                return false;
            }
            try {
                this.f77810f.accept(t9);
                return this.f81229a.h(t9);
            } catch (Throwable th) {
                f(th);
                return false;
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.a, org.reactivestreams.d
        public void onComplete() {
            if (this.f81232d) {
                return;
            }
            try {
                this.f77812h.run();
                this.f81232d = true;
                this.f81229a.onComplete();
                try {
                    this.f77813i.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                f(th2);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.a, org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f81232d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            boolean z9 = true;
            this.f81232d = true;
            try {
                this.f77811g.accept(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81229a.onError(new CompositeException(t9, th));
                z9 = false;
            }
            if (z9) {
                this.f81229a.onError(t9);
            }
            try {
                this.f77813i.run();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                io.reactivex.rxjava3.plugins.a.Y(th2);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f81232d) {
                return;
            }
            if (this.f81233e != 0) {
                this.f81229a.onNext(null);
                return;
            }
            try {
                this.f77810f.accept(t9);
                this.f81229a.onNext(t9);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            try {
                T poll = this.f81231c.poll();
                if (poll != null) {
                    try {
                        this.f77810f.accept(poll);
                    } catch (Throwable th) {
                        try {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f77811g.accept(th);
                            throw io.reactivex.rxjava3.internal.util.g.g(th);
                        } finally {
                            this.f77813i.run();
                        }
                    }
                } else if (this.f81233e == 1) {
                    this.f77812h.run();
                }
                return poll;
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                try {
                    this.f77811g.accept(th2);
                    throw io.reactivex.rxjava3.internal.util.g.g(th2);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    /* compiled from: FlowableDoOnEach.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends io.reactivex.rxjava3.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final q7.g<? super T> f77814f;

        /* renamed from: g  reason: collision with root package name */
        final q7.g<? super Throwable> f77815g;

        /* renamed from: h  reason: collision with root package name */
        final q7.a f77816h;

        /* renamed from: i  reason: collision with root package name */
        final q7.a f77817i;

        b(org.reactivestreams.d<? super T> actual, q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.a onAfterTerminate) {
            super(actual);
            this.f77814f = onNext;
            this.f77815g = onError;
            this.f77816h = onComplete;
            this.f77817i = onAfterTerminate;
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.b, org.reactivestreams.d
        public void onComplete() {
            if (this.f81237d) {
                return;
            }
            try {
                this.f77816h.run();
                this.f81237d = true;
                this.f81234a.onComplete();
                try {
                    this.f77817i.run();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                f(th2);
            }
        }

        @Override // io.reactivex.rxjava3.internal.subscribers.b, org.reactivestreams.d
        public void onError(Throwable t9) {
            if (this.f81237d) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            boolean z9 = true;
            this.f81237d = true;
            try {
                this.f77815g.accept(t9);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f81234a.onError(new CompositeException(t9, th));
                z9 = false;
            }
            if (z9) {
                this.f81234a.onError(t9);
            }
            try {
                this.f77817i.run();
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                io.reactivex.rxjava3.plugins.a.Y(th2);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f81237d) {
                return;
            }
            if (this.f81238e != 0) {
                this.f81234a.onNext(null);
                return;
            }
            try {
                this.f77814f.accept(t9);
                this.f81234a.onNext(t9);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() throws Throwable {
            try {
                T poll = this.f81236c.poll();
                if (poll != null) {
                    try {
                        this.f77814f.accept(poll);
                    } catch (Throwable th) {
                        try {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            this.f77815g.accept(th);
                            throw io.reactivex.rxjava3.internal.util.g.g(th);
                        } finally {
                            this.f77817i.run();
                        }
                    }
                } else if (this.f81238e == 1) {
                    this.f77816h.run();
                }
                return poll;
            } catch (Throwable th2) {
                io.reactivex.rxjava3.exceptions.a.b(th2);
                try {
                    this.f77815g.accept(th2);
                    throw io.reactivex.rxjava3.internal.util.g.g(th2);
                } catch (Throwable th3) {
                    io.reactivex.rxjava3.exceptions.a.b(th3);
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            return g(mode);
        }
    }

    public q0(io.reactivex.rxjava3.core.m<T> source, q7.g<? super T> onNext, q7.g<? super Throwable> onError, q7.a onComplete, q7.a onAfterTerminate) {
        super(source);
        this.f77806c = onNext;
        this.f77807d = onError;
        this.f77808e = onComplete;
        this.f77809f = onAfterTerminate;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
            this.f76811b.G6(new a((io.reactivex.rxjava3.internal.fuseable.c) s9, this.f77806c, this.f77807d, this.f77808e, this.f77809f));
        } else {
            this.f76811b.G6(new b(s9, this.f77806c, this.f77807d, this.f77808e, this.f77809f));
        }
    }
}
