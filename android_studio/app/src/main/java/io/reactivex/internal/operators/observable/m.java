package io.reactivex.internal.operators.observable;

import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableBuffer.java */
/* loaded from: classes3.dex */
public final class m<T, U extends Collection<? super T>> extends io.reactivex.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final int f74396b;

    /* renamed from: c  reason: collision with root package name */
    final int f74397c;

    /* renamed from: d  reason: collision with root package name */
    final Callable<U> f74398d;

    /* compiled from: ObservableBuffer.java */
    /* loaded from: classes3.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f74399a;

        /* renamed from: b  reason: collision with root package name */
        final int f74400b;

        /* renamed from: c  reason: collision with root package name */
        final Callable<U> f74401c;

        /* renamed from: d  reason: collision with root package name */
        U f74402d;

        /* renamed from: e  reason: collision with root package name */
        int f74403e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.disposables.c f74404f;

        a(io.reactivex.g0<? super U> g0Var, int i4, Callable<U> callable) {
            this.f74399a = g0Var;
            this.f74400b = i4;
            this.f74401c = callable;
        }

        boolean a() {
            try {
                this.f74402d = (U) io.reactivex.internal.functions.b.g(this.f74401c.call(), "Empty buffer supplied");
                return true;
            } catch (Throwable th) {
                io.reactivex.exceptions.a.b(th);
                this.f74402d = null;
                io.reactivex.disposables.c cVar = this.f74404f;
                if (cVar == null) {
                    EmptyDisposable.error(th, this.f74399a);
                    return false;
                }
                cVar.dispose();
                this.f74399a.onError(th);
                return false;
            }
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74404f.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74404f.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            U u9 = this.f74402d;
            if (u9 != null) {
                this.f74402d = null;
                if (!u9.isEmpty()) {
                    this.f74399a.onNext(u9);
                }
                this.f74399a.onComplete();
            }
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74402d = null;
            this.f74399a.onError(th);
        }

        @Override // io.reactivex.g0
        public void onNext(T t9) {
            U u9 = this.f74402d;
            if (u9 != null) {
                u9.add(t9);
                int i4 = this.f74403e + 1;
                this.f74403e = i4;
                if (i4 >= this.f74400b) {
                    this.f74399a.onNext(u9);
                    this.f74403e = 0;
                    a();
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74404f, cVar)) {
                this.f74404f = cVar;
                this.f74399a.onSubscribe(this);
            }
        }
    }

    /* compiled from: ObservableBuffer.java */
    /* loaded from: classes3.dex */
    static final class b<T, U extends Collection<? super T>> extends AtomicBoolean implements io.reactivex.g0<T>, io.reactivex.disposables.c {

        /* renamed from: h  reason: collision with root package name */
        private static final long f74405h = -8223395059921494546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.g0<? super U> f74406a;

        /* renamed from: b  reason: collision with root package name */
        final int f74407b;

        /* renamed from: c  reason: collision with root package name */
        final int f74408c;

        /* renamed from: d  reason: collision with root package name */
        final Callable<U> f74409d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.disposables.c f74410e;

        /* renamed from: f  reason: collision with root package name */
        final ArrayDeque<U> f74411f = new ArrayDeque<>();

        /* renamed from: g  reason: collision with root package name */
        long f74412g;

        b(io.reactivex.g0<? super U> g0Var, int i4, int i10, Callable<U> callable) {
            this.f74406a = g0Var;
            this.f74407b = i4;
            this.f74408c = i10;
            this.f74409d = callable;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            this.f74410e.dispose();
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return this.f74410e.isDisposed();
        }

        @Override // io.reactivex.g0
        public void onComplete() {
            while (!this.f74411f.isEmpty()) {
                this.f74406a.onNext(this.f74411f.poll());
            }
            this.f74406a.onComplete();
        }

        @Override // io.reactivex.g0
        public void onError(Throwable th) {
            this.f74411f.clear();
            this.f74406a.onError(th);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.g0
        public void onNext(T t9) {
            long j4 = this.f74412g;
            this.f74412g = 1 + j4;
            if (j4 % this.f74408c == 0) {
                try {
                    this.f74411f.offer((Collection) io.reactivex.internal.functions.b.g(this.f74409d.call(), "The bufferSupplier returned a null collection. Null values are generally not allowed in 2.x operators and sources."));
                } catch (Throwable th) {
                    this.f74411f.clear();
                    this.f74410e.dispose();
                    this.f74406a.onError(th);
                    return;
                }
            }
            Iterator<U> it = this.f74411f.iterator();
            while (it.hasNext()) {
                U next = it.next();
                next.add(t9);
                if (this.f74407b <= next.size()) {
                    it.remove();
                    this.f74406a.onNext(next);
                }
            }
        }

        @Override // io.reactivex.g0
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            if (DisposableHelper.validate(this.f74410e, cVar)) {
                this.f74410e = cVar;
                this.f74406a.onSubscribe(this);
            }
        }
    }

    public m(io.reactivex.e0<T> e0Var, int i4, int i10, Callable<U> callable) {
        super(e0Var);
        this.f74396b = i4;
        this.f74397c = i10;
        this.f74398d = callable;
    }

    @Override // io.reactivex.z
    protected void subscribeActual(io.reactivex.g0<? super U> g0Var) {
        int i4 = this.f74397c;
        int i10 = this.f74396b;
        if (i4 == i10) {
            a aVar = new a(g0Var, i10, this.f74398d);
            if (aVar.a()) {
                this.f73827a.subscribe(aVar);
                return;
            }
            return;
        }
        this.f73827a.subscribe(new b(g0Var, this.f74396b, this.f74397c, this.f74398d));
    }
}
