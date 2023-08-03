package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiConsumer;

/* compiled from: FlowableFromCompletionStage.java */
/* loaded from: classes4.dex */
public final class g<T> extends io.reactivex.rxjava3.core.m<T> {

    /* renamed from: b  reason: collision with root package name */
    final CompletionStage<T> f76322b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlowableFromCompletionStage.java */
    /* loaded from: classes4.dex */
    public static final class a<T> extends AtomicReference<BiConsumer<T, Throwable>> implements BiConsumer<T, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        private static final long f76323a = 45838553147237545L;

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(T t9, Throwable u9) {
            BiConsumer<T, Throwable> biConsumer = get();
            if (biConsumer != null) {
                biConsumer.accept(t9, u9);
            }
        }
    }

    /* compiled from: FlowableFromCompletionStage.java */
    /* loaded from: classes4.dex */
    static final class b<T> extends DeferredScalarSubscription<T> implements BiConsumer<T, Throwable> {

        /* renamed from: n  reason: collision with root package name */
        private static final long f76324n = 4665335664328839859L;

        /* renamed from: m  reason: collision with root package name */
        final a<T> f76325m;

        b(org.reactivestreams.d<? super T> downstream, a<T> whenReference) {
            super(downstream);
            this.f76325m = whenReference;
        }

        @Override // io.reactivex.rxjava3.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.e
        public void cancel() {
            super.cancel();
            this.f76325m.set(null);
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: j */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f81291b.onError(error);
            } else if (item != null) {
                complete(item);
            } else {
                this.f81291b.onError(new NullPointerException("The CompletionStage terminated with null."));
            }
        }
    }

    public g(CompletionStage<T> stage) {
        this.f76322b = stage;
    }

    @Override // io.reactivex.rxjava3.core.m
    protected void H6(org.reactivestreams.d<? super T> s9) {
        a aVar = new a();
        b bVar = new b(s9, aVar);
        aVar.lazySet(bVar);
        s9.onSubscribe(bVar);
        this.f76322b.whenComplete(aVar);
    }
}
