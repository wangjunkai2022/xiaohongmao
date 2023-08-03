package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.subscriptions.EmptySubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.Stream;

/* compiled from: FlowableFromStream.java */
/* loaded from: classes4.dex */
public final class h<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final Stream<T> f76329b;

    /* compiled from: FlowableFromStream.java */
    /* loaded from: classes4.dex */
    static abstract class a<T> extends AtomicLong implements io.reactivex.rxjava3.internal.fuseable.n<T> {

        /* renamed from: e  reason: collision with root package name */
        private static final long f76330e = -9082954702547571853L;

        /* renamed from: a  reason: collision with root package name */
        Iterator<T> f76331a;

        /* renamed from: b  reason: collision with root package name */
        AutoCloseable f76332b;

        /* renamed from: c  reason: collision with root package name */
        volatile boolean f76333c;

        /* renamed from: d  reason: collision with root package name */
        boolean f76334d;

        a(Iterator<T> iterator, AutoCloseable closeable) {
            this.f76331a = iterator;
            this.f76332b = closeable;
        }

        abstract void a(long n9);

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76333c = true;
            request(1L);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f76331a = null;
            AutoCloseable autoCloseable = this.f76332b;
            this.f76332b = null;
            if (autoCloseable != null) {
                h.g9(autoCloseable);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            Iterator<T> it = this.f76331a;
            if (it != null) {
                if (!this.f76334d || it.hasNext()) {
                    return false;
                }
                clear();
                return true;
            }
            return true;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(@p7.e T value) {
            throw new UnsupportedOperationException();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public T poll() {
            Iterator<T> it = this.f76331a;
            if (it == null) {
                return null;
            }
            if (!this.f76334d) {
                this.f76334d = true;
            } else if (!it.hasNext()) {
                clear();
                return null;
            }
            T next = this.f76331a.next();
            Objects.requireNonNull(next, "The Stream's Iterator.next() returned a null value");
            return next;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9) && io.reactivex.rxjava3.internal.util.b.a(this, n9) == 0) {
                a(n9);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 1) != 0) {
                lazySet(Long.MAX_VALUE);
                return 1;
            }
            return 0;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean offer(@p7.e T v12, @p7.e T v22) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFromStream.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f76335g = -9082954702547571853L;

        /* renamed from: f  reason: collision with root package name */
        final io.reactivex.rxjava3.internal.fuseable.c<? super T> f76336f;

        b(io.reactivex.rxjava3.internal.fuseable.c<? super T> downstream, Iterator<T> iterator, AutoCloseable closeable) {
            super(iterator, closeable);
            this.f76336f = downstream;
        }

        @Override // io.reactivex.rxjava3.internal.jdk8.h.a
        public void a(long n9) {
            Iterator<T> it = this.f76331a;
            io.reactivex.rxjava3.internal.fuseable.c<? super T> cVar = this.f76336f;
            long j4 = 0;
            while (!this.f76333c) {
                try {
                    T next = it.next();
                    Objects.requireNonNull(next, "The Stream's Iterator returned a null value");
                    if (cVar.h(next)) {
                        j4++;
                    }
                    if (this.f76333c) {
                        continue;
                    } else {
                        try {
                            if (!it.hasNext()) {
                                cVar.onComplete();
                                this.f76333c = true;
                            } else if (j4 != n9) {
                                continue;
                            } else {
                                n9 = get();
                                if (j4 != n9) {
                                    continue;
                                } else if (compareAndSet(n9, 0L)) {
                                    return;
                                } else {
                                    n9 = get();
                                }
                            }
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            cVar.onError(th);
                            this.f76333c = true;
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    cVar.onError(th2);
                    this.f76333c = true;
                }
            }
            clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFromStream.java */
    /* loaded from: classes4.dex */
    public static final class c<T> extends a<T> {

        /* renamed from: g  reason: collision with root package name */
        private static final long f76337g = -9082954702547571853L;

        /* renamed from: f  reason: collision with root package name */
        final org.reactivestreams.d<? super T> f76338f;

        c(org.reactivestreams.d<? super T> downstream, Iterator<T> iterator, AutoCloseable closeable) {
            super(iterator, closeable);
            this.f76338f = downstream;
        }

        @Override // io.reactivex.rxjava3.internal.jdk8.h.a
        public void a(long n9) {
            Iterator<T> it = this.f76331a;
            org.reactivestreams.d<? super T> dVar = this.f76338f;
            long j4 = 0;
            while (!this.f76333c) {
                try {
                    T next = it.next();
                    Objects.requireNonNull(next, "The Stream's Iterator returned a null value");
                    dVar.onNext(next);
                    if (this.f76333c) {
                        continue;
                    } else {
                        try {
                            if (it.hasNext()) {
                                j4++;
                                if (j4 != n9) {
                                    continue;
                                } else {
                                    n9 = get();
                                    if (j4 != n9) {
                                        continue;
                                    } else if (compareAndSet(n9, 0L)) {
                                        return;
                                    } else {
                                        n9 = get();
                                    }
                                }
                            } else {
                                dVar.onComplete();
                                this.f76333c = true;
                            }
                        } catch (Throwable th) {
                            io.reactivex.rxjava3.exceptions.a.b(th);
                            dVar.onError(th);
                            this.f76333c = true;
                        }
                    }
                } catch (Throwable th2) {
                    io.reactivex.rxjava3.exceptions.a.b(th2);
                    dVar.onError(th2);
                    this.f76333c = true;
                }
            }
            clear();
        }
    }

    public h(Stream<T> stream) {
        this.f76329b = stream;
    }

    static void g9(AutoCloseable c10) {
        try {
            c10.close();
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            io.reactivex.rxjava3.plugins.a.Y(th);
        }
    }

    public static <T> void h9(org.reactivestreams.d<? super T> s9, Stream<T> stream) {
        try {
            Iterator<T> it = stream.iterator();
            if (!it.hasNext()) {
                EmptySubscription.complete(s9);
                g9(stream);
            } else if (s9 instanceof io.reactivex.rxjava3.internal.fuseable.c) {
                s9.onSubscribe(new b((io.reactivex.rxjava3.internal.fuseable.c) s9, it, stream));
            } else {
                s9.onSubscribe(new c(s9, it, stream));
            }
        } catch (Throwable th) {
            io.reactivex.rxjava3.exceptions.a.b(th);
            EmptySubscription.error(th, s9);
            g9(stream);
        }
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        h9(s9, this.f76329b);
    }
}
