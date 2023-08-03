package kotlinx.coroutines.internal;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.l1;
import kotlinx.coroutines.y1;

/* compiled from: LimitedDispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u00032\u00020\u0004B\u0017\u0012\u0006\u0010 \u001a\u00020\u0001\u0012\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b,\u0010-J#\u0010\t\u001a\u00020\u00072\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0082\bJ\b\u0010\u000b\u001a\u00020\nH\u0002J\u0014\u0010\f\u001a\u00020\n2\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0002J\u001b\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\rH\u0097Aø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\r2\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0096\u0001J\u001f\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\r2\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u0016H\u0096\u0001J\u0010\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u001a\u001a\u00020\u0019H\u0017J\b\u0010\u001c\u001a\u00020\u0007H\u0016J\u001c\u0010\b\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0016J\u001c\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\n\u0010\u0005\u001a\u00060\u0002j\u0002`\u0003H\u0017R\u0014\u0010 \u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010\u001a\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\u0015R\u0016\u0010\"\u001a\u00020\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010\u0015R\u001e\u0010&\u001a\f\u0012\b\u0012\u00060\u0002j\u0002`\u00030#8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010+\u001a\u00060'j\u0002`(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006."}, d2 = {"Lkotlinx/coroutines/internal/r;", "Lkotlinx/coroutines/n0;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "Lkotlinx/coroutines/a1;", "block", "Lkotlin/Function0;", "", "dispatch", "q0", "", "r0", "p0", "", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "g0", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "timeMillis", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/l1;", "I", "Lkotlinx/coroutines/q;", "continuation", "r", "", "parallelism", "limitedParallelism", "run", "dispatchYield", "a", "Lkotlinx/coroutines/n0;", "dispatcher", "b", "runningWorkers", "Lkotlinx/coroutines/internal/z;", "d", "Lkotlinx/coroutines/internal/z;", "queue", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "e", "Ljava/lang/Object;", "workerAllocationLock", "<init>", "(Lkotlinx/coroutines/n0;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class r extends kotlinx.coroutines.n0 implements Runnable, kotlinx.coroutines.a1 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final kotlinx.coroutines.n0 f86289a;

    /* renamed from: b  reason: collision with root package name */
    private final int f86290b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ kotlinx.coroutines.a1 f86291c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final z<Runnable> f86292d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final Object f86293e;
    private volatile int runningWorkers;

    public r(@m8.g kotlinx.coroutines.n0 n0Var, int i4) {
        this.f86289a = n0Var;
        this.f86290b = i4;
        kotlinx.coroutines.a1 a1Var = n0Var instanceof kotlinx.coroutines.a1 ? (kotlinx.coroutines.a1) n0Var : null;
        this.f86291c = a1Var == null ? kotlinx.coroutines.x0.a() : a1Var;
        this.f86292d = new z<>(false);
        this.f86293e = new Object();
    }

    private final boolean p0(Runnable runnable) {
        this.f86292d.a(runnable);
        return this.runningWorkers >= this.f86290b;
    }

    private final void q0(Runnable runnable, Function0<Unit> function0) {
        if (!p0(runnable) && r0()) {
            function0.invoke();
        }
    }

    private final boolean r0() {
        synchronized (this.f86293e) {
            if (this.runningWorkers >= this.f86290b) {
                return false;
            }
            this.runningWorkers++;
            return true;
        }
    }

    @Override // kotlinx.coroutines.a1
    @m8.g
    public l1 I(long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext) {
        return this.f86291c.I(j4, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        if (!p0(runnable) && r0()) {
            this.f86289a.dispatch(this, this);
        }
    }

    @Override // kotlinx.coroutines.n0
    @e2
    public void dispatchYield(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        if (!p0(runnable) && r0()) {
            this.f86289a.dispatchYield(this, this);
        }
    }

    @Override // kotlinx.coroutines.a1
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @m8.h
    public Object g0(long j4, @m8.g Continuation<? super Unit> continuation) {
        return this.f86291c.g0(j4, continuation);
    }

    @Override // kotlinx.coroutines.n0
    @y1
    @m8.g
    public kotlinx.coroutines.n0 limitedParallelism(int i4) {
        s.a(i4);
        return i4 >= this.f86290b ? this : super.limitedParallelism(i4);
    }

    @Override // kotlinx.coroutines.a1
    public void r(long j4, @m8.g kotlinx.coroutines.q<? super Unit> qVar) {
        this.f86291c.r(j4, qVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
        r1 = r4.f86293e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
        monitor-enter(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
        r4.runningWorkers--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
        if (r4.f86292d.c() != 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
        monitor-exit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
        r4.runningWorkers++;
        r2 = kotlin.Unit.INSTANCE;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void run() {
        /*
            r4 = this;
            r0 = 0
        L1:
            r1 = 0
        L2:
            kotlinx.coroutines.internal.z<java.lang.Runnable> r2 = r4.f86292d
            java.lang.Object r2 = r2.g()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            if (r2 == 0) goto L2a
            r2.run()     // Catch: java.lang.Throwable -> L10
            goto L16
        L10:
            r2 = move-exception
            kotlin.coroutines.EmptyCoroutineContext r3 = kotlin.coroutines.EmptyCoroutineContext.INSTANCE
            kotlinx.coroutines.p0.b(r3, r2)
        L16:
            int r1 = r1 + 1
            r2 = 16
            if (r1 < r2) goto L2
            kotlinx.coroutines.n0 r2 = r4.f86289a
            boolean r2 = r2.isDispatchNeeded(r4)
            if (r2 == 0) goto L2
            kotlinx.coroutines.n0 r0 = r4.f86289a
            r0.dispatch(r4, r4)
            return
        L2a:
            java.lang.Object r1 = r4.f86293e
            monitor-enter(r1)
            int r2 = r4.runningWorkers     // Catch: java.lang.Throwable -> L47
            int r2 = r2 + (-1)
            r4.runningWorkers = r2     // Catch: java.lang.Throwable -> L47
            kotlinx.coroutines.internal.z<java.lang.Runnable> r2 = r4.f86292d     // Catch: java.lang.Throwable -> L47
            int r2 = r2.c()     // Catch: java.lang.Throwable -> L47
            if (r2 != 0) goto L3d
            monitor-exit(r1)
            return
        L3d:
            int r2 = r4.runningWorkers     // Catch: java.lang.Throwable -> L47
            int r2 = r2 + 1
            r4.runningWorkers = r2     // Catch: java.lang.Throwable -> L47
            kotlin.Unit r2 = kotlin.Unit.INSTANCE     // Catch: java.lang.Throwable -> L47
            monitor-exit(r1)
            goto L1
        L47:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.r.run():void");
    }
}
