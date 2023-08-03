package io.reactivex.rxjava3.internal.operators.mixed;

import io.reactivex.rxjava3.core.g0;
import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.disposables.DisposableHelper;
import io.reactivex.rxjava3.internal.util.AtomicThrowable;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ObservableSwitchMapCompletable.java */
/* loaded from: classes4.dex */
public final class t<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final g0<T> f79050a;

    /* renamed from: b  reason: collision with root package name */
    final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f79051b;

    /* renamed from: c  reason: collision with root package name */
    final boolean f79052c;

    /* compiled from: ObservableSwitchMapCompletable.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements n0<T>, io.reactivex.rxjava3.disposables.f {

        /* renamed from: h  reason: collision with root package name */
        static final C0660a f79053h = new C0660a(null);

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f79054a;

        /* renamed from: b  reason: collision with root package name */
        final q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> f79055b;

        /* renamed from: c  reason: collision with root package name */
        final boolean f79056c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicThrowable f79057d = new AtomicThrowable();

        /* renamed from: e  reason: collision with root package name */
        final AtomicReference<C0660a> f79058e = new AtomicReference<>();

        /* renamed from: f  reason: collision with root package name */
        volatile boolean f79059f;

        /* renamed from: g  reason: collision with root package name */
        io.reactivex.rxjava3.disposables.f f79060g;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: ObservableSwitchMapCompletable.java */
        /* renamed from: io.reactivex.rxjava3.internal.operators.mixed.t$a$a  reason: collision with other inner class name */
        /* loaded from: classes4.dex */
        public static final class C0660a extends AtomicReference<io.reactivex.rxjava3.disposables.f> implements io.reactivex.rxjava3.core.d {

            /* renamed from: b  reason: collision with root package name */
            private static final long f79061b = -8003404460084760287L;

            /* renamed from: a  reason: collision with root package name */
            final a<?> f79062a;

            C0660a(a<?> parent) {
                this.f79062a = parent;
            }

            void a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onComplete() {
                this.f79062a.b(this);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onError(Throwable e4) {
                this.f79062a.c(this, e4);
            }

            @Override // io.reactivex.rxjava3.core.d
            public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
                DisposableHelper.setOnce(this, d4);
            }
        }

        a(io.reactivex.rxjava3.core.d downstream, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
            this.f79054a = downstream;
            this.f79055b = mapper;
            this.f79056c = delayErrors;
        }

        void a() {
            AtomicReference<C0660a> atomicReference = this.f79058e;
            C0660a c0660a = f79053h;
            C0660a andSet = atomicReference.getAndSet(c0660a);
            if (andSet == null || andSet == c0660a) {
                return;
            }
            andSet.a();
        }

        void b(C0660a sender) {
            if (this.f79058e.compareAndSet(sender, null) && this.f79059f) {
                this.f79057d.tryTerminateConsumer(this.f79054a);
            }
        }

        void c(C0660a sender, Throwable error) {
            if (this.f79058e.compareAndSet(sender, null)) {
                if (this.f79057d.tryAddThrowableOrReport(error)) {
                    if (this.f79056c) {
                        if (this.f79059f) {
                            this.f79057d.tryTerminateConsumer(this.f79054a);
                            return;
                        }
                        return;
                    }
                    this.f79060g.dispose();
                    a();
                    this.f79057d.tryTerminateConsumer(this.f79054a);
                    return;
                }
                return;
            }
            io.reactivex.rxjava3.plugins.a.Y(error);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f79060g.dispose();
            a();
            this.f79057d.tryTerminateAndReport();
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f79058e.get() == f79053h;
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onComplete() {
            this.f79059f = true;
            if (this.f79058e.get() == null) {
                this.f79057d.tryTerminateConsumer(this.f79054a);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onError(Throwable t9) {
            if (this.f79057d.tryAddThrowableOrReport(t9)) {
                if (this.f79056c) {
                    onComplete();
                    return;
                }
                a();
                this.f79057d.tryTerminateConsumer(this.f79054a);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onNext(T t9) {
            C0660a c0660a;
            try {
                io.reactivex.rxjava3.core.g apply = this.f79055b.apply(t9);
                Objects.requireNonNull(apply, "The mapper returned a null CompletableSource");
                io.reactivex.rxjava3.core.g gVar = apply;
                C0660a c0660a2 = new C0660a(this);
                do {
                    c0660a = this.f79058e.get();
                    if (c0660a == f79053h) {
                        return;
                    }
                } while (!this.f79058e.compareAndSet(c0660a, c0660a2));
                if (c0660a != null) {
                    c0660a.a();
                }
                gVar.d(c0660a2);
            } catch (Throwable th) {
                io.reactivex.rxjava3.exceptions.a.b(th);
                this.f79060g.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.rxjava3.core.n0
        public void onSubscribe(io.reactivex.rxjava3.disposables.f d4) {
            if (DisposableHelper.validate(this.f79060g, d4)) {
                this.f79060g = d4;
                this.f79054a.onSubscribe(this);
            }
        }
    }

    public t(g0<T> source, q7.o<? super T, ? extends io.reactivex.rxjava3.core.g> mapper, boolean delayErrors) {
        this.f79050a = source;
        this.f79051b = mapper;
        this.f79052c = delayErrors;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        if (w.a(this.f79050a, this.f79051b, observer)) {
            return;
        }
        this.f79050a.a(new a(observer, this.f79051b, this.f79052c));
    }
}
