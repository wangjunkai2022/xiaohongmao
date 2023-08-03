package kotlinx.coroutines.scheduling;

import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.v1;

/* compiled from: Dispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0010\u0018\u00002\u00020\u0001B/\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0019\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0019\u0012\b\b\u0002\u0010!\u001a\u00020\u0014\u0012\b\b\u0002\u0010%\u001a\u00020\"¢\u0006\u0004\b-\u0010.J\b\u0010\u0003\u001a\u00020\u0002H\u0002J\u001c\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u001c\u0010\u000b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\n\u0010\b\u001a\u00060\u0006j\u0002`\u0007H\u0016J+\u0010\u000f\u001a\u00020\t2\n\u0010\b\u001a\u00060\u0006j\u0002`\u00072\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\rH\u0000¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0011\u001a\u00020\tH\u0016J\u000f\u0010\u0012\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\t2\u0006\u0010\u0015\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0018\u0010\u0013R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001bR\u0014\u0010!\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010(\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010,\u001a\u00020)8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u0006/"}, d2 = {"Lkotlinx/coroutines/scheduling/h;", "Lkotlinx/coroutines/v1;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "q0", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "dispatchYield", "Lkotlinx/coroutines/scheduling/k;", "", "tailDispatch", "r0", "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;Z)V", "close", "u0", "()V", "", "timeout", "t0", "(J)V", "s0", "", "b", "I", "corePoolSize", "c", "maxPoolSize", "d", "J", "idleWorkerKeepAliveNs", "", "e", "Ljava/lang/String;", "schedulerName", "f", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "coroutineScheduler", "Ljava/util/concurrent/Executor;", "p0", "()Ljava/util/concurrent/Executor;", "executor", "<init>", "(IIJLjava/lang/String;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public class h extends v1 {

    /* renamed from: b  reason: collision with root package name */
    private final int f86680b;

    /* renamed from: c  reason: collision with root package name */
    private final int f86681c;

    /* renamed from: d  reason: collision with root package name */
    private final long f86682d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final String f86683e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private CoroutineScheduler f86684f;

    public h() {
        this(0, 0, 0L, null, 15, null);
    }

    public /* synthetic */ h(int i4, int i10, long j4, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? n.f86691c : i4, (i11 & 2) != 0 ? n.f86692d : i10, (i11 & 4) != 0 ? n.f86693e : j4, (i11 & 8) != 0 ? "CoroutineScheduler" : str);
    }

    private final CoroutineScheduler q0() {
        return new CoroutineScheduler(this.f86680b, this.f86681c, this.f86682d, this.f86683e);
    }

    @Override // kotlinx.coroutines.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f86684f.close();
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        CoroutineScheduler.A(this.f86684f, runnable, null, false, 6, null);
    }

    @Override // kotlinx.coroutines.n0
    public void dispatchYield(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        CoroutineScheduler.A(this.f86684f, runnable, null, true, 2, null);
    }

    @Override // kotlinx.coroutines.v1
    @m8.g
    public Executor p0() {
        return this.f86684f;
    }

    public final void r0(@m8.g Runnable runnable, @m8.g k kVar, boolean z9) {
        this.f86684f.y(runnable, kVar, z9);
    }

    public final void s0() {
        u0();
    }

    public final synchronized void t0(long j4) {
        this.f86684f.X(j4);
    }

    public final synchronized void u0() {
        this.f86684f.X(1000L);
        this.f86684f = q0();
    }

    public h(int i4, int i10, long j4, @m8.g String str) {
        this.f86680b = i4;
        this.f86681c = i10;
        this.f86682d = j4;
        this.f86683e = str;
        this.f86684f = q0();
    }
}
