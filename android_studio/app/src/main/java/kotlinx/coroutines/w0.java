package kotlinx.coroutines;

import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.q1;

/* compiled from: DefaultExecutor.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0017\bÀ\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003B\t\b\u0002¢\u0006\u0004\b@\u0010\u001bJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\bH\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\u0014\u0010\f\u001a\u00020\u00042\n\u0010\u000b\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u0018\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014J\b\u0010\u0012\u001a\u00020\u0004H\u0016J$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\r2\n\u0010\u0014\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\b\u0010\u0019\u001a\u00020\u0004H\u0016J\u000f\u0010\u001a\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u000e\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\rR\u0014\u0010!\u001a\u00020\u001e8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020\r8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010#R\u001e\u0010'\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b'\u0010(\u0012\u0004\b)\u0010\u001bR\u0014\u0010,\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b+\u0010\u0018R\u0014\u0010.\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b-\u0010\u0018R\u0014\u00100\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b/\u0010\u0018R\u0014\u00102\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b1\u0010\u0018R\u0014\u00104\u001a\u00020*8\u0002X\u0082T¢\u0006\u0006\n\u0004\b3\u0010\u0018R\u0016\u00105\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u0010\u0018R\u0014\u00108\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R\u0014\u0010:\u001a\u00020\b8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b9\u00107R\u0014\u0010=\u001a\u00020\u00068TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u0014\u0010?\u001a\u00020\b8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b>\u00107¨\u0006A"}, d2 = {"Lkotlinx/coroutines/w0;", "Lkotlinx/coroutines/q1;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Z0", "Ljava/lang/Thread;", "S0", "", "Y0", "R0", "task", "I0", "", "now", "Lkotlinx/coroutines/q1$c;", "delayedTask", "D0", "shutdown", "timeMillis", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/l1;", "I", "run", "T0", "()V", "timeout", "a1", "", "g", "Ljava/lang/String;", "THREAD_NAME", "h", "J", "DEFAULT_KEEP_ALIVE_MS", ContextChain.TAG_INFRA, "KEEP_ALIVE_NANOS", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "", "j", "FRESH", "k", "ACTIVE", "l", "SHUTDOWN_REQ", "m", "SHUTDOWN_ACK", "n", "SHUTDOWN", "debugStatus", "V0", "()Z", "isShutDown", "W0", "isShutdownRequested", "C0", "()Ljava/lang/Thread;", "thread", "X0", "isThreadPresent", "<init>", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class w0 extends q1 implements Runnable {
    @m8.h
    private static volatile Thread _thread = null;
    private static volatile int debugStatus = 0;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public static final w0 f86846f;
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public static final String f86847g = "kotlinx.coroutines.DefaultExecutor";

    /* renamed from: h  reason: collision with root package name */
    private static final long f86848h = 1000;

    /* renamed from: i  reason: collision with root package name */
    private static final long f86849i;

    /* renamed from: j  reason: collision with root package name */
    private static final int f86850j = 0;

    /* renamed from: k  reason: collision with root package name */
    private static final int f86851k = 1;

    /* renamed from: l  reason: collision with root package name */
    private static final int f86852l = 2;

    /* renamed from: m  reason: collision with root package name */
    private static final int f86853m = 3;

    /* renamed from: n  reason: collision with root package name */
    private static final int f86854n = 4;

    static {
        Long l10;
        w0 w0Var = new w0();
        f86846f = w0Var;
        p1.v0(w0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l10 = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l10 = 1000L;
        }
        f86849i = timeUnit.toNanos(l10.longValue());
    }

    private w0() {
    }

    private final synchronized void R0() {
        if (W0()) {
            debugStatus = 3;
            L0();
            notifyAll();
        }
    }

    private final synchronized Thread S0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, f86847g);
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private static /* synthetic */ void U0() {
    }

    private final boolean V0() {
        return debugStatus == 4;
    }

    private final boolean W0() {
        int i4 = debugStatus;
        return i4 == 2 || i4 == 3;
    }

    private final synchronized boolean Y0() {
        if (W0()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    private final void Z0() {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // kotlinx.coroutines.r1
    @m8.g
    protected Thread C0() {
        Thread thread = _thread;
        return thread == null ? S0() : thread;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.r1
    public void D0(long j4, @m8.g q1.c cVar) {
        Z0();
    }

    @Override // kotlinx.coroutines.q1, kotlinx.coroutines.a1
    @m8.g
    public l1 I(long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext) {
        return O0(j4, runnable);
    }

    @Override // kotlinx.coroutines.q1
    public void I0(@m8.g Runnable runnable) {
        if (V0()) {
            Z0();
        }
        super.I0(runnable);
    }

    public final synchronized void T0() {
        debugStatus = 0;
        S0();
        while (debugStatus == 0) {
            wait();
        }
    }

    public final boolean X0() {
        return _thread != null;
    }

    public final synchronized void a1(long j4) {
        Unit unit;
        long currentTimeMillis = System.currentTimeMillis() + j4;
        if (!W0()) {
            debugStatus = 2;
        }
        while (debugStatus != 3 && _thread != null) {
            Thread thread = _thread;
            if (thread != null) {
                b b10 = c.b();
                if (b10 == null) {
                    unit = null;
                } else {
                    b10.g(thread);
                    unit = Unit.INSTANCE;
                }
                if (unit == null) {
                    LockSupport.unpark(thread);
                }
            }
            if (currentTimeMillis - System.currentTimeMillis() <= 0) {
                break;
            }
            wait(j4);
        }
        debugStatus = 0;
    }

    @Override // java.lang.Runnable
    public void run() {
        Unit unit;
        boolean w02;
        p3.f86355a.d(this);
        b b10 = c.b();
        if (b10 != null) {
            b10.d();
        }
        try {
            if (!Y0()) {
                if (w02) {
                    return;
                }
                return;
            }
            long j4 = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long z02 = z0();
                if (z02 == Long.MAX_VALUE) {
                    b b11 = c.b();
                    Long valueOf = b11 == null ? null : Long.valueOf(b11.b());
                    long nanoTime = valueOf == null ? System.nanoTime() : valueOf.longValue();
                    if (j4 == Long.MAX_VALUE) {
                        j4 = f86849i + nanoTime;
                    }
                    long j10 = j4 - nanoTime;
                    if (j10 <= 0) {
                        _thread = null;
                        R0();
                        b b12 = c.b();
                        if (b12 != null) {
                            b12.h();
                        }
                        if (w0()) {
                            return;
                        }
                        C0();
                        return;
                    }
                    z02 = RangesKt___RangesKt.coerceAtMost(z02, j10);
                } else {
                    j4 = Long.MAX_VALUE;
                }
                if (z02 > 0) {
                    if (W0()) {
                        _thread = null;
                        R0();
                        b b13 = c.b();
                        if (b13 != null) {
                            b13.h();
                        }
                        if (w0()) {
                            return;
                        }
                        C0();
                        return;
                    }
                    b b14 = c.b();
                    if (b14 == null) {
                        unit = null;
                    } else {
                        b14.c(this, z02);
                        unit = Unit.INSTANCE;
                    }
                    if (unit == null) {
                        LockSupport.parkNanos(this, z02);
                    }
                }
            }
        } finally {
            _thread = null;
            R0();
            b b15 = c.b();
            if (b15 != null) {
                b15.h();
            }
            if (!w0()) {
                C0();
            }
        }
    }

    @Override // kotlinx.coroutines.q1, kotlinx.coroutines.p1
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }
}
