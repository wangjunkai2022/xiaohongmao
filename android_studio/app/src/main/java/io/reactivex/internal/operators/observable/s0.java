package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.NoSuchElementException;

/* compiled from: ObservableElementAtSingle.java */
/* loaded from: classes3.dex */
public final class s0<T> extends io.reactivex.i0<T> implements o7.d<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.e0<T> f74708a;

    /* renamed from: b  reason: collision with root package name */
    final long f74709b;

    /* renamed from: c  reason: collision with root package name */
    final T f74710c;

    /* compiled from: ObservableElementAtSingle.java */
    /* loaded from: classes3.dex */
    static final class a<T> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.l0<? super T> f74711a;

        /* renamed from: b  reason: collision with root package name */
        final long f74712b;

        /* renamed from: c  reason: collision with root package name */
        final T f74713c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74714d;

        /* renamed from: e  reason: collision with root package name */
        long f74715e;

        /* renamed from: f  reason: collision with root package name */
        boolean f74716f;

        a(io.reactivex.l0<? super T> l0Var, long j4, T t9) {
            this.f74711a = l0Var;
            this.f74712b = j4;
            this.f74713c = t9;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74714d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74714d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74716f) {
                return;
            }
            this.f74716f = true;
            T t9 = this.f74713c;
            if (t9 != null) {
                this.f74711a.onSuccess(t9);
            } else {
                this.f74711a.onError(new NoSuchElementException());
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74716f) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74716f = true;
            this.f74711a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74716f) {
                return;
            }
            long j4 = this.f74715e;
            if (j4 == this.f74712b) {
                this.f74716f = true;
                this.f74714d.dispose();
                this.f74711a.onSuccess(t9);
                return;
            }
            this.f74715e = j4 + 1;
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74714d, cVar)) {
                this.f74714d = cVar;
                this.f74711a.onSubscribe(this);
            }
        }
    }

    public s0(io.reactivex.e0<T> e0Var, long j4, T t9) {
        this.f74708a = e0Var;
        this.f74709b = j4;
        this.f74710c = t9;
    }

    @Override // o7.d
    public io.reactivex.z<T> a() {
        return io.reactivex.plugins.a.R(new q0(this.f74708a, this.f74709b, this.f74710c, true));
    }

    @Override // io.reactivex.i0
    public void b1(io.reactivex.l0<? super T> l0Var) {
        this.f74708a.subscribe(new a(l0Var, this.f74709b, this.f74710c));
    }
}
