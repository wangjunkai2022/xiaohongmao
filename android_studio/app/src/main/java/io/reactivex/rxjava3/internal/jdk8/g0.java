package io.reactivex.rxjava3.internal.jdk8;

import io.reactivex.rxjava3.core.p0;
import io.reactivex.rxjava3.core.s0;
import io.reactivex.rxjava3.internal.jdk8.g;
import java.util.concurrent.CompletionStage;
import java.util.function.BiConsumer;

/* compiled from: SingleFromCompletionStage.java */
/* loaded from: classes4.dex */
public final class g0<T> extends p0<T> {

    /* renamed from: a  reason: collision with root package name */
    final CompletionStage<T> f76326a;

    /* compiled from: SingleFromCompletionStage.java */
    /* loaded from: classes4.dex */
    static final class a<T> implements io.reactivex.rxjava3.disposables.f, BiConsumer<T, Throwable> {

        /* renamed from: a  reason: collision with root package name */
        final s0<? super T> f76327a;

        /* renamed from: b  reason: collision with root package name */
        final g.a<T> f76328b;

        a(s0<? super T> downstream, g.a<T> whenReference) {
            this.f76327a = downstream;
            this.f76328b = whenReference;
        }

        @Override // java.util.function.BiConsumer
        /* renamed from: a */
        public void accept(T item, Throwable error) {
            if (error != null) {
                this.f76327a.onError(error);
            } else if (item != null) {
                this.f76327a.onSuccess(item);
            } else {
                this.f76327a.onError(new NullPointerException("The CompletionStage terminated with null."));
            }
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
            this.f76328b.set(null);
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return this.f76328b.get() == null;
        }
    }

    public g0(CompletionStage<T> stage) {
        this.f76326a = stage;
    }

    @Override // io.reactivex.rxjava3.core.p0
    protected void M1(s0<? super T> observer) {
        g.a aVar = new g.a();
        a aVar2 = new a(observer, aVar);
        aVar.lazySet(aVar2);
        observer.onSubscribe(aVar2);
        this.f76326a.whenComplete(aVar);
    }
}
