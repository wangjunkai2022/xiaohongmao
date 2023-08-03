package io.reactivex.disposables;

import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.Future;

/* compiled from: Disposables.java */
/* loaded from: classes3.dex */
public final class d {
    private d() {
        throw new IllegalStateException("No instances!");
    }

    @m7.e
    public static c a() {
        return EmptyDisposable.INSTANCE;
    }

    @m7.e
    public static c b() {
        return f(io.reactivex.internal.functions.a.f71128b);
    }

    @m7.e
    public static c c(@m7.e n7.a aVar) {
        io.reactivex.internal.functions.b.g(aVar, "run is null");
        return new a(aVar);
    }

    @m7.e
    public static c d(@m7.e Future<?> future) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        return e(future, true);
    }

    @m7.e
    public static c e(@m7.e Future<?> future, boolean z9) {
        io.reactivex.internal.functions.b.g(future, "future is null");
        return new e(future, z9);
    }

    @m7.e
    public static c f(@m7.e Runnable runnable) {
        io.reactivex.internal.functions.b.g(runnable, "run is null");
        return new g(runnable);
    }

    @m7.e
    public static c g(@m7.e org.reactivestreams.e eVar) {
        io.reactivex.internal.functions.b.g(eVar, "subscription is null");
        return new i(eVar);
    }
}
