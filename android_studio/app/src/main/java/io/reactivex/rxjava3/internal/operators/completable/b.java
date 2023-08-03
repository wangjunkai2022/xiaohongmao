package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: CompletableAndThenCompletable.java */
/* loaded from: classes4.dex */
public final class b extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76537a;

    /* renamed from: b  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g f76538b;

    /* compiled from: CompletableAndThenCompletable.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReference<io.reactivex.rxjava3.disposables.f> f76539a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76540b;

        a(AtomicReference<io.reactivex.rxjava3.disposables.f> parent, io.reactivex.rxjava3.core.d downstream) {
            this.f76539a = parent;
            this.f76540b = downstream;
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            this.f76540b.onComplete();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76540b.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            DisposableHelper.replace(this.f76539a, d4);
        }
    }

    /* compiled from: CompletableAndThenCompletable.java */
    /* renamed from: io.reactivex.rxjava3.internal.operators.completable.b$b  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0620b extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d, io.reactivex.rxjava3.disposables.f {

        /* renamed from: c  reason: collision with root package name */
        private static final long f76541c = -4101678820158072998L;

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76542a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.core.g f76543b;

        C0620b(io.reactivex.rxjava3.core.d actualObserver, io.reactivex.rxjava3.core.g next) {
            this.f76542a = actualObserver;
            this.f76543b = next;
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
            this.f76543b.d(new a(this, this.f76542a));
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            this.f76542a.onError(e4);
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.setOnce(this, d4)) {
                this.f76542a.onSubscribe(this);
            }
        }
    }

    public b(io.reactivex.rxjava3.core.g source, io.reactivex.rxjava3.core.g next) {
        this.f76537a = source;
        this.f76538b = next;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        this.f76537a.d(new C0620b(observer, this.f76538b));
    }
}
