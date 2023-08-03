package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;

/* compiled from: FlowableFromIterable.java */
/* loaded from: classes3.dex */
public final class j1<T> extends io.reactivex.j<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends T> f72094b;

    /* compiled from: FlowableFromIterable.java */
    /* loaded from: classes3.dex */
    static abstract class a<T> extends BasicQueueSubscription<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f72095e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        Iterator<? extends T> f72096b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f72097c;

        /* renamed from: d  reason: collision with root package name */
        boolean f72098d;

        a(Iterator<? extends T> it) {
            this.f72096b = it;
        }

        abstract void a();

        abstract void b(long j4);

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f72097c = true;
        }

        @Override // o7.o
        public final void clear() {
            this.f72096b = null;
        }

        @Override // o7.o
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.f72096b;
            return it == null || !it.hasNext();
        }

        @Override // o7.o
        @m7.f
        public final T poll() {
            Iterator<? extends T> it = this.f72096b;
            if (it == null) {
                return null;
            }
            if (!this.f72098d) {
                this.f72098d = true;
            } else if (!it.hasNext()) {
                return null;
            }
            return (T) io.reactivex.internal.functions.b.g(this.f72096b.next(), "Iterator.next() returned a null value");
        }

        @Override // org.reactivestreams.e
        public final void request(long j4) {
            if (SubscriptionHelper.validate(j4) && io.reactivex.internal.util.b.a(this, j4) == 0) {
                if (j4 == Long.MAX_VALUE) {
                    a();
                } else {
                    b(j4);
                }
            }
        }

        @Override // o7.k
        public final int requestFusion(int i4) {
            return i4 & 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFromIterable.java */
    /* loaded from: classes3.dex */
    public static final class b<T> extends a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72099g = -6022804456014692607L;

        /* renamed from: f  reason: collision with root package name */
        final o7.a<? super T> f72100f;

        b(o7.a<? super T> aVar, Iterator<? extends T> it) {
            super(it);
            this.f72100f = aVar;
        }

        @Override // io.reactivex.internal.operators.flowable.j1.a
        void a() {
            Iterator<? extends T> it = this.f72096b;
            o7.a<? super T> aVar = this.f72100f;
            while (!this.f72097c) {
                try {
                    Object obj = (T) it.next();
                    if (this.f72097c) {
                        return;
                    }
                    if (obj == null) {
                        aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    aVar.h(obj);
                    if (this.f72097c) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f72097c) {
                                return;
                            }
                            aVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        aVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    aVar.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.j1.a
        void b(long j4) {
            Iterator<? extends T> it = this.f72096b;
            o7.a<? super T> aVar = this.f72100f;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 != j4) {
                        if (this.f72097c) {
                            return;
                        }
                        try {
                            Object obj = (T) it.next();
                            if (this.f72097c) {
                                return;
                            }
                            if (obj == null) {
                                aVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            boolean h4 = aVar.h(obj);
                            if (this.f72097c) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.f72097c) {
                                        return;
                                    }
                                    aVar.onComplete();
                                    return;
                                } else if (h4) {
                                    j10++;
                                }
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                aVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            aVar.onError(th2);
                            return;
                        }
                    } else {
                        j4 = get();
                        if (j10 == j4) {
                            j4 = addAndGet(-j10);
                        }
                    }
                }
            } while (j4 != 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFromIterable.java */
    /* loaded from: classes3.dex */
    public static final class c<T> extends a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f72101g = -6022804456014692607L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f72102f;

        c(org.reactivestreams.d<? super T> dVar, Iterator<? extends T> it) {
            super(it);
            this.f72102f = dVar;
        }

        @Override // io.reactivex.internal.operators.flowable.j1.a
        void a() {
            Iterator<? extends T> it = this.f72096b;
            org.reactivestreams.d<? super T> dVar = this.f72102f;
            while (!this.f72097c) {
                try {
                    Object obj = (T) it.next();
                    if (this.f72097c) {
                        return;
                    }
                    if (obj == null) {
                        dVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    dVar.onNext(obj);
                    if (this.f72097c) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f72097c) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        dVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    dVar.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.j1.a
        void b(long j4) {
            Iterator<? extends T> it = this.f72096b;
            org.reactivestreams.d<? super T> dVar = this.f72102f;
            do {
                long j10 = 0;
                while (true) {
                    if (j10 != j4) {
                        if (this.f72097c) {
                            return;
                        }
                        try {
                            Object obj = (T) it.next();
                            if (this.f72097c) {
                                return;
                            }
                            if (obj == null) {
                                dVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            dVar.onNext(obj);
                            if (this.f72097c) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.f72097c) {
                                        return;
                                    }
                                    dVar.onComplete();
                                    return;
                                }
                                j10++;
                            } catch (Throwable th) {
                                io.reactivex.exceptions.a.b(th);
                                dVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.exceptions.a.b(th2);
                            dVar.onError(th2);
                            return;
                        }
                    } else {
                        j4 = get();
                        if (j10 == j4) {
                            j4 = addAndGet(-j10);
                        }
                    }
                }
            } while (j4 != 0);
        }
    }

    public j1(Iterable<? extends T> iterable) {
        this.f72094b = iterable;
    }

    public static <T> void M8(org.reactivestreams.d<? super T> dVar, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                EmptySubscription.complete(dVar);
            } else if (dVar instanceof o7.a) {
                dVar.onSubscribe(new b((o7.a) dVar, it));
            } else {
                dVar.onSubscribe(new c(dVar, it));
            }
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }

    @Override // io.reactivex.j
    public void k6(org.reactivestreams.d<? super T> dVar) {
        try {
            M8(dVar, this.f72094b.iterator());
        } catch (Throwable th) {
            io.reactivex.exceptions.a.b(th);
            EmptySubscription.error(th, dVar);
        }
    }
}
