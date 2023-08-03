package io.reactivex.rxjava3.internal.operators.completable;

import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: CompletableMergeArrayDelayError.java */
/* loaded from: classes4.dex */
public final class d0 extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.rxjava3.core.g[] f76586a;

    /* compiled from: CompletableMergeArrayDelayError.java */
    /* loaded from: classes4.dex */
    static final class a implements io.reactivex.rxjava3.core.d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76587a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.rxjava3.disposables.c f76588b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicThrowable f76589c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicInteger f76590d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(io.reactivex.rxjava3.core.d observer, io.reactivex.rxjava3.disposables.c set, AtomicThrowable error, AtomicInteger wip) {
            this.f76587a = observer;
            this.f76588b = set;
            this.f76589c = error;
            this.f76590d = wip;
        }

        void a() {
            if (this.f76590d.decrementAndGet() == 0) {
                this.f76589c.tryTerminateConsumer(this.f76587a);
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onComplete() {
            a();
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onError(Throwable e4) {
            if (this.f76589c.tryAddThrowableOrReport(e4)) {
                a();
            }
        }

        @Override // io.reactivex.rxjava3.core.d
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            this.f76588b.b(d4);
        }
    }

    /* compiled from: CompletableMergeArrayDelayError.java */
    /* loaded from: classes4.dex */
    static final class b implements io.reactivex.rxjava3.disposables.f {

        /* renamed from: a  reason: collision with root package name */
        final AtomicThrowable f76591a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(AtomicThrowable errors) {
            this.f76591a = errors;
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76591a.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76591a.isTerminated();
        }
    }

    public d0(io.reactivex.rxjava3.core.g[] sources) {
        this.f76586a = sources;
    }

    @Override // io.reactivex.rxjava3.core.a
    public void Y0(final io.reactivex.rxjava3.core.d observer) {
        io.reactivex.rxjava3.core.g[] gVarArr;
        io.reactivex.rxjava3.disposables.c cVar = new io.reactivex.rxjava3.disposables.c();
        AtomicInteger atomicInteger = new AtomicInteger(this.f76586a.length + 1);
        AtomicThrowable atomicThrowable = new AtomicThrowable();
        cVar.b(new b(atomicThrowable));
        observer.onSubscribe(cVar);
        for (io.reactivex.rxjava3.core.g gVar : this.f76586a) {
            if (cVar.isDisposed()) {
                return;
            }
            if (gVar == null) {
                atomicThrowable.tryAddThrowableOrReport(new NullPointerException("A completable source is null"));
                atomicInteger.decrementAndGet();
            } else {
                gVar.d(new a(observer, cVar, atomicThrowable, atomicInteger));
            }
        }
        if (atomicInteger.decrementAndGet() == 0) {
            atomicThrowable.tryTerminateConsumer(observer);
        }
    }
}
