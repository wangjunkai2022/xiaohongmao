package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.Iterator;

/* compiled from: ObservableZipIterable.java */
/* loaded from: classes3.dex */
public final class m4<T, U, V> extends io.reactivex.z<V> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.z<? extends T> f74446a;

    /* renamed from: b  reason: collision with root package name */
    final Iterable<U> f74447b;

    /* renamed from: c  reason: collision with root package name */
    final n7.c<? super T, ? super U, ? extends V> f74448c;

    /* compiled from: ObservableZipIterable.java */
    /* loaded from: classes3.dex */
    static final class a<T, U, V> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super V> f74449a;

        /* renamed from: b  reason: collision with root package name */
        final Iterator<U> f74450b;

        /* renamed from: c  reason: collision with root package name */
        final n7.c<? super T, ? super U, ? extends V> f74451c;

        /* renamed from: d  reason: collision with root package name */
        io.reactivex.disposables.c f74452d;

        /* renamed from: e  reason: collision with root package name */
        boolean f74453e;

        a(io.reactivex.g0<? super V> g0Var, Iterator<U> it, n7.c<? super T, ? super U, ? extends V> cVar) {
            this.f74449a = g0Var;
            this.f74450b = it;
            this.f74451c = cVar;
        }

        void a(Throwable th) {
            this.f74453e = true;
            this.f74452d.dispose();
            this.f74449a.onError(th);
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74452d.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74452d.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            if (this.f74453e) {
                return;
            }
            this.f74453e = true;
            this.f74449a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            if (this.f74453e) {
                io.reactivex.plugins.a.Y(th);
                return;
            }
            this.f74453e = true;
            this.f74449a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            if (this.f74453e) {
                return;
            }
            try {
                try {
                    this.f74449a.onNext(io.reactivex.internal.functions.b.g(this.f74451c.apply(t9, io.reactivex.internal.functions.b.g(this.f74450b.next(), "The iterator returned a null value")), "The zipper function returned a null value"));
                    try {
                        if (this.f74450b.hasNext()) {
                            return;
                        }
                        this.f74453e = true;
                        this.f74452d.dispose();
                        this.f74449a.onComplete();
                    } catch (Throwable th) {
                        io.reactivex.exceptions.a.b(th);
                        a(th);
                    }
                } catch (Throwable th2) {
                    io.reactivex.exceptions.a.b(th2);
                    a(th2);
                }
            } catch (Throwable th3) {
                io.reactivex.exceptions.a.b(th3);
                a(th3);
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74452d, cVar)) {
                this.f74452d = cVar;
                this.f74449a.onSubscribe(this);
            }
        }
    }

    public m4(io.reactivex.z<? extends T> zVar, Iterable<U> iterable, n7.c<? super T, ? super U, ? extends V> cVar) {
        this.f74446a = zVar;
        this.f74447b = iterable;
        this.f74448c = cVar;
    }

    @Override // io.reactivex.z
    public void subscribeActual(io.reactivex.g0<? super V> g0Var) {
        try {
            Iterator it = (Iterator) io.reactivex.internal.functions.b.g(this.f74447b.iterator(), "The iterator returned by other is null");
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(g0Var);
                } else {
                    this.f74446a.subscribe(new a(g0Var, it, this.f74448c));
                }
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                EmptyDisposable.error(th, g0Var);
            }
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            EmptyDisposable.error(th2, g0Var);
        }
    }
}
