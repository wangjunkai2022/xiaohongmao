package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableResumeNext.java */
/* loaded from: classes4.dex */
public final class l0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76666a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.g> f76667b;

    /* compiled from: CompletableResumeNext.java */
    /* loaded from: classes4.dex */
    static final class a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: d  reason: collision with root package name */
        private static final long f76668d = 5018523762564524046L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76669a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.g> f76670b;

        /* renamed from: c  reason: collision with root package name */
        boolean f76671c;

        a(io.reactivex.rxjava3.core.d observer, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.g> errorMapper) {
            this.f76669a = observer;
            this.f76670b = errorMapper;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76669a.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f76671c) {
                this.f76669a.onError(e4);
                return;
            }
            this.f76671c = true;
            try {
                io.reactivex.rxjava3.core.g apply = this.f76670b.apply(e4);
                Objects.requireNonNull(apply, "The errorMapper returned a null CompletableSource");
                apply.d(this);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f76669a.onError(new CompositeException(e4, th));
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this, d4);
        }
    }

    public l0(io.reactivex.rxjava3.core.g source, q7.o<? super Throwable, ? extends io.reactivex.rxjava3.core.g> errorMapper) {
        this.f76666a = source;
        this.f76667b = errorMapper;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(final io.reactivex.rxjava3.core.d observer) {
        a aVar = new a(observer, this.f76667b);
        observer.onSubscribe(aVar);
        this.f76666a.d(aVar);
    }
}
