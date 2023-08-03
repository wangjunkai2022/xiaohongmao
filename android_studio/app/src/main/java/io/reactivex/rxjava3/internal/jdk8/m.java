package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.rxjava3.internal.subscriptions.SubscriptionHelper;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicLong;
import java.util.stream.Stream;

/* compiled from: MaybeFlattenStreamAsFlowable.java */
/* loaded from: classes4.dex */
public final class m<T, R> extends io.reactivex.rxjava3.core.m<R> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v<T> f76354b;

    /* renamed from: c  reason: collision with root package name */
    final q7.o<? super T, ? extends Stream<? extends R>> f76355c;

    /* compiled from: MaybeFlattenStreamAsFlowable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueSubscription<R> implements io.reactivex.rxjava3.core.y<T>, s0<T> {

        /* renamed from: l  reason: collision with root package name */
        private static final long f76356l = 7363336003027148283L;

        /* renamed from: b  reason: collision with root package name */
        final org.reactivestreams.d<? super R> f76357b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends Stream<? extends R>> f76358c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicLong f76359d = new AtomicLong();

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76360e;

        /* renamed from: f  reason: collision with root package name */
        volatile Iterator<? extends R> f76361f;

        /* renamed from: g  reason: collision with root package name */
        AutoCloseable f76362g;

        /* renamed from: h  reason: collision with root package name */
        boolean f76363h;

        /* renamed from: i  reason: collision with root package name */
        volatile boolean f76364i;

        /* renamed from: j  reason: collision with root package name */
        boolean f76365j;

        /* renamed from: k  reason: collision with root package name */
        long f76366k;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(org.reactivestreams.d<? super R> downstream, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
            this.f76357b = downstream;
            this.f76358c = mapper;
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            org.reactivestreams.d<? super R> dVar = this.f76357b;
            long j4 = this.f76366k;
            long j10 = this.f76359d.get();
            Iterator<? extends R> it = this.f76361f;
            int i4 = 1;
            while (true) {
                if (this.f76364i) {
                    clear();
                } else if (this.f76365j) {
                    if (it != null) {
                        dVar.onNext(null);
                        dVar.onComplete();
                    }
                } else if (it != null && j4 != j10) {
                    try {
                        Object obj = (R) it.next();
                        if (!this.f76364i) {
                            dVar.onNext(obj);
                            j4++;
                            if (!this.f76364i) {
                                try {
                                    boolean hasNext = it.hasNext();
                                    if (!this.f76364i && !hasNext) {
                                        dVar.onComplete();
                                        this.f76364i = true;
                                    }
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    dVar.onError(th);
                                    this.f76364i = true;
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        dVar.onError(th2);
                        this.f76364i = true;
                    }
                }
                this.f76366k = j4;
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
                j10 = this.f76359d.get();
                if (it == null) {
                    it = this.f76361f;
                }
            }
        }

        @Override // org.reactivestreams.e
        public void cancel() {
            this.f76364i = true;
            this.f76360e.dispose();
            if (this.f76365j) {
                return;
            }
            b();
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f76361f = null;
            AutoCloseable autoCloseable = this.f76362g;
            this.f76362g = null;
            j(autoCloseable);
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            Iterator<? extends R> it = this.f76361f;
            if (it != null) {
                if (this.f76363h && !it.hasNext()) {
                    clear();
                    return true;
                }
                return false;
            }
            return true;
        }

        void j(AutoCloseable c10) {
            if (c10 != null) {
                try {
                    c10.close();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76357b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(@p7.e Throwable e4) {
            this.f76357b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76360e, d4)) {
                this.f76360e = d4;
                this.f76357b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(@p7.e T t9) {
            try {
                Stream<? extends R> apply = this.f76358c.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Stream");
                Stream<? extends R> stream = apply;
                Iterator<? extends R> it = stream.iterator();
                if (!it.hasNext()) {
                    this.f76357b.onComplete();
                    j(stream);
                    return;
                }
                this.f76361f = it;
                this.f76362g = stream;
                b();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76357b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() throws Throwable {
            Iterator<? extends R> it = this.f76361f;
            if (it != null) {
                if (this.f76363h) {
                    if (!it.hasNext()) {
                        clear();
                        return null;
                    }
                } else {
                    this.f76363h = true;
                }
                return it.next();
            }
            return null;
        }

        @Override // org.reactivestreams.e
        public void request(long n9) {
            if (SubscriptionHelper.validate(n9)) {
                io.reactivex.rxjava3.internal.util.b.a(this.f76359d, n9);
                b();
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f76365j = true;
                return 2;
            }
            return 0;
        }
    }

    public m(io.reactivex.rxjava3.core.v<T> source, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        this.f76354b = source;
        this.f76355c = mapper;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(@p7.e org.reactivestreams.d<? super R> s9) {
        this.f76354b.b(new a(s9, this.f76355c));
    }
}
