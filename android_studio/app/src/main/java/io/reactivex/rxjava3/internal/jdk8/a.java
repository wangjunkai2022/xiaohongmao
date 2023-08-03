package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.jdk8.g;
import java.util.concurrent.CompletionStage;
import java.util.function.BiConsumer;

/* compiled from: CompletableFromCompletionStage.java */
/* loaded from: classes4.dex */
public final class a<T> extends io.reactivex.rxjava3.core.a {

    /* renamed from: a  reason: collision with root package name */
    final CompletionStage<T> f76231a;

    /* compiled from: CompletableFromCompletionStage.java */
    /* renamed from: io.reactivex.rxjava3.internal.jdk8.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0618a<T> implements io.reactivex.rxjava3.disposables.f, BiConsumer<T, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.d f76232a;

        /* renamed from: b  reason: collision with root package name */
        final g.a<T> f76233b;

        C0618a(io.reactivex.rxjava3.core.d downstream, g.a<T> whenReference) {
            this.f76232a = downstream;
            this.f76233b = whenReference;
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f76232a.onError(error);
            } else {
                this.f76232a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76233b.set(null);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76233b.get() == null;
        }
    }

    public a(CompletionStage<T> stage) {
        this.f76231a = stage;
    }

    @Override // io.reactivex.rxjava3.core.a
    protected void Y0(io.reactivex.rxjava3.core.d observer) {
        g.a aVar = new g.a();
        C0618a c0618a = new C0618a(observer, aVar);
        aVar.lazySet(c0618a);
        observer.onSubscribe(c0618a);
        this.f76231a.whenComplete(aVar);
    }
}
