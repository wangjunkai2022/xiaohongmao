package io.reactivex.rxjava3.internal.schedulers;

import io.reactivex.rxjava3.core.o0;
import java.util.concurrent.TimeUnit;

/* compiled from: ImmediateThinScheduler.java */
/* loaded from: classes4.dex */
public final class e extends o0 {

    /* renamed from: b  reason: collision with root package name */
    public static final o0 f81096b = new e();

    /* renamed from: c  reason: collision with root package name */
    static final o0.c f81097c = new a();

    /* renamed from: d  reason: collision with root package name */
    static final io.reactivex.rxjava3.disposables.f f81098d;

    /* compiled from: ImmediateThinScheduler.java */
    /* loaded from: classes4.dex */
    static final class a extends o0.c {
        a() {
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f b(@p7.e Runnable run) {
            run.run();
            return e.f81098d;
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f c(@p7.e Runnable run, long delay, @p7.e TimeUnit unit) {
            throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
        }

        @Override // io.reactivex.rxjava3.core.o0.c
        @p7.e
        public io.reactivex.rxjava3.disposables.f d(@p7.e Runnable run, long initialDelay, long period, TimeUnit unit) {
            throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public void dispose() {
        }

        @Override // io.reactivex.rxjava3.disposables.f
        public boolean isDisposed() {
            return false;
        }
    }

    static {
        io.reactivex.rxjava3.disposables.f b10 = io.reactivex.rxjava3.disposables.e.b();
        f81098d = b10;
        b10.dispose();
    }

    private e() {
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public o0.c d() {
        return f81097c;
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f f(@p7.e Runnable run) {
        run.run();
        return f81098d;
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f g(@p7.e Runnable run, long delay, TimeUnit unit) {
        throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
    }

    @Override // io.reactivex.rxjava3.core.o0
    @p7.e
    public io.reactivex.rxjava3.disposables.f h(@p7.e Runnable run, long initialDelay, long period, TimeUnit unit) {
        throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
    }
}
