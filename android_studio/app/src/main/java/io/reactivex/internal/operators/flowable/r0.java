package io.reactivex.internal.operators.flowable;

import io.reactivex.exceptions.CompositeException;

/* compiled from: FlowableDoOnEach.java */
/* loaded from: classes3.dex */
public final class r0<T> extends io.reactivex.internal.operators.flowable.a<T, T> {

    /* renamed from: c  reason: collision with root package name */
    final n7.g<? super T> f72564c;

    /* renamed from: d  reason: collision with root package name */
    final n7.g<? super Throwable> f72565d;

    /* renamed from: e  reason: collision with root package name */
    final n7.a f72566e;

    /* renamed from: f  reason: collision with root package name */
    final n7.a f72567f;

    /* compiled from: FlowableDoOnEach.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends io.reactivex.internal.subscribers.a<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.g<? super T> f72568f;

        /* renamed from: g  reason: collision with root package name */
        final n7.g<? super Throwable> f72569g;

        /* renamed from: h  reason: collision with root package name */
        final n7.a f72570h;

        /* renamed from: i  reason: collision with root package name */
        final n7.a f72571i;

        a(o7.a<? super T> aVar, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar2, n7.a aVar3) {
            super(aVar);
            this.f72568f = gVar;
            this.f72569g = gVar2;
            this.f72570h = aVar2;
            this.f72571i = aVar3;
        }

        @Override // o7.a
        public boolean h(T t9) {
            if (this.f75817d) {
                return false;
            }
            try {
                this.f72568f.accept(t9);
                return this.f75814a.h(t9);
            } catch (Throwable th) {
                f(th);
                return false;
            }
        }

        @Override // io.reactivex.internal.subscribers.a, org.reactivestreams.d
        public void onComplete() {
            if (this.f75817d) {
                return;
            }
            try {
                this.f72570h.run();
                this.f75817d = true;
                this.f75814a.onComplete();
                try {
                    this.f72571i.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                f(th2);
            }
        }

        @Override // io.reactivex.internal.subscribers.a, org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75817d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            boolean z9 = true;
            this.f75817d = true;
            try {
                this.f72569g.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f75814a.onError(new CompositeException(th, th2));
                z9 = false;
            }
            if (z9) {
                this.f75814a.onError(th);
            }
            try {
                this.f72571i.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75817d) {
                return;
            }
            if (this.f75818e != 0) {
                this.f75814a.onNext(null);
                return;
            }
            try {
                this.f72568f.accept(t9);
                this.f75814a.onNext(t9);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            try {
                T poll = this.f75816c.poll();
                if (poll != null) {
                    try {
                        this.f72568f.accept(poll);
                    } catch (Throwable th) {
                        try {
                            io.reactivex.exceptions.a.b(th);
                            this.f72569g.accept(th);
                            throw io.reactivex.internal.util.g.d(th);
                        } finally {
                            this.f72571i.run();
                        }
                    }
                } else if (this.f75818e == 1) {
                    this.f72570h.run();
                }
                return poll;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f72569g.accept(th2);
                    throw io.reactivex.internal.util.g.d(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    /* compiled from: FlowableDoOnEach.java */
    /* loaded from: classes3.dex */
    static final class b<T> extends io.reactivex.internal.subscribers.b<T, T> {

        /* renamed from: f  reason: collision with root package name */
        final n7.g<? super T> f72572f;

        /* renamed from: g  reason: collision with root package name */
        final n7.g<? super Throwable> f72573g;

        /* renamed from: h  reason: collision with root package name */
        final n7.a f72574h;

        /* renamed from: i  reason: collision with root package name */
        final n7.a f72575i;

        b(org.reactivestreams.d<? super T> dVar, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.a aVar2) {
            super(dVar);
            this.f72572f = gVar;
            this.f72573g = gVar2;
            this.f72574h = aVar;
            this.f72575i = aVar2;
        }

        @Override // io.reactivex.internal.subscribers.b, org.reactivestreams.d
        public void onComplete() {
            if (this.f75822d) {
                return;
            }
            try {
                this.f72574h.run();
                this.f75822d = true;
                this.f75819a.onComplete();
                try {
                    this.f72575i.run();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    io.reactivex.plugins.a.Y(th);
                }
            } catch (Throwable th2) {
                f(th2);
            }
        }

        @Override // io.reactivex.internal.subscribers.b, org.reactivestreams.d
        public void onError(Throwable th) {
            if (this.f75822d) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            boolean z9 = true;
            this.f75822d = true;
            try {
                this.f72573g.accept(th);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f75819a.onError(new CompositeException(th, th2));
                z9 = false;
            }
            if (z9) {
                this.f75819a.onError(th);
            }
            try {
                this.f72575i.run();
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                io.reactivex.plugins.a.Y(th3);
            }
        }

        @Override // org.reactivestreams.d
        public void onNext(T t9) {
            if (this.f75822d) {
                return;
            }
            if (this.f75823e != 0) {
                this.f75819a.onNext(null);
                return;
            }
            try {
                this.f72572f.accept(t9);
                this.f75819a.onNext(t9);
            } catch (Throwable th) {
                f(th);
            }
        }

        @Override // o7.o
        @m7.f
        public T poll() throws Exception {
            try {
                T poll = this.f75821c.poll();
                if (poll != null) {
                    try {
                        this.f72572f.accept(poll);
                    } catch (Throwable th) {
                        try {
                            io.reactivex.exceptions.a.b(th);
                            this.f72573g.accept(th);
                            throw io.reactivex.internal.util.g.d(th);
                        } finally {
                            this.f72575i.run();
                        }
                    }
                } else if (this.f75823e == 1) {
                    this.f72574h.run();
                }
                return poll;
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                try {
                    this.f72573g.accept(th2);
                    throw io.reactivex.internal.util.g.d(th2);
                } catch (Throwable th3) {
                    throw new CompositeException(th2, th3);
                }
            }
        }

        @Override // o7.k
        public int requestFusion(int i4) {
            return g(i4);
        }
    }

    public r0(io.reactivex.j<T> jVar, n7.g<? super T> gVar, n7.g<? super Throwable> gVar2, n7.a aVar, n7.a aVar2) {
        super(jVar);
        this.f72564c = gVar;
        this.f72565d = gVar2;
        this.f72566e = aVar;
        this.f72567f = aVar2;
    }

    @Override // io.reactivex.j
    protected void k6(org.reactivestreams.d<? super T> dVar) {
        if (dVar instanceof o7.a) {
            this.f71538b.j6(new a((o7.a) dVar, this.f72564c, this.f72565d, this.f72566e, this.f72567f));
        } else {
            this.f71538b.j6(new b(dVar, this.f72564c, this.f72565d, this.f72566e, this.f72567f));
        }
    }
}
