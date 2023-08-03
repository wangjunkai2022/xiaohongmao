package io.reactivex.rxjava3.internal.operators.observable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: ObservableBuffer.java */
/* loaded from: classes4.dex */
public final class m<T, U extends Collection<? super T>> extends io.reactivex.rxjava3.internal.operators.observable.a<T, U> {

    /* renamed from: b  reason: collision with root package name */
    final int f79726b;

    /* renamed from: c  reason: collision with root package name */
    final int f79727c;

    /* renamed from: d  reason: collision with root package name */
    final q7.s<U> f79728d;

    /* compiled from: ObservableBuffer.java */
    /* loaded from: classes4.dex */
    static final class a<T, U extends Collection<? super T>> implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super U> f79729a;

        /* renamed from: b  reason: collision with root package name */
        final int f79730b;

        /* renamed from: c  reason: collision with root package name */
        final q7.s<U> f79731c;

        /* renamed from: d  reason: collision with root package name */
        U f79732d;

        /* renamed from: e  reason: collision with root package name */
        int f79733e;

        /* renamed from: f  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79734f;

        a(io.reactivex.rxjava3.core.n0<? super U> actual, int count, q7.s<U> bufferSupplier) {
            this.f79729a = actual;
            this.f79730b = count;
            this.f79731c = bufferSupplier;
        }

        boolean a() {
            try {
                U u9 = this.f79731c.get();
                Objects.requireNonNull(u9, "Empty buffer supplied");
                this.f79732d = u9;
                return true;
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79732d = null;
                io.reactivex.rxjava3.disposables.f fVar = this.f79734f;
                if (fVar == null) {
                    EmptyDisposable.error(th, this.f79729a);
                    return false;
                }
                fVar.dispose();
                this.f79729a.onError(th);
                return false;
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79734f.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79734f.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            U u9 = this.f79732d;
            if (u9 != null) {
                this.f79732d = null;
                if (!u9.isEmpty()) {
                    this.f79729a.onNext(u9);
                }
                this.f79729a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79732d = null;
            this.f79729a.onError(t9);
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            U u9 = this.f79732d;
            if (u9 != null) {
                u9.add(t9);
                int i4 = this.f79733e + 1;
                this.f79733e = i4;
                if (i4 >= this.f79730b) {
                    this.f79729a.onNext(u9);
                    this.f79733e = 0;
                    a();
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79734f, d4)) {
                this.f79734f = d4;
                this.f79729a.onSubscribe(this);
            }
        }
    }

    /* compiled from: ObservableBuffer.java */
    /* loaded from: classes4.dex */
    static final class b<T, U extends Collection<? super T>> extends AtomicBoolean implements io.reactivex.rxjava3.core.n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: h  reason: collision with root package name */
        private static final long f79735h = -8223395059921494546L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.n0<? super U> f79736a;

        /* renamed from: b  reason: collision with root package name */
        final int f79737b;

        /* renamed from: c  reason: collision with root package name */
        final int f79738c;

        /* renamed from: d  reason: collision with root package name */
        final q7.s<U> f79739d;

        /* renamed from: e  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79740e;

        /* renamed from: f  reason: collision with root package name */
        final ArrayDeque<U> f79741f = new ArrayDeque<>();

        /* renamed from: g  reason: collision with root package name */
        long f79742g;

        b(io.reactivex.rxjava3.core.n0<? super U> actual, int count, int skip, q7.s<U> bufferSupplier) {
            this.f79736a = actual;
            this.f79737b = count;
            this.f79738c = skip;
            this.f79739d = bufferSupplier;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79740e.dispose();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79740e.isDisposed();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            while (!this.f79741f.isEmpty()) {
                this.f79736a.onNext(this.f79741f.poll());
            }
            this.f79736a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            this.f79741f.clear();
            this.f79736a.onError(t9);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            long j4 = this.f79742g;
            this.f79742g = 1 + j4;
            if (j4 % this.f79738c == 0) {
                try {
                    this.f79741f.offer((Collection) io.reactivex.rxjava3.internal.util.g.d(this.f79739d.get(), "The bufferSupplier returned a null Collection."));
                } catch (Throwable th) {
                    io.reactivex.rxjava3.exceptions.a.b(th);
                    this.f79741f.clear();
                    this.f79740e.dispose();
                    this.f79736a.onError(th);
                    return;
                }
            }
            Iterator<U> it = this.f79741f.iterator();
            while (it.hasNext()) {
                U next = it.next();
                next.add(t9);
                if (this.f79737b <= next.size()) {
                    it.remove();
                    this.f79736a.onNext(next);
                }
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79740e, d4)) {
                this.f79740e = d4;
                this.f79736a.onSubscribe(this);
            }
        }
    }

    public m(io.reactivex.rxjava3.core.l0<T> source, int count, int skip, q7.s<U> bufferSupplier) {
        super(source);
        this.f79726b = count;
        this.f79727c = skip;
        this.f79728d = bufferSupplier;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(io.reactivex.rxjava3.core.n0<? super U> t9) {
        int i4 = this.f79727c;
        int i10 = this.f79726b;
        if (i4 == i10) {
            a aVar = new a(t9, i10, this.f79728d);
            if (aVar.a()) {
                this.f79141a.a(aVar);
                return;
            }
            return;
        }
        this.f79141a.a(new b(t9, this.f79726b, this.f79727c, this.f79728d));
    }
}
