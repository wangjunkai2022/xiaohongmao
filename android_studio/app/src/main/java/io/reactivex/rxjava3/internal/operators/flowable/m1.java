package io.reactivex.rxjava3.internal.operators.flowable;

import io.reactivex.rxjava3.internal.subscriptions.BasicQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Objects;

/* compiled from: FlowableFromIterable.java */
/* loaded from: classes4.dex */
public final class m1<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final Iterable<? extends T> f77536b;

    /* compiled from: FlowableFromIterable.java */
    /* loaded from: classes4.dex */
    static abstract class a<T> extends BasicQueueSubscription<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f77537e = -2252972430506210021L;

        /* renamed from: b  reason: collision with root package name */
        Iterator<? extends T> f77538b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f77539c;

        /* renamed from: d  reason: collision with root package name */
        boolean f77540d;

        a(Iterator<? extends T> it) {
            this.f77538b = it;
        }

        abstract void a();

        abstract void b(long r9);

        @Override // org.reactivestreams.e
        public final void cancel() {
            this.f77539c = true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final void clear() {
            this.f77538b = null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public final boolean isEmpty() {
            Iterator<? extends T> it = this.f77538b;
            if (it != null) {
                if (!this.f77540d || it.hasNext()) {
                    return false;
                }
                clear();
                return true;
            }
            return true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public final T poll() {
            Iterator<? extends T> it = this.f77538b;
            if (it == null) {
                return null;
            }
            if (!this.f77540d) {
                this.f77540d = true;
            } else if (!it.hasNext()) {
                return null;
            }
            T next = this.f77538b.next();
            Objects.requireNonNull(next, "Iterator.next() returned a null value");
            return next;
        }

        @Override // org.reactivestreams.e
        public final void request(long n9) {
            if (SubscriptionHelper.validate(n9) && io.reactivex.rxjava3.internal.util.b.a(this, n9) == 0) {
                if (n9 == Long.MAX_VALUE) {
                    a();
                } else {
                    b(n9);
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public final int requestFusion(int mode) {
            return mode & 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFromIterable.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77541g = -6022804456014692607L;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f77542f;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super T> actual, Iterator<? extends T> it) {
            super(it);
            this.f77542f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.m1.a
        void a() {
            Iterator<? extends T> it = this.f77538b;
            io.reactivex.rxjava3.internal.fuseable.c<? super T> cVar = this.f77542f;
            while (!this.f77539c) {
                try {
                    Object obj = (T) it.next();
                    if (this.f77539c) {
                        return;
                    }
                    if (obj == null) {
                        cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    cVar.h(obj);
                    if (this.f77539c) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f77539c) {
                                return;
                            }
                            cVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        cVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    cVar.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.m1.a
        void b(long r9) {
            Iterator<? extends T> it = this.f77538b;
            io.reactivex.rxjava3.internal.fuseable.c<? super T> cVar = this.f77542f;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 != r9) {
                        if (this.f77539c) {
                            return;
                        }
                        try {
                            Object obj = (T) it.next();
                            if (this.f77539c) {
                                return;
                            }
                            if (obj == null) {
                                cVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            boolean h4 = cVar.h(obj);
                            if (this.f77539c) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.f77539c) {
                                        return;
                                    }
                                    cVar.onComplete();
                                    return;
                                } else if (h4) {
                                    j4++;
                                }
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                cVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            cVar.onError(th2);
                            return;
                        }
                    } else {
                        r9 = get();
                        if (j4 == r9) {
                            r9 = addAndGet(-j4);
                        }
                    }
                }
            } while (r9 != 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFromIterable.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f77543g = -6022804456014692607L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f77544f;

        c(org.reactivestreams.d<? super T> actual, Iterator<? extends T> it) {
            super(it);
            this.f77544f = actual;
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.m1.a
        void a() {
            Iterator<? extends T> it = this.f77538b;
            org.reactivestreams.d<? super T> dVar = this.f77544f;
            while (!this.f77539c) {
                try {
                    Object obj = (T) it.next();
                    if (this.f77539c) {
                        return;
                    }
                    if (obj == null) {
                        dVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                        return;
                    }
                    dVar.onNext(obj);
                    if (this.f77539c) {
                        return;
                    }
                    try {
                        if (!it.hasNext()) {
                            if (this.f77539c) {
                                return;
                            }
                            dVar.onComplete();
                            return;
                        }
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        dVar.onError(th);
                        return;
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    dVar.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.operators.flowable.m1.a
        void b(long r9) {
            Iterator<? extends T> it = this.f77538b;
            org.reactivestreams.d<? super T> dVar = this.f77544f;
            do {
                long j4 = 0;
                while (true) {
                    if (j4 != r9) {
                        if (this.f77539c) {
                            return;
                        }
                        try {
                            Object obj = (T) it.next();
                            if (this.f77539c) {
                                return;
                            }
                            if (obj == null) {
                                dVar.onError(new NullPointerException("Iterator.next() returned a null value"));
                                return;
                            }
                            dVar.onNext(obj);
                            if (this.f77539c) {
                                return;
                            }
                            try {
                                if (!it.hasNext()) {
                                    if (this.f77539c) {
                                        return;
                                    }
                                    dVar.onComplete();
                                    return;
                                }
                                j4++;
                            } catch (Throwable th) {
                                io.reactivex.rxjava3.exceptions.a.b(th);
                                dVar.onError(th);
                                return;
                            }
                        } catch (Throwable th2) {
                            io.reactivex.rxjava3.exceptions.a.b(th2);
                            dVar.onError(th2);
                            return;
                        }
                    } else {
                        r9 = get();
                        if (j4 == r9) {
                            r9 = addAndGet(-j4);
                        }
                    }
                }
            } while (r9 != 0);
        }
    }

    public m1(Iterable<? extends T> source) {
        this.f77536b = source;
    }

    public static <T> void g9(org.reactivestreams.d<? super T> s9, Iterator<? extends T> it) {
        try {
            if (!it.hasNext()) {
                EmptySubscription.complete(s9);
            } else if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                s9.onSubscribe(new b((io.reactivex.rxjava3.internal.fuseable.c) s9, it));
            } else {
                s9.onSubscribe(new c(s9, it));
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }

    @Override // io.reactivex.rxjava3.core.m
    public void H6(org.reactivestreams.d<? super T> s9) {
        try {
            g9(s9, this.f77536b.iterator());
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
        }
    }
}
