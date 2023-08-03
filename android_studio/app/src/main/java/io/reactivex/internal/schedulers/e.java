package io.reactivex.internal.schedulers;

import io.reactivex.h0;
import java.util.concurrent.TimeUnit;

/* compiled from: ImmediateThinScheduler.java */
/* loaded from: classes4.dex */
public final class e extends h0 {

    /* renamed from: c  reason: collision with root package name */
    public static final h0 f75679c = new e();

    /* renamed from: d  reason: collision with root package name */
    static final h0.c f75680d = new a();

    /* renamed from: e  reason: collision with root package name */
    static final io.reactivex.disposables.c f75681e;

    /* compiled from: ImmediateThinScheduler.java */
    /* loaded from: classes4.dex */
    static final class a extends h0.c {
        a() {
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c b(@m7.e Runnable runnable) {
            runnable.run();
            return e.f75681e;
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c c(@m7.e Runnable runnable, long j4, @m7.e TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
        }

        @Override // io.reactivex.h0.c
        @m7.e
        public io.reactivex.disposables.c d(@m7.e Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
            throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
        }

        @Override // io.reactivex.disposables.c
        public void dispose() {
        }

        @Override // io.reactivex.disposables.c
        public boolean isDisposed() {
            return false;
        }
    }

    static {
        io.reactivex.disposables.c b10 = io.reactivex.disposables.d.b();
        f75681e = b10;
        b10.dispose();
    }

    private e() {
    }

    @Override // io.reactivex.h0
    @m7.e
    public h0.c d() {
        return f75680d;
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c f(@m7.e Runnable runnable) {
        runnable.run();
        return f75681e;
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c g(@m7.e Runnable runnable, long j4, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support delayed execution");
    }

    @Override // io.reactivex.h0
    @m7.e
    public io.reactivex.disposables.c h(@m7.e Runnable runnable, long j4, long j10, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("This scheduler doesn't support periodic execution");
    }
}
