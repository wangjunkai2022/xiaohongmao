package kotlinx.coroutines;

import io.sentry.h4;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.a1;

/* compiled from: Executors.kt */
@Metadata(bv = {}, d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010%\u001a\u00020 ¢\u0006\u0004\b&\u0010'J.\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000b*\u00020\u00032\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002J\u0018\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0002J\u001c\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\b\u001a\u00020\u00072\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016J\u001e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012H\u0016J$\u0010\u0016\u001a\u00020\u00152\u0006\u0010\n\u001a\u00020\t2\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0016J\b\u0010\u0017\u001a\u00020\u000fH\u0016J\b\u0010\u0019\u001a\u00020\u0018H\u0016J\u0013\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0002J\b\u0010\u001f\u001a\u00020\u001eH\u0016R\u001a\u0010%\u001a\u00020 8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$¨\u0006("}, d2 = {"Lkotlinx/coroutines/w1;", "Lkotlinx/coroutines/v1;", "Lkotlinx/coroutines/a1;", "Ljava/util/concurrent/ScheduledExecutorService;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "", "timeMillis", "Ljava/util/concurrent/ScheduledFuture;", "r0", "Ljava/util/concurrent/RejectedExecutionException;", h4.b.f83287e, "", "q0", "dispatch", "Lkotlinx/coroutines/q;", "continuation", "r", "Lkotlinx/coroutines/l1;", "I", "close", "", "toString", "", "other", "", "equals", "", "hashCode", "Ljava/util/concurrent/Executor;", "b", "Ljava/util/concurrent/Executor;", "p0", "()Ljava/util/concurrent/Executor;", "executor", "<init>", "(Ljava/util/concurrent/Executor;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class w1 extends v1 implements a1 {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Executor f86855b;

    public w1(@m8.g Executor executor) {
        this.f86855b = executor;
        kotlinx.coroutines.internal.f.c(p0());
    }

    private final void q0(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        m2.f(coroutineContext, u1.a("The task was rejected", rejectedExecutionException));
    }

    private final ScheduledFuture<?> r0(ScheduledExecutorService scheduledExecutorService, Runnable runnable, CoroutineContext coroutineContext, long j4) {
        try {
            return scheduledExecutorService.schedule(runnable, j4, TimeUnit.MILLISECONDS);
        } catch (RejectedExecutionException e4) {
            q0(coroutineContext, e4);
            return null;
        }
    }

    @Override // kotlinx.coroutines.a1
    @m8.g
    public l1 I(long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext) {
        Executor p02 = p0();
        ScheduledExecutorService scheduledExecutorService = p02 instanceof ScheduledExecutorService ? (ScheduledExecutorService) p02 : null;
        ScheduledFuture<?> r02 = scheduledExecutorService != null ? r0(scheduledExecutorService, runnable, coroutineContext, j4) : null;
        if (r02 != null) {
            return new k1(r02);
        }
        return w0.f86846f.I(j4, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor p02 = p0();
        ExecutorService executorService = p02 instanceof ExecutorService ? (ExecutorService) p02 : null;
        if (executorService == null) {
            return;
        }
        executorService.shutdown();
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000f, code lost:
        if (r1 == null) goto L5;
     */
    @Override // kotlinx.coroutines.n0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void dispatch(@m8.g kotlin.coroutines.CoroutineContext r3, @m8.g java.lang.Runnable r4) {
        /*
            r2 = this;
            java.util.concurrent.Executor r0 = r2.p0()     // Catch: java.util.concurrent.RejectedExecutionException -> L16
            kotlinx.coroutines.b r1 = kotlinx.coroutines.c.b()     // Catch: java.util.concurrent.RejectedExecutionException -> L16
            if (r1 != 0) goto Lb
            goto L11
        Lb:
            java.lang.Runnable r1 = r1.i(r4)     // Catch: java.util.concurrent.RejectedExecutionException -> L16
            if (r1 != 0) goto L12
        L11:
            r1 = r4
        L12:
            r0.execute(r1)     // Catch: java.util.concurrent.RejectedExecutionException -> L16
            goto L2b
        L16:
            r0 = move-exception
            kotlinx.coroutines.b r1 = kotlinx.coroutines.c.b()
            if (r1 != 0) goto L1e
            goto L21
        L1e:
            r1.f()
        L21:
            r2.q0(r3, r0)
            kotlinx.coroutines.n0 r0 = kotlinx.coroutines.i1.c()
            r0.dispatch(r3, r4)
        L2b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.w1.dispatch(kotlin.coroutines.CoroutineContext, java.lang.Runnable):void");
    }

    public boolean equals(@m8.h Object obj) {
        return (obj instanceof w1) && ((w1) obj).p0() == p0();
    }

    @Override // kotlinx.coroutines.a1
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @m8.h
    public Object g0(long j4, @m8.g Continuation<? super Unit> continuation) {
        return a1.a.a(this, j4, continuation);
    }

    public int hashCode() {
        return System.identityHashCode(p0());
    }

    @Override // kotlinx.coroutines.v1
    @m8.g
    public Executor p0() {
        return this.f86855b;
    }

    @Override // kotlinx.coroutines.a1
    public void r(long j4, @m8.g q<? super Unit> qVar) {
        Executor p02 = p0();
        ScheduledExecutorService scheduledExecutorService = p02 instanceof ScheduledExecutorService ? (ScheduledExecutorService) p02 : null;
        ScheduledFuture<?> r02 = scheduledExecutorService != null ? r0(scheduledExecutorService, new e3(this, qVar), qVar.getContext(), j4) : null;
        if (r02 != null) {
            m2.w(qVar, r02);
        } else {
            w0.f86846f.r(j4, qVar);
        }
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        return p0().toString();
    }
}
