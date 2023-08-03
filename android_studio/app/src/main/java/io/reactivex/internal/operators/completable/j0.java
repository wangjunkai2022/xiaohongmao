package io.reactivex.internal.operators.completable;

import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableResumeNext.java */
/* loaded from: classes3.dex */
public final class j0 extends io.reactivex.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.g f71381a;

    /* renamed from: b  reason: collision with root package name */
    final n7.o<? super Throwable, ? extends io.reactivex.g> f71382b;

    /* compiled from: CompletableResumeNext.java */
    /* loaded from: classes3.dex */
    static final class a extends AtomicReference<io.reactivex.disposables.c> implements io.reactivex.d, io.reactivex.disposables.c {

        /* renamed from: d  reason: collision with root package name */
        private static final long f71383d = 5018523762564524046L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.d f71384a;

        /* renamed from: b  reason: collision with root package name */
        final n7.o<? super Throwable, ? extends io.reactivex.g> f71385b;

        /* renamed from: c  reason: collision with root package name */
        boolean f71386c;

        a(io.reactivex.d dVar, n7.o<? super Throwable, ? extends io.reactivex.g> oVar) {
            this.f71384a = dVar;
            this.f71385b = oVar;
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.d
        public void onComplete() {
            this.f71384a.onComplete();
        }

        @Override // io.reactivex.d
        public void onError(Throwable th) {
            if (this.f71386c) {
                this.f71384a.onError(th);
                return;
            }
            this.f71386c = true;
            try {
                ((io.reactivex.g) io.reactivex.internal.functions.b.g(this.f71385b.apply(th), "The errorMapper returned a null CompletableSource")).d(this);
            } catch (Throwable th2) {
                io.reactivex.exceptions.a.b(th2);
                this.f71384a.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.d
        public void onSubscribe(io.reactivex.disposables.c cVar) {
            DisposableHelper.replace(this, cVar);
        }
    }

    public j0(io.reactivex.g gVar, n7.o<? super Throwable, ? extends io.reactivex.g> oVar) {
        this.f71381a = gVar;
        this.f71382b = oVar;
    }

    @Override // io.reactivex.a
    protected void I0(io.reactivex.d dVar) {
        a aVar = new a(dVar, this.f71382b);
        dVar.onSubscribe(aVar);
        this.f71381a.d(aVar);
    }
}
