package io.reactivex.rxjava3.internal.operators.maybe;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeEqualSingle.java */
/* loaded from: classes4.dex */
public final class w<T> extends io.reactivex.rxjava3.core.p0<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f78790a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.b0<? extends T> f78791b;

    /* renamed from: c  reason: collision with root package name */
    final q7.d<? super T, ? super T> f78792c;

    /* compiled from: MaybeEqualSingle.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicInteger implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.s0<? super Boolean> f78793a;

        /* renamed from: b  reason: collision with root package name */
        final b<T> f78794b;

        /* renamed from: c  reason: collision with root package name */
        final b<T> f78795c;

        /* renamed from: d  reason: collision with root package name */
        final q7.d<? super T, ? super T> f78796d;

        a(io.reactivex.rxjava3.core.s0<? super Boolean> actual, q7.d<? super T, ? super T> isEqual) {
            super(2);
            this.f78793a = actual;
            this.f78796d = isEqual;
            this.f78794b = new b<>(this);
            this.f78795c = new b<>(this);
        }

        void a() {
            if (decrementAndGet() == 0) {
                Object obj = this.f78794b.f78799b;
                Object obj2 = this.f78795c.f78799b;
                if (obj != null && obj2 != null) {
                    try {
                        this.f78793a.onSuccess(Boolean.valueOf(this.f78796d.a(obj, obj2)));
                        return;
                    } catch (Throwable th) {
                        io.reactivex.rxjava3.exceptions.a.b(th);
                        this.f78793a.onError(th);
                        return;
                    }
                }
                this.f78793a.onSuccess(Boolean.valueOf(obj == null && obj2 == null));
            }
        }

        void b(b<T> sender, Throwable ex) {
            if (getAndSet(0) > 0) {
                b<T> bVar = this.f78794b;
                if (sender == bVar) {
                    this.f78795c.a();
                } else {
                    bVar.a();
                }
                this.f78793a.onError(ex);
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(ex);
        }

        void c(io.reactivex.rxjava3.core.b0<? extends T> source1, io.reactivex.rxjava3.core.b0<? extends T> source2) {
            source1.b(this.f78794b);
            source2.b(this.f78795c);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f78794b.a();
            this.f78795c.a();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f78794b.get());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MaybeEqualSingle.java */
    /* loaded from: classes4.dex */
    public static final class b<T> extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.y<T> {

        /* renamed from: c  reason: collision with root package name */
        private static final long f78797c = -3031974433025990931L;

        /* renamed from: a  reason: collision with root package name */
        final a<T> f78798a;

        /* renamed from: b  reason: collision with root package name */
        Object f78799b;

        b(a<T> parent) {
            this.f78798a = parent;
        }

        public void a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f78798a.a();
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f78798a.b(this, e4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0, io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.setOnce(this, d4);
        }

        @Override // io.reactivex.rxjava3.core.y, io.reactivex.rxjava3.core.s0
        public void onSuccess(T value) {
            this.f78799b = value;
            this.f78798a.a();
        }
    }

    public w(io.reactivex.rxjava3.core.b0<? extends T> source1, io.reactivex.rxjava3.core.b0<? extends T> source2, q7.d<? super T, ? super T> isEqual) {
        this.f78790a = source1;
        this.f78791b = source2;
        this.f78792c = isEqual;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(io.reactivex.rxjava3.core.s0<? super Boolean> observer) {
        a aVar = new a(observer, this.f78792c);
        observer.onSubscribe(aVar);
        aVar.c(this.f78790a, this.f78791b);
    }
}
