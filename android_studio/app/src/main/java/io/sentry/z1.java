package io.sentry;

import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;

/* compiled from: NoOpSentryExecutorService.java */
/* loaded from: classes4.dex */
final class z1 implements t0 {

    /* renamed from: a  reason: collision with root package name */
    private static final z1 f84207a = new z1();

    private z1() {
    }

    @m8.g
    public static t0 f() {
        return f84207a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object g() throws Exception {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object h() throws Exception {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object i() throws Exception {
        return null;
    }

    @Override // io.sentry.t0
    public void a(long j4) {
    }

    @Override // io.sentry.t0
    @m8.g
    public Future<?> b(@m8.g Runnable runnable, long j4) {
        return new FutureTask(w1.f84180a);
    }

    @Override // io.sentry.t0
    @m8.g
    public Future<?> submit(@m8.g Runnable runnable) {
        return new FutureTask(y1.f84202a);
    }

    @Override // io.sentry.t0
    @m8.g
    public <T> Future<T> submit(@m8.g Callable<T> callable) {
        return new FutureTask(x1.f84197a);
    }
}
