package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.w0;

/* compiled from: Deprecated.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b\u0011\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u001b\u001a\u00020\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u000f\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\b\b\u0002\u0010$\u001a\u00020\r¢\u0006\u0004\b,\u0010-B'\b\u0016\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u000f\u0012\b\b\u0002\u0010$\u001a\u00020\r¢\u0006\u0004\b,\u0010.B\u001d\b\u0017\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u000f¢\u0006\u0004\b,\u0010/J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0016J\b\u0010\f\u001a\u00020\tH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\u0010\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fJ+\u0010\u0017\u001a\u00020\t2\n\u0010\b\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0015H\u0000¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\u001aR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010$\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0014\u0010+\u001a\u00020(8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*¨\u00060"}, d2 = {"Lkotlinx/coroutines/scheduling/d;", "Lkotlinx/coroutines/v1;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "s0", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "dispatchYield", "close", "", "toString", "", "parallelism", "Lkotlinx/coroutines/n0;", "q0", "u0", "Lkotlinx/coroutines/scheduling/k;", "", "tailDispatch", "t0", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;Z)V", "b", "I", "corePoolSize", "c", "maxPoolSize", "", "d", "J", "idleWorkerKeepAliveNs", "e", "Ljava/lang/String;", "schedulerName", "f", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "coroutineScheduler", "Ljava/util/concurrent/Executor;", "p0", "()Ljava/util/concurrent/Executor;", "executor", "<init>", "(IIJLjava/lang/String;)V", "(IILjava/lang/String;)V", "(II)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@PublishedApi
/* loaded from: classes4.dex */
public class d extends v1 {

    /* renamed from: b  reason: collision with root package name */
    private final int f86668b;

    /* renamed from: c  reason: collision with root package name */
    private final int f86669c;

    /* renamed from: d  reason: collision with root package name */
    private final long f86670d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final String f86671e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private CoroutineScheduler f86672f;

    public /* synthetic */ d(int i4, int i10, long j4, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10, j4, (i11 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    public static /* synthetic */ n0 r0(d dVar, int i4, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                i4 = 16;
            }
            return dVar.q0(i4);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: blocking");
    }

    private final CoroutineScheduler s0() {
        return new CoroutineScheduler(this.f86668b, this.f86669c, this.f86670d, this.f86671e);
    }

    @Override // kotlinx.coroutines.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f86672f.close();
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        try {
            CoroutineScheduler.A(this.f86672f, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            w0.f86846f.dispatch(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.n0
    public void dispatchYield(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        try {
            CoroutineScheduler.A(this.f86672f, runnable, null, true, 2, null);
        } catch (RejectedExecutionException unused) {
            w0.f86846f.dispatchYield(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.v1
    @m8.g
    public Executor p0() {
        return this.f86672f;
    }

    @m8.g
    public final n0 q0(int i4) {
        if (i4 > 0) {
            return new f(this, i4, null, 1);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive parallelism level, but have ", Integer.valueOf(i4)).toString());
    }

    public final void t0(@m8.g Runnable runnable, @m8.g k kVar, boolean z9) {
        try {
            this.f86672f.y(runnable, kVar, z9);
        } catch (RejectedExecutionException unused) {
            w0.f86846f.I0(this.f86672f.i(runnable, kVar));
        }
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        return super.toString() + "[scheduler = " + this.f86672f + ']';
    }

    @m8.g
    public final n0 u0(int i4) {
        if (i4 > 0) {
            if (i4 <= this.f86668b) {
                return new f(this, i4, null, 0);
            }
            throw new IllegalArgumentException(("Expected parallelism level lesser than core pool size (" + this.f86668b + "), but have " + i4).toString());
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Expected positive parallelism level, but have ", Integer.valueOf(i4)).toString());
    }

    public d(int i4, int i10, long j4, @m8.g String str) {
        this.f86668b = i4;
        this.f86669c = i10;
        this.f86670d = j4;
        this.f86671e = str;
        this.f86672f = s0();
    }

    public /* synthetic */ d(int i4, int i10, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? n.f86691c : i4, (i11 & 2) != 0 ? n.f86692d : i10, (i11 & 4) != 0 ? n.f86689a : str);
    }

    public d(int i4, int i10, @m8.g String str) {
        this(i4, i10, n.f86693e, str);
    }

    public /* synthetic */ d(int i4, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? n.f86691c : i4, (i11 & 2) != 0 ? n.f86692d : i10);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Binary compatibility for Ktor 1.0-beta")
    public /* synthetic */ d(int i4, int i10) {
        this(i4, i10, n.f86693e, null, 8, null);
    }
}
