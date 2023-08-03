package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.internal.jdk8.g;
import java.util.concurrent.CompletionStage;
import java.util.function.BiConsumer;

/* compiled from: MaybeFromCompletionStage.java */
/* loaded from: classes4.dex */
public final class o<T> extends io.reactivex.rxjava3.core.v<T> {

    /* renamed from: a  reason: collision with root package name */
    final CompletionStage<T> f76378a;

    /* compiled from: MaybeFromCompletionStage.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.disposables.f, BiConsumer<T, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.rxjava3.core.y<? super T> f76379a;

        /* renamed from: b  reason: collision with root package name */
        final g.a<T> f76380b;

        a(io.reactivex.rxjava3.core.y<? super T> downstream, g.a<T> whenReference) {
            this.f76379a = downstream;
            this.f76380b = whenReference;
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f76379a.onError(error);
            } else if (item != null) {
                this.f76379a.onSuccess(item);
            } else {
                this.f76379a.onComplete();
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76380b.set(null);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76380b.get() == null;
        }
    }

    public o(CompletionStage<T> stage) {
        this.f76378a = stage;
    }

    @Override // io.reactivex.rxjava3.core.v
    protected void U1(io.reactivex.rxjava3.core.y<? super T> observer) {
        g.a aVar = new g.a();
        a aVar2 = new a(observer, aVar);
        aVar.lazySet(aVar2);
        observer.onSubscribe(aVar2);
        this.f76378a.whenComplete(aVar);
    }
}
