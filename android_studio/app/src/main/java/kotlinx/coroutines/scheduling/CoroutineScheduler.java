package kotlinx.coroutines.scheduling;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import io.sentry.protocol.t;
import io.sentry.protocol.y;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.k0;
import kotlinx.coroutines.internal.p0;
import kotlinx.coroutines.v0;

/* compiled from: CoroutineScheduler.kt */
@Metadata(bv = {}, d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\b\u0000\u0018\u0000 %2\u00020\u00012\u00020\u0002:\u0003\u0006I^B+\u0012\u0006\u0010G\u001a\u00020\f\u0012\u0006\u0010H\u001a\u00020\f\u0012\b\b\u0002\u0010J\u001a\u00020\u000f\u0012\b\b\u0002\u0010L\u001a\u00020B¢\u0006\u0004\b\\\u0010]J\u0017\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\t\u001a\b\u0018\u00010\bR\u00020\u0000H\u0002¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\r\u001a\u00020\f2\n\u0010\u000b\u001a\u00060\bR\u00020\u0000H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u0013\u0010\u0012J\u0010\u0010\u0014\u001a\u00020\fH\u0082\b¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\fH\u0082\b¢\u0006\u0004\b\u0016\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u001a\u001a\u00020\u0019H\u0082\b¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0005H\u0082\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u000fH\u0082\b¢\u0006\u0004\b\u001e\u0010\u0018J\u0017\u0010 \u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b \u0010!J\u0019\u0010\"\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0005H\u0002¢\u0006\u0004\b$\u0010\u001dJ\u000f\u0010%\u001a\u00020\fH\u0002¢\u0006\u0004\b%\u0010\u0015J+\u0010'\u001a\u0004\u0018\u00010\u0003*\b\u0018\u00010\bR\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010(J\u0015\u0010)\u001a\b\u0018\u00010\bR\u00020\u0000H\u0002¢\u0006\u0004\b)\u0010\nJ)\u0010,\u001a\u00020\u00192\n\u0010\u000b\u001a\u00060\bR\u00020\u00002\u0006\u0010*\u001a\u00020\f2\u0006\u0010+\u001a\u00020\f¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\u00052\n\u0010\u000b\u001a\u00060\bR\u00020\u0000¢\u0006\u0004\b.\u0010/J\u0018\u00100\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0086\b¢\u0006\u0004\b0\u0010\u0012J\u001b\u00104\u001a\u00020\u00192\n\u00103\u001a\u000601j\u0002`2H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0019H\u0016¢\u0006\u0004\b6\u0010\u001bJ\u0015\u00108\u001a\u00020\u00192\u0006\u00107\u001a\u00020\u000f¢\u0006\u0004\b8\u00109J-\u0010=\u001a\u00020\u00192\n\u0010:\u001a\u000601j\u0002`22\b\b\u0002\u0010<\u001a\u00020;2\b\b\u0002\u0010&\u001a\u00020\u0005¢\u0006\u0004\b=\u0010>J!\u0010?\u001a\u00020\u00032\n\u0010:\u001a\u000601j\u0002`22\u0006\u0010<\u001a\u00020;¢\u0006\u0004\b?\u0010@J\r\u0010A\u001a\u00020\u0019¢\u0006\u0004\bA\u0010\u001bJ\u000f\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bC\u0010DJ\u0015\u0010E\u001a\u00020\u00192\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\bE\u0010FR\u0014\u0010G\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\rR\u0014\u0010H\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u0010\rR\u0014\u0010J\u001a\u00020\u000f8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bI\u0010\tR\u0014\u0010L\u001a\u00020B8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010KR\u0014\u0010P\u001a\u00020M8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bN\u0010OR\u0014\u0010R\u001a\u00020M8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bQ\u0010OR\u001e\u0010V\u001a\f\u0012\b\u0012\u00060\bR\u00020\u00000S8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bT\u0010UR\u0015\u0010X\u001a\u00020\f8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bW\u0010\u0015R\u0015\u0010Z\u001a\u00020\f8Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bY\u0010\u0015R\u0011\u0010[\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b[\u0010\u001d¨\u0006_"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "Lkotlinx/coroutines/scheduling/j;", "task", "", "a", "(Lkotlinx/coroutines/scheduling/j;)Z", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;", "J", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;", "worker", "", "I", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;)I", "", t.b.f83859d, "p", "(J)I", "d", "H", "()I", "s", "G", "()J", "", "r", "()V", "h0", "()Z", "M", "skipUnpark", "b0", "(Z)V", "l0", "(J)Z", "p0", "h", "tailDispatch", "g0", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;Lkotlinx/coroutines/scheduling/j;Z)Lkotlinx/coroutines/scheduling/j;", "q", "oldIndex", "newIndex", "L", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;II)V", "K", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;)Z", "b", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "command", "execute", "(Ljava/lang/Runnable;)V", "close", "timeout", "X", "(J)V", "block", "Lkotlinx/coroutines/scheduling/k;", "taskContext", y.b.f83920h, "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;Z)V", ContextChain.TAG_INFRA, "(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/k;)Lkotlinx/coroutines/scheduling/j;", "d0", "", "toString", "()Ljava/lang/String;", ExifInterface.LONGITUDE_WEST, "(Lkotlinx/coroutines/scheduling/j;)V", "corePoolSize", "maxPoolSize", "c", "idleWorkerKeepAliveNs", "Ljava/lang/String;", "schedulerName", "Lkotlinx/coroutines/scheduling/e;", "e", "Lkotlinx/coroutines/scheduling/e;", "globalCpuQueue", "f", "globalBlockingQueue", "Lkotlinx/coroutines/internal/k0;", "g", "Lkotlinx/coroutines/internal/k0;", "workers", ExifInterface.LONGITUDE_EAST, "createdWorkers", "D", "availableCpuPermits", "isTerminated", "<init>", "(IIJLjava/lang/String;)V", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class CoroutineScheduler implements Executor, Closeable {

    /* renamed from: m  reason: collision with root package name */
    private static final int f86636m = -1;

    /* renamed from: n  reason: collision with root package name */
    private static final int f86637n = 0;

    /* renamed from: o  reason: collision with root package name */
    private static final int f86638o = 1;

    /* renamed from: p  reason: collision with root package name */
    private static final int f86639p = 21;

    /* renamed from: q  reason: collision with root package name */
    private static final long f86640q = 2097151;

    /* renamed from: r  reason: collision with root package name */
    private static final long f86641r = 4398044413952L;

    /* renamed from: s  reason: collision with root package name */
    private static final int f86642s = 42;

    /* renamed from: t  reason: collision with root package name */
    private static final long f86643t = 9223367638808264704L;

    /* renamed from: u  reason: collision with root package name */
    public static final int f86644u = 1;

    /* renamed from: v  reason: collision with root package name */
    public static final int f86645v = 2097150;

    /* renamed from: w  reason: collision with root package name */
    private static final long f86646w = 2097151;

    /* renamed from: x  reason: collision with root package name */
    private static final long f86647x = -2097152;

    /* renamed from: y  reason: collision with root package name */
    private static final long f86648y = 2097152;
    @m8.g
    private volatile /* synthetic */ int _isTerminated;
    @JvmField

    /* renamed from: a  reason: collision with root package name */
    public final int f86649a;
    @JvmField

    /* renamed from: b  reason: collision with root package name */
    public final int f86650b;
    @JvmField

    /* renamed from: c  reason: collision with root package name */
    public final long f86651c;
    @m8.g
    volatile /* synthetic */ long controlState;
    @JvmField
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    public final String f86652d;
    @JvmField
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    public final e f86653e;
    @JvmField
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    public final e f86654f;
    @JvmField
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    public final k0<c> f86655g;
    @m8.g
    private volatile /* synthetic */ long parkedWorkersStack;
    @m8.g

    /* renamed from: h  reason: collision with root package name */
    public static final a f86631h = new a(null);
    @JvmField
    @m8.g

    /* renamed from: l  reason: collision with root package name */
    public static final p0 f86635l = new p0("NOT_IN_STACK");

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f86632i = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");

    /* renamed from: j  reason: collision with root package name */
    static final /* synthetic */ AtomicLongFieldUpdater f86633j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");

    /* renamed from: k  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86634k = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007R\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00058\u0000X\u0080T¢\u0006\u0006\n\u0004\b\f\u0010\u0007R\u0014\u0010\r\u001a\u00020\u00058\u0000X\u0080T¢\u0006\u0006\n\u0004\b\r\u0010\u0007R\u0014\u0010\u000f\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0007R\u0014\u0010\u0012\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0004R\u0014\u0010\u0013\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0007¨\u0006\u0018"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$a;", "", "", "BLOCKING_MASK", "J", "", "BLOCKING_SHIFT", "I", "CLAIMED", "CPU_PERMITS_MASK", "CPU_PERMITS_SHIFT", "CREATED_MASK", "MAX_SUPPORTED_POOL_SIZE", "MIN_SUPPORTED_POOL_SIZE", "Lkotlinx/coroutines/internal/p0;", "NOT_IN_STACK", "Lkotlinx/coroutines/internal/p0;", "PARKED", "PARKED_INDEX_MASK", "PARKED_VERSION_INC", "PARKED_VERSION_MASK", "TERMINATED", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            iArr[WorkerState.PARKING.ordinal()] = 1;
            iArr[WorkerState.BLOCKING.ordinal()] = 2;
            iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            iArr[WorkerState.DORMANT.ordinal()] = 4;
            iArr[WorkerState.TERMINATED.ordinal()] = 5;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CoroutineScheduler(int i4, int i10, long j4, @m8.g String str) {
        this.f86649a = i4;
        this.f86650b = i10;
        this.f86651c = j4;
        this.f86652d = str;
        if (!(i4 >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i4 + " should be at least 1").toString());
        }
        if (!(i10 >= i4)) {
            throw new IllegalArgumentException(("Max pool size " + i10 + " should be greater than or equals to core pool size " + i4).toString());
        }
        if (!(i10 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i10 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j4 > 0) {
            this.f86653e = new e();
            this.f86654f = new e();
            this.parkedWorkersStack = 0L;
            this.f86655g = new k0<>(i4 + 1);
            this.controlState = i4 << 42;
            this._isTerminated = 0;
            return;
        }
        throw new IllegalArgumentException(("Idle worker keep alive time " + j4 + " must be positive").toString());
    }

    public static /* synthetic */ void A(CoroutineScheduler coroutineScheduler, Runnable runnable, k kVar, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            kVar = n.f86697i;
        }
        if ((i4 & 4) != 0) {
            z9 = false;
        }
        coroutineScheduler.y(runnable, kVar, z9);
    }

    private final int D() {
        return (int) ((this.controlState & f86643t) >> 42);
    }

    private final int E() {
        return (int) (this.controlState & 2097151);
    }

    private final long G() {
        return f86633j.addAndGet(this, 2097152L);
    }

    private final int H() {
        return (int) (f86633j.incrementAndGet(this) & 2097151);
    }

    private final int I(c cVar) {
        Object h4 = cVar.h();
        while (h4 != f86635l) {
            if (h4 == null) {
                return 0;
            }
            c cVar2 = (c) h4;
            int g4 = cVar2.g();
            if (g4 != 0) {
                return g4;
            }
            h4 = cVar2.h();
        }
        return -1;
    }

    private final c J() {
        while (true) {
            long j4 = this.parkedWorkersStack;
            c b10 = this.f86655g.b((int) (2097151 & j4));
            if (b10 == null) {
                return null;
            }
            long j10 = (2097152 + j4) & f86647x;
            int I = I(b10);
            if (I >= 0 && f86632i.compareAndSet(this, j4, I | j10)) {
                b10.q(f86635l);
                return b10;
            }
        }
    }

    private final long M() {
        return f86633j.addAndGet(this, 4398046511104L);
    }

    private final boolean a(j jVar) {
        if (jVar.f86686b.d0() == 1) {
            return this.f86654f.a(jVar);
        }
        return this.f86653e.a(jVar);
    }

    private final void b0(boolean z9) {
        long addAndGet = f86633j.addAndGet(this, 2097152L);
        if (z9 || p0() || l0(addAndGet)) {
            return;
        }
        p0();
    }

    private final int d(long j4) {
        return (int) ((j4 & f86641r) >> 21);
    }

    private final j g0(c cVar, j jVar, boolean z9) {
        if (cVar == null || cVar.f86659b == WorkerState.TERMINATED) {
            return jVar;
        }
        if (jVar.f86686b.d0() == 0 && cVar.f86659b == WorkerState.BLOCKING) {
            return jVar;
        }
        cVar.f86663f = true;
        return cVar.f86658a.a(jVar, z9);
    }

    private final int h() {
        int coerceAtLeast;
        synchronized (this.f86655g) {
            if (isTerminated()) {
                return -1;
            }
            long j4 = this.controlState;
            int i4 = (int) (j4 & 2097151);
            coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i4 - ((int) ((j4 & f86641r) >> 21)), 0);
            if (coerceAtLeast >= this.f86649a) {
                return 0;
            }
            if (i4 >= this.f86650b) {
                return 0;
            }
            int i10 = ((int) (this.controlState & 2097151)) + 1;
            if (i10 > 0 && this.f86655g.b(i10) == null) {
                c cVar = new c(i10);
                this.f86655g.c(i10, cVar);
                if (i10 == ((int) (2097151 & f86633j.incrementAndGet(this)))) {
                    cVar.start();
                    return coerceAtLeast + 1;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    private final boolean h0() {
        long j4;
        do {
            j4 = this.controlState;
            if (((int) ((f86643t & j4) >> 42)) == 0) {
                return false;
            }
        } while (!f86633j.compareAndSet(this, j4, j4 - 4398046511104L));
        return true;
    }

    private final boolean l0(long j4) {
        int coerceAtLeast;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(((int) (2097151 & j4)) - ((int) ((j4 & f86641r) >> 21)), 0);
        if (coerceAtLeast < this.f86649a) {
            int h4 = h();
            if (h4 == 1 && this.f86649a > 1) {
                h();
            }
            if (h4 > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean n0(CoroutineScheduler coroutineScheduler, long j4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = coroutineScheduler.controlState;
        }
        return coroutineScheduler.l0(j4);
    }

    private final int p(long j4) {
        return (int) (j4 & 2097151);
    }

    private final boolean p0() {
        c J;
        do {
            J = J();
            if (J == null) {
                return false;
            }
        } while (!c.f86657h.compareAndSet(J, -1, 0));
        LockSupport.unpark(J);
        return true;
    }

    private final c q() {
        Thread currentThread = Thread.currentThread();
        c cVar = currentThread instanceof c ? (c) currentThread : null;
        if (cVar != null && Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return cVar;
        }
        return null;
    }

    private final void r() {
        f86633j.addAndGet(this, f86647x);
    }

    private final int s() {
        return (int) (f86633j.getAndDecrement(this) & 2097151);
    }

    public final boolean K(@m8.g c cVar) {
        long j4;
        long j10;
        int g4;
        if (cVar.h() != f86635l) {
            return false;
        }
        do {
            j4 = this.parkedWorkersStack;
            j10 = (2097152 + j4) & f86647x;
            g4 = cVar.g();
            cVar.q(this.f86655g.b((int) (2097151 & j4)));
        } while (!f86632i.compareAndSet(this, j4, j10 | g4));
        return true;
    }

    public final void L(@m8.g c cVar, int i4, int i10) {
        while (true) {
            long j4 = this.parkedWorkersStack;
            int i11 = (int) (2097151 & j4);
            long j10 = (2097152 + j4) & f86647x;
            if (i11 == i4) {
                i11 = i10 == 0 ? I(cVar) : i10;
            }
            if (i11 >= 0 && f86632i.compareAndSet(this, j4, j10 | i11)) {
                return;
            }
        }
    }

    public final void W(@m8.g j jVar) {
        try {
            jVar.run();
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                kotlinx.coroutines.b b10 = kotlinx.coroutines.c.b();
                if (b10 == null) {
                }
            } finally {
                kotlinx.coroutines.b b11 = kotlinx.coroutines.c.b();
                if (b11 != null) {
                    b11.f();
                }
            }
        }
    }

    public final void X(long j4) {
        int i4;
        if (f86634k.compareAndSet(this, 0, 1)) {
            c q9 = q();
            synchronized (this.f86655g) {
                i4 = (int) (this.controlState & 2097151);
            }
            if (1 <= i4) {
                int i10 = 1;
                while (true) {
                    int i11 = i10 + 1;
                    c b10 = this.f86655g.b(i10);
                    Intrinsics.checkNotNull(b10);
                    c cVar = b10;
                    if (cVar != q9) {
                        while (cVar.isAlive()) {
                            LockSupport.unpark(cVar);
                            cVar.join(j4);
                        }
                        cVar.f86658a.g(this.f86654f);
                    }
                    if (i10 == i4) {
                        break;
                    }
                    i10 = i11;
                }
            }
            this.f86654f.b();
            this.f86653e.b();
            while (true) {
                j f10 = q9 == null ? null : q9.f(true);
                if (f10 == null && (f10 = this.f86653e.g()) == null && (f10 = this.f86654f.g()) == null) {
                    break;
                }
                W(f10);
            }
            if (q9 != null) {
                q9.t(WorkerState.TERMINATED);
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public final int b(long j4) {
        return (int) ((j4 & f86643t) >> 42);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        X(10000L);
    }

    public final void d0() {
        if (p0() || n0(this, 0L, 1, null)) {
            return;
        }
        p0();
    }

    @Override // java.util.concurrent.Executor
    public void execute(@m8.g Runnable runnable) {
        A(this, runnable, null, false, 6, null);
    }

    @m8.g
    public final j i(@m8.g Runnable runnable, @m8.g k kVar) {
        long a10 = n.f86694f.a();
        if (runnable instanceof j) {
            j jVar = (j) runnable;
            jVar.f86685a = a10;
            jVar.f86686b = kVar;
            return jVar;
        }
        return new m(runnable, a10, kVar);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    @m8.g
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int a10 = this.f86655g.a();
        int i4 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 1;
        while (i14 < a10) {
            int i15 = i14 + 1;
            c b10 = this.f86655g.b(i14);
            if (b10 != null) {
                int f10 = b10.f86658a.f();
                int i16 = b.$EnumSwitchMapping$0[b10.f86659b.ordinal()];
                if (i16 == 1) {
                    i11++;
                } else if (i16 == 2) {
                    i10++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(f10);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i16 == 3) {
                    i4++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(f10);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i16 == 4) {
                    i12++;
                    if (f10 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(f10);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i16 == 5) {
                    i13++;
                }
            }
            i14 = i15;
        }
        long j4 = this.controlState;
        return this.f86652d + '@' + v0.b(this) + "[Pool Size {core = " + this.f86649a + ", max = " + this.f86650b + "}, Worker States {CPU = " + i4 + ", blocking = " + i10 + ", parked = " + i11 + ", dormant = " + i12 + ", terminated = " + i13 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f86653e.c() + ", global blocking queue size = " + this.f86654f.c() + ", Control State {created workers= " + ((int) (2097151 & j4)) + ", blocking tasks = " + ((int) ((f86641r & j4) >> 21)) + ", CPUs acquired = " + (this.f86649a - ((int) ((f86643t & j4) >> 42))) + "}]";
    }

    public final void y(@m8.g Runnable runnable, @m8.g k kVar, boolean z9) {
        kotlinx.coroutines.b b10 = kotlinx.coroutines.c.b();
        if (b10 != null) {
            b10.e();
        }
        j i4 = i(runnable, kVar);
        c q9 = q();
        j g02 = g0(q9, i4, z9);
        if (g02 != null && !a(g02)) {
            throw new RejectedExecutionException(Intrinsics.stringPlus(this.f86652d, " was terminated"));
        }
        boolean z10 = z9 && q9 != null;
        if (i4.f86686b.d0() != 0) {
            b0(z10);
        } else if (z10) {
        } else {
            d0();
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0080\u0004\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\bE\u0010FB\u0011\b\u0016\u0012\u0006\u0010'\u001a\u00020\u000e¢\u0006\u0004\bE\u0010GJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0007J\u0017\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0016\u0010\u0011J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0011\u0010\u001a\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u0004\u0018\u00010\n2\u0006\u0010\u001c\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u001d\u0010\u0019J\u0015\u0010 \u001a\u00020\u00022\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0007J\u0015\u0010$\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020\u000e¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0002¢\u0006\u0004\b&\u0010\u0019R*\u0010(\u001a\u00020\u000e2\u0006\u0010'\u001a\u00020\u000e8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010\u0011R\u0014\u00100\u001a\u00020-8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0016\u00102\u001a\u00020\u001e8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0012\u00101R\u0016\u00105\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u00104R$\u00107\u001a\u0004\u0018\u0001068\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b7\u00108\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u0016\u0010=\u001a\u0002038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u00104R\u0016\u0010>\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010)R\u0016\u0010@\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b&\u0010?R\u0012\u0010D\u001a\u00020A8Æ\u0002¢\u0006\u0006\u001a\u0004\bB\u0010C¨\u0006H"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$c;", "Ljava/lang/Thread;", "", "r", "()Z", "", "o", "()V", "s", "k", "Lkotlinx/coroutines/scheduling/j;", "task", "d", "(Lkotlinx/coroutines/scheduling/j;)V", "", "taskMode", "c", "(I)V", "b", "m", "v", "mode", "j", "scanLocalQueue", "e", "(Z)Lkotlinx/coroutines/scheduling/j;", "n", "()Lkotlinx/coroutines/scheduling/j;", "blockingOnly", "u", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "t", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "run", "upperBound", "l", "(I)I", "f", "index", "indexInArray", "I", "g", "()I", "p", "Lkotlinx/coroutines/scheduling/p;", "a", "Lkotlinx/coroutines/scheduling/p;", "localQueue", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", t.b.f83859d, "", "J", "terminationDeadline", "", "nextParkedWorker", "Ljava/lang/Object;", "h", "()Ljava/lang/Object;", "q", "(Ljava/lang/Object;)V", "minDelayUntilStealableTaskNs", "rngState", "Z", "mayHaveLocalTasks", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", ContextChain.TAG_INFRA, "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class c extends Thread {

        /* renamed from: h  reason: collision with root package name */
        static final /* synthetic */ AtomicIntegerFieldUpdater f86657h = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl");
        @JvmField
        @m8.g

        /* renamed from: a  reason: collision with root package name */
        public final p f86658a;
        @JvmField
        @m8.g

        /* renamed from: b  reason: collision with root package name */
        public WorkerState f86659b;

        /* renamed from: c  reason: collision with root package name */
        private long f86660c;

        /* renamed from: d  reason: collision with root package name */
        private long f86661d;

        /* renamed from: e  reason: collision with root package name */
        private int f86662e;
        @JvmField

        /* renamed from: f  reason: collision with root package name */
        public boolean f86663f;
        private volatile int indexInArray;
        @m8.h
        private volatile Object nextParkedWorker;
        @m8.g
        volatile /* synthetic */ int workerCtl;

        private c() {
            setDaemon(true);
            this.f86658a = new p();
            this.f86659b = WorkerState.DORMANT;
            this.workerCtl = 0;
            this.nextParkedWorker = CoroutineScheduler.f86635l;
            this.f86662e = Random.Default.nextInt();
        }

        private final void b(int i4) {
            if (i4 == 0) {
                return;
            }
            CoroutineScheduler.f86633j.addAndGet(CoroutineScheduler.this, CoroutineScheduler.f86647x);
            if (this.f86659b != WorkerState.TERMINATED) {
                this.f86659b = WorkerState.DORMANT;
            }
        }

        private final void c(int i4) {
            if (i4 != 0 && t(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.d0();
            }
        }

        private final void d(j jVar) {
            int d02 = jVar.f86686b.d0();
            j(d02);
            c(d02);
            CoroutineScheduler.this.W(jVar);
            b(d02);
        }

        private final j e(boolean z9) {
            j n9;
            j n10;
            if (z9) {
                boolean z10 = l(CoroutineScheduler.this.f86649a * 2) == 0;
                if (z10 && (n10 = n()) != null) {
                    return n10;
                }
                j h4 = this.f86658a.h();
                if (h4 != null) {
                    return h4;
                }
                if (!z10 && (n9 = n()) != null) {
                    return n9;
                }
            } else {
                j n11 = n();
                if (n11 != null) {
                    return n11;
                }
            }
            return u(false);
        }

        private final void j(int i4) {
            this.f86660c = 0L;
            if (this.f86659b == WorkerState.PARKING) {
                this.f86659b = WorkerState.BLOCKING;
            }
        }

        private final boolean k() {
            return this.nextParkedWorker != CoroutineScheduler.f86635l;
        }

        private final void m() {
            if (this.f86660c == 0) {
                this.f86660c = System.nanoTime() + CoroutineScheduler.this.f86651c;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f86651c);
            if (System.nanoTime() - this.f86660c >= 0) {
                this.f86660c = 0L;
                v();
            }
        }

        private final j n() {
            if (l(2) == 0) {
                j g4 = CoroutineScheduler.this.f86653e.g();
                return g4 == null ? CoroutineScheduler.this.f86654f.g() : g4;
            }
            j g10 = CoroutineScheduler.this.f86654f.g();
            return g10 == null ? CoroutineScheduler.this.f86653e.g() : g10;
        }

        private final void o() {
            loop0: while (true) {
                boolean z9 = false;
                while (!CoroutineScheduler.this.isTerminated() && this.f86659b != WorkerState.TERMINATED) {
                    j f10 = f(this.f86663f);
                    if (f10 != null) {
                        this.f86661d = 0L;
                        d(f10);
                    } else {
                        this.f86663f = false;
                        if (this.f86661d == 0) {
                            s();
                        } else if (z9) {
                            t(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f86661d);
                            this.f86661d = 0L;
                        } else {
                            z9 = true;
                        }
                    }
                }
            }
            t(WorkerState.TERMINATED);
        }

        private final boolean r() {
            boolean z9;
            if (this.f86659b != WorkerState.CPU_ACQUIRED) {
                CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                while (true) {
                    long j4 = coroutineScheduler.controlState;
                    if (((int) ((CoroutineScheduler.f86643t & j4) >> 42)) != 0) {
                        if (CoroutineScheduler.f86633j.compareAndSet(coroutineScheduler, j4, j4 - 4398046511104L)) {
                            z9 = true;
                            break;
                        }
                    } else {
                        z9 = false;
                        break;
                    }
                }
                if (!z9) {
                    return false;
                }
                this.f86659b = WorkerState.CPU_ACQUIRED;
            }
            return true;
        }

        private final void s() {
            if (!k()) {
                CoroutineScheduler.this.K(this);
                return;
            }
            this.workerCtl = -1;
            while (k() && this.workerCtl == -1 && !CoroutineScheduler.this.isTerminated() && this.f86659b != WorkerState.TERMINATED) {
                t(WorkerState.PARKING);
                Thread.interrupted();
                m();
            }
        }

        private final j u(boolean z9) {
            long l10;
            int i4 = (int) (CoroutineScheduler.this.controlState & 2097151);
            if (i4 < 2) {
                return null;
            }
            int l11 = l(i4);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            int i10 = 0;
            long j4 = Long.MAX_VALUE;
            while (i10 < i4) {
                i10++;
                l11++;
                if (l11 > i4) {
                    l11 = 1;
                }
                c b10 = coroutineScheduler.f86655g.b(l11);
                if (b10 != null && b10 != this) {
                    if (z9) {
                        l10 = this.f86658a.k(b10.f86658a);
                    } else {
                        l10 = this.f86658a.l(b10.f86658a);
                    }
                    if (l10 == -1) {
                        return this.f86658a.h();
                    }
                    if (l10 > 0) {
                        j4 = Math.min(j4, l10);
                    }
                }
            }
            if (j4 == Long.MAX_VALUE) {
                j4 = 0;
            }
            this.f86661d = j4;
            return null;
        }

        private final void v() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.f86655g) {
                if (coroutineScheduler.isTerminated()) {
                    return;
                }
                if (((int) (coroutineScheduler.controlState & 2097151)) <= coroutineScheduler.f86649a) {
                    return;
                }
                if (f86657h.compareAndSet(this, -1, 1)) {
                    int g4 = g();
                    p(0);
                    coroutineScheduler.L(this, g4, 0);
                    int andDecrement = (int) (CoroutineScheduler.f86633j.getAndDecrement(coroutineScheduler) & 2097151);
                    if (andDecrement != g4) {
                        c b10 = coroutineScheduler.f86655g.b(andDecrement);
                        Intrinsics.checkNotNull(b10);
                        c cVar = b10;
                        coroutineScheduler.f86655g.c(g4, cVar);
                        cVar.p(g4);
                        coroutineScheduler.L(cVar, andDecrement, g4);
                    }
                    coroutineScheduler.f86655g.c(andDecrement, null);
                    Unit unit = Unit.INSTANCE;
                    this.f86659b = WorkerState.TERMINATED;
                }
            }
        }

        @m8.h
        public final j f(boolean z9) {
            j g4;
            if (r()) {
                return e(z9);
            }
            if (z9) {
                g4 = this.f86658a.h();
                if (g4 == null) {
                    g4 = CoroutineScheduler.this.f86654f.g();
                }
            } else {
                g4 = CoroutineScheduler.this.f86654f.g();
            }
            return g4 == null ? u(true) : g4;
        }

        public final int g() {
            return this.indexInArray;
        }

        @m8.h
        public final Object h() {
            return this.nextParkedWorker;
        }

        @m8.g
        public final CoroutineScheduler i() {
            return CoroutineScheduler.this;
        }

        public final int l(int i4) {
            int i10 = this.f86662e;
            int i11 = i10 ^ (i10 << 13);
            int i12 = i11 ^ (i11 >> 17);
            int i13 = i12 ^ (i12 << 5);
            this.f86662e = i13;
            int i14 = i4 - 1;
            return (i14 & i4) == 0 ? i13 & i14 : (i13 & Integer.MAX_VALUE) % i4;
        }

        public final void p(int i4) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.f86652d);
            sb.append("-worker-");
            sb.append(i4 == 0 ? "TERMINATED" : String.valueOf(i4));
            setName(sb.toString());
            this.indexInArray = i4;
        }

        public final void q(@m8.h Object obj) {
            this.nextParkedWorker = obj;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            o();
        }

        public final boolean t(@m8.g WorkerState workerState) {
            WorkerState workerState2 = this.f86659b;
            boolean z9 = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z9) {
                CoroutineScheduler.f86633j.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.f86659b = workerState;
            }
            return z9;
        }

        public c(int i4) {
            this();
            p(i4);
        }
    }

    public /* synthetic */ CoroutineScheduler(int i4, int i10, long j4, String str, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i4, i10, (i11 & 4) != 0 ? n.f86693e : j4, (i11 & 8) != 0 ? n.f86689a : str);
    }
}
