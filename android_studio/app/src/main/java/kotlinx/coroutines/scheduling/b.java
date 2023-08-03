package kotlinx.coroutines.scheduling;

import com.ksyun.media.streamer.logstats.StatsConstant;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.internal.r0;
import kotlinx.coroutines.internal.t0;
import kotlinx.coroutines.j1;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.y1;

/* compiled from: Dispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\bÀ\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0016J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0017J\u001c\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\u000e\u001a\u00060\u0003j\u0002`\rH\u0016J\u001c\u0010\u0010\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u000b2\n\u0010\u000e\u001a\u00060\u0003j\u0002`\rH\u0017J\b\u0010\u0011\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u0012H\u0016R\u0014\u0010\u0016\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0019\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Lkotlinx/coroutines/scheduling/b;", "Lkotlinx/coroutines/v1;", "Ljava/util/concurrent/Executor;", "Ljava/lang/Runnable;", "command", "", "execute", "", "parallelism", "Lkotlinx/coroutines/n0;", "limitedParallelism", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/Runnable;", "block", "dispatch", "dispatchYield", "close", "", "toString", "c", "Lkotlinx/coroutines/n0;", StatsConstant.BW_EST_STRATEGY_NORMAL, "p0", "()Ljava/util/concurrent/Executor;", "executor", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b extends v1 implements Executor {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    public static final b f86665b = new b();
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final n0 f86666c;

    static {
        int coerceAtLeast;
        int d4;
        o oVar = o.f86699a;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(64, r0.a());
        d4 = t0.d(j1.f86330a, coerceAtLeast, 0, 0, 12, null);
        f86666c = oVar.limitedParallelism(d4);
    }

    private b() {
    }

    @Override // kotlinx.coroutines.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        f86666c.dispatch(coroutineContext, runnable);
    }

    @Override // kotlinx.coroutines.n0
    @e2
    public void dispatchYield(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        f86666c.dispatchYield(coroutineContext, runnable);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@m8.g Runnable runnable) {
        dispatch(EmptyCoroutineContext.INSTANCE, runnable);
    }

    @Override // kotlinx.coroutines.n0
    @y1
    @m8.g
    public n0 limitedParallelism(int i4) {
        return o.f86699a.limitedParallelism(i4);
    }

    @Override // kotlinx.coroutines.v1
    @m8.g
    public Executor p0() {
        return this;
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        return "Dispatchers.IO";
    }
}
