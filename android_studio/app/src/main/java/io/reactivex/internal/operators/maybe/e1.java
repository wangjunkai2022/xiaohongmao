package io.reactivex.internal.operators.maybe;

import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MaybeSwitchIfEmpty.java */
/* loaded from: classes3.dex */
public final class e1<T> extends io.reactivex.internal.operators.maybe.a<T, T> {

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.w<? extends T> f73273b;

    /* compiled from: MaybeSwitchIfEmpty.java */
    /* loaded from: classes3.dex */
    static final class a<T> extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.t<T>, io.reactivex.disposables.c {

        /* renamed from: c  reason: collision with root package name */
        private static final long f73274c = -2223459372976438024L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.t<? super T> f73275a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.w<? extends T> f73276b;

        /* compiled from: MaybeSwitchIfEmpty.java */
        /* renamed from: io.reactivex.internal.operators.maybe.e1$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        static final class C0566a<T> implements io.reactivex.t<T> {

            /* renamed from: a  reason: collision with root package name */
            final io.reactivex.t<? super T> f73277a;

            /* renamed from: b  reason: collision with root package name */
            final AtomicReference<io.reactivex.disposables.c> f73278b;

            C0566a(io.reactivex.t<? super T> tVar, AtomicReference<io.reactivex.disposables.c> atomicReference) {
                this.f73277a = tVar;
                this.f73278b = atomicReference;
            }

            @Override // io.reactivex.t
            public void onComplete() {
                this.f73277a.onComplete();
            }

            @Override // io.reactivex.t
            public void onError(Throwable th) {
                this.f73277a.onError(th);
            }

            @Override // io.reactivex.t
            public void onSubscribe(io.reactivex.disposables.c cVar) {
                DisposableHelper.setOnce(this.f73278b, cVar);
            }

            @Override // io.reactivex.t
            public void onSuccess(T t9) {
                this.f73277a.onSuccess(t9);
            }
        }

        a(io.reactivex.t<? super T> tVar, io.reactivex.w<? extends T> wVar) {
            this.f73275a = tVar;
            this.f73276b = wVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.t
        public void onComplete() {
            io.reactivex.disposables.c cVar = get();
            if (cVar == DisposableHelper.DISPOSED || !compareAndSet(cVar, null)) {
                return;
            }
            this.f73276b.b(new C0566a(this.f73275a, this));
        }

        @Override // io.reactivex.t
        public void onError(Throwable th) {
            this.f73275a.onError(th);
        }

        @Override // io.reactivex.t
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.setOnce(this, cVar)) {
                this.f73275a.onSubscribe(this);
            }
        }

        @Override // io.reactivex.t
        public void onSuccess(T t9) {
            this.f73275a.onSuccess(t9);
        }
    }

    public e1(io.reactivex.w<T> wVar, io.reactivex.w<? extends T> wVar2) {
        super(wVar);
        this.f73273b = wVar2;
    }

    @Override // io.reactivex.q
    protected void q1(io.reactivex.t<? super T> tVar) {
        this.f73172a.b(new a(tVar, this.f73273b));
    }
}
