package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.n0;
import io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;

/* compiled from: ObservableFromCompletionStage.java */
/* loaded from: classes4.dex */
public final class u<T> extends io.reactivex.rxjava3.core.g0<T> {

    /* renamed from: a  reason: collision with root package name */
    final CompletionStage<T> f76412a;

    /* compiled from: ObservableFromCompletionStage.java */
    /* loaded from: classes4.dex */
    static final class a<T> extends AtomicReference<BiConsumer<T, Throwable>> implements BiConsumer<T, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        private static final long f76413a = 45838553147237545L;

        a() {
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(T t9, Throwable u9) {
            BiConsumer<T, Throwable> biConsumer = get();
            if (biConsumer != null) {
                biConsumer.accept(t9, u9);
            }
        }
    }

    /* compiled from: ObservableFromCompletionStage.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends DeferredScalarDisposable<T> implements BiConsumer<T, Throwable> {

        /* renamed from: k  reason: collision with root package name */
        private static final long f76414k = 4665335664328839859L;

        /* renamed from: j  reason: collision with root package name */
        final a<T> f76415j;

        b(n0<? super T> downstream, a<T> whenReference) {
            super(downstream);
            this.f76415j = whenReference;
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f76449b.onError(error);
            } else if (item != null) {
                complete(item);
            } else {
                this.f76449b.onError(new NullPointerException("The CompletionStage terminated with null."));
            }
        }

        @Override // io.reactivex.rxjava3.internal.observers.DeferredScalarDisposable, io.reactivex.rxjava3.disposables.f
        public void dispose() {
            super.dispose();
            this.f76415j.set(null);
        }
    }

    public u(CompletionStage<T> stage) {
        this.f76412a = stage;
    }

    @Override // io.reactivex.rxjava3.core.g0
    protected void d6(n0<? super T> observer) {
        a aVar = new a();
        b bVar = new b(observer, aVar);
        aVar.lazySet(bVar);
        observer.onSubscribe(bVar);
        this.f76412a.whenComplete(aVar);
    }
}
