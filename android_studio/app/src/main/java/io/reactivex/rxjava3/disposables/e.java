package io.reactivex.rxjava3.disposables;

import io.reactivex.rxjava3.internal.disposables.EmptyDisposable;
import java.util.Objects;
import java.util.concurrent.Future;

/* compiled from: Disposable.java */
/* loaded from: classes4.dex */
public final /* synthetic */ class e {
    @p7.e
    public static f a() {
        return EmptyDisposable.INSTANCE;
    }

    @p7.e
    public static f b() {
        return g(io.reactivex.rxjava3.internal.functions.a.f76181b);
    }

    @p7.e
    public static f c(@p7.e q7.a action) {
        Objects.requireNonNull(action, "action is null");
        return new a(action);
    }

    @p7.e
    public static f d(@p7.e AutoCloseable autoCloseable) {
        Objects.requireNonNull(autoCloseable, "autoCloseable is null");
        return new b(autoCloseable);
    }

    @p7.e
    public static f e(@p7.e Future<?> future) {
        Objects.requireNonNull(future, "future is null");
        return f(future, true);
    }

    @p7.e
    public static f f(@p7.e Future<?> future, boolean allowInterrupt) {
        Objects.requireNonNull(future, "future is null");
        return new h(future, allowInterrupt);
    }

    @p7.e
    public static f g(@p7.e Runnable run) {
        Objects.requireNonNull(run, "run is null");
        return new j(run);
    }

    @p7.e
    public static f h(@p7.e org.reactivestreams.e subscription) {
        Objects.requireNonNull(subscription, "subscription is null");
        return new l(subscription);
    }

    @p7.e
    public static AutoCloseable i(@p7.e final f disposable) {
        Objects.requireNonNull(disposable, "disposable is null");
        return new AutoCloseable() { // from class: io.reactivex.rxjava3.disposables.d
            public final void a() {
                f.this.dispose();
            }
        };
    }
}
