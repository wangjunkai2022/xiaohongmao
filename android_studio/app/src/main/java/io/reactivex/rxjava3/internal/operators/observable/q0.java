package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableElementAt.java */
/* loaded from: classes4.dex */
public final class q0<T> extends io.reactivex.rxjava3.internal.operators.observable.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final long f79978b;

    /* renamed from: c  reason: collision with root package name */
    final T f79979c;

    /* renamed from: d  reason: collision with root package name */
    final boolean f79980d;

    /* compiled from: ObservableElementAt.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super T> f79981a;

        /* renamed from: b  reason: collision with root package name */
        final long f79982b;

        /* renamed from: c  reason: collision with root package name */
        final T f79983c;

        /* renamed from: d  reason: collision with root package name */
        final boolean f79984d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79985e;

        /* renamed from: f  reason: collision with root package name */
        long f79986f;

        /* renamed from: g  reason: collision with root package name */
        boolean f79987g;

        a(io.reactivex.rxjava3.core.n0<? super T> actual, long index, T defaultValue, boolean errorOnFewer) {
            this.f79981a = actual;
            this.f79982b = index;
            this.f79983c = defaultValue;
            this.f79984d = errorOnFewer;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79985e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79985e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            if (this.f79987g) {
                return;
            }
            this.f79987g = true;
            T t9 = this.f79983c;
            if (t9 == null && this.f79984d) {
                this.f79981a.onError(new NoSuchElementException());
                return;
            }
            if (t9 != null) {
                this.f79981a.onNext(t9);
            }
            this.f79981a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79987g) {
                io.reactivex.rxjava3.plugins.a.Y(t9);
                return;
            }
            this.f79987g = true;
            this.f79981a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            if (this.f79987g) {
                return;
            }
            long j4 = this.f79986f;
            if (j4 == this.f79982b) {
                this.f79987g = true;
                this.f79985e.dispose();
                this.f79981a.onNext(t9);
                this.f79981a.onComplete();
                return;
            }
            this.f79986f = j4 + 1;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79985e, d4)) {
                this.f79985e = d4;
                this.f79981a.onSubscribe(this);
            }
        }
    }

    public q0(io.reactivex.rxjava3.core.l0<T> source, long index, T defaultValue, boolean errorOnFewer) {
        super(source);
        this.f79978b = index;
        this.f79979c = defaultValue;
        this.f79980d = errorOnFewer;
    }

    @Override // io.reactivex.rxjava3.core.g0
    public void d6(io.reactivex.rxjava3.core.n0<? super T> t9) {
        this.f79141a.a(new a(t9, this.f79978b, this.f79979c, this.f79980d));
    }
}
