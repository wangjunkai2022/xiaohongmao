package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.observers.BasicIntQueueDisposable;
import java.util.Iterator;
import java.util.Objects;
import java.util.stream.Stream;

/* compiled from: MaybeFlattenStreamAsObservable.java */
/* loaded from: classes4.dex */
public final class n<T, R> extends io.reactivex.rxjava3.core.g0<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.v<T> f76367a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends Stream<? extends R>> f76368b;

    /* compiled from: MaybeFlattenStreamAsObservable.java */
    /* loaded from: classes4.dex */
    static final class a<T, R> extends BasicIntQueueDisposable<R> implements io.reactivex.rxjava3.core.y<T>, s0<T> {

        /* renamed from: j  reason: collision with root package name */
        private static final long f76369j = 7363336003027148283L;

        /* renamed from: b  reason: collision with root package name */
        final n0<? super R> f76370b;

        /* renamed from: c  reason: collision with root package name */
        final q7.o<? super T, ? extends Stream<? extends R>> f76371c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f76372d;

        /* renamed from: e  reason: collision with root package name */
        volatile Iterator<? extends R> f76373e;

        /* renamed from: f  reason: collision with root package name */
        AutoCloseable f76374f;

        /* renamed from: g  reason: collision with root package name */
        boolean f76375g;

        /* renamed from: h  reason: collision with root package name */
        volatile boolean f76376h;

        /* renamed from: i  reason: collision with root package name */
        boolean f76377i;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(n0<? super R> downstream, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
            this.f76370b = downstream;
            this.f76371c = mapper;
        }

        void a(AutoCloseable c10) {
            if (c10 != null) {
                try {
                    c10.close();
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    io.reactivex.rxjava3.plugins.a.Y(th);
                }
            }
        }

        void b() {
            if (getAndIncrement() != 0) {
                return;
            }
            n0<? super R> n0Var = this.f76370b;
            Iterator<? extends R> it = this.f76373e;
            int i4 = 1;
            while (true) {
                if (this.f76376h) {
                    clear();
                } else if (this.f76377i) {
                    n0Var.onNext(null);
                    n0Var.onComplete();
                } else {
                    try {
                        Object obj = (R) it.next();
                        if (!this.f76376h) {
                            n0Var.onNext(obj);
                            if (!this.f76376h) {
                                try {
                                    boolean hasNext = it.hasNext();
                                    if (!this.f76376h && !hasNext) {
                                        n0Var.onComplete();
                                        this.f76376h = true;
                                    }
                                } catch (Throwable th) {
                                    io.reactivex.rxjava3.exceptions.a.b(th);
                                    n0Var.onError(th);
                                    this.f76376h = true;
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        io.reactivex.rxjava3.exceptions.a.b(th2);
                        n0Var.onError(th2);
                        this.f76376h = true;
                    }
                }
                i4 = addAndGet(-i4);
                if (i4 == 0) {
                    return;
                }
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public void clear() {
            this.f76373e = null;
            AutoCloseable autoCloseable = this.f76374f;
            this.f76374f = null;
            a(autoCloseable);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76376h = true;
            this.f76372d.dispose();
            if (this.f76377i) {
                return;
            }
            b();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76376h;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        public boolean isEmpty() {
            Iterator<? extends R> it = this.f76373e;
            if (it != null) {
                if (this.f76375g && !it.hasNext()) {
                    clear();
                    return true;
                }
                return false;
            }
            return true;
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76370b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(@p7.e Throwable e4) {
            this.f76370b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(@p7.e io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f76372d, d4)) {
                this.f76372d = d4;
                this.f76370b.onSubscribe(this);
            }
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(@p7.e T t9) {
            try {
                Stream<? extends R> apply = this.f76371c.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null Stream");
                Stream<? extends R> stream = apply;
                Iterator<? extends R> it = stream.iterator();
                if (!it.hasNext()) {
                    this.f76370b.onComplete();
                    a(stream);
                    return;
                }
                this.f76373e = it;
                this.f76374f = stream;
                b();
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76370b.onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.q
        @p7.f
        public R poll() throws Throwable {
            Iterator<? extends R> it = this.f76373e;
            if (it != null) {
                if (this.f76375g) {
                    if (!it.hasNext()) {
                        clear();
                        return null;
                    }
                } else {
                    this.f76375g = true;
                }
                return it.next();
            }
            return null;
        }

        @Override // io.reactivex.rxjava3.internal.fuseable.m
        public int requestFusion(int mode) {
            if ((mode & 2) != 0) {
                this.f76377i = true;
                return 2;
            }
            return 0;
        }
    }

    public n(io.reactivex.rxjava3.core.v<T> source, q7.o<? super T, ? extends Stream<? extends R>> mapper) {
        this.f76367a = source;
        this.f76368b = mapper;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(@p7.e n0<? super R> s9) {
        this.f76367a.b(new a(s9, this.f76368b));
    }
}
