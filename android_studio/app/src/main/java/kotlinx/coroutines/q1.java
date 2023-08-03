package kotlinx.coroutines;

import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.a1;

/* compiled from: EventLoop.common.kt */
@Metadata(bv = {}, d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0018\b \u0018\u00002\u00020\u00012\u00020\u0002:\u000489:;B\u0007¢\u0006\u0004\b7\u0010\rJ\u001b\u0010\u0007\u001a\u00020\u00062\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\t\u001a\n\u0018\u00010\u0003j\u0004\u0018\u0001`\u0004H\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u001f\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0017\u0010\rJ\u000f\u0010\u0018\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0018\u0010\rJ%\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u001f2\u0006\u0010\u0019\u001a\u00020\u00112\n\u0010\u001e\u001a\u00060\u0003j\u0002`\u0004H\u0004¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\"\u0010#J!\u0010&\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$2\n\u0010\u001e\u001a\u00060\u0003j\u0002`\u0004¢\u0006\u0004\b&\u0010'J\u001b\u0010(\u001a\u00020\u000b2\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004H\u0016¢\u0006\u0004\b(\u0010)J\u001d\u0010*\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000e¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u000bH\u0004¢\u0006\u0004\b,\u0010\rR$\u00102\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u00068B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b.\u0010/\"\u0004\b0\u00101R\u0014\u00104\u001a\u00020\u00068TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b3\u0010/R\u0014\u00106\u001a\u00020\u00118TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b5\u0010#¨\u0006<"}, d2 = {"Lkotlinx/coroutines/q1;", "Lkotlinx/coroutines/r1;", "Lkotlinx/coroutines/a1;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "task", "", "J0", "(Ljava/lang/Runnable;)Z", "H0", "()Ljava/lang/Runnable;", "", "G0", "()V", "Lkotlinx/coroutines/q1$c;", "Q0", "(Lkotlinx/coroutines/q1$c;)Z", "", "now", "delayedTask", "", "N0", "(JLkotlinx/coroutines/q1$c;)I", "K0", "shutdown", "timeMillis", "Lkotlinx/coroutines/q;", "continuation", "r", "(JLkotlinx/coroutines/q;)V", "block", "Lkotlinx/coroutines/l1;", "O0", "(JLjava/lang/Runnable;)Lkotlinx/coroutines/l1;", "z0", "()J", "Lkotlin/coroutines/CoroutineContext;", "context", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "I0", "(Ljava/lang/Runnable;)V", "M0", "(JLkotlinx/coroutines/q1$c;)V", "L0", "value", ContextChain.TAG_INFRA, "()Z", "P0", "(Z)V", "isCompleted", "w0", "isEmpty", "t0", "nextTime", "<init>", "a", "b", "c", "d", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class q1 extends r1 implements a1 {

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86359d = AtomicReferenceFieldUpdater.newUpdater(q1.class, Object.class, "_queue");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86360e = AtomicReferenceFieldUpdater.newUpdater(q1.class, Object.class, "_delayed");
    @m8.g
    private volatile /* synthetic */ Object _queue = null;
    @m8.g
    private volatile /* synthetic */ Object _delayed = null;
    @m8.g
    private volatile /* synthetic */ int _isCompleted = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u0006¢\u0006\u0004\b\f\u0010\rJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Lkotlinx/coroutines/q1$a;", "Lkotlinx/coroutines/q1$c;", "", "run", "", "toString", "Lkotlinx/coroutines/q;", "d", "Lkotlinx/coroutines/q;", "cont", "", "nanoTime", "<init>", "(Lkotlinx/coroutines/q1;JLkotlinx/coroutines/q;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public final class a extends c {
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final q<Unit> f86361d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(long j4, @m8.g q<? super Unit> qVar) {
            super(j4);
            this.f86361d = qVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f86361d.B(q1.this, Unit.INSTANCE);
        }

        @Override // kotlinx.coroutines.q1.c
        @m8.g
        public String toString() {
            return Intrinsics.stringPlus(super.toString(), this.f86361d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\u0010\n\u001a\u00060\u0006j\u0002`\u0007¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0016J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0018\u0010\n\u001a\u00060\u0006j\u0002`\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/q1$b;", "Lkotlinx/coroutines/q1$c;", "", "run", "", "toString", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "d", "Ljava/lang/Runnable;", "block", "", "nanoTime", "<init>", "(JLjava/lang/Runnable;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class b extends c {
        @m8.g

        /* renamed from: d  reason: collision with root package name */
        private final Runnable f86363d;

        public b(long j4, @m8.g Runnable runnable) {
            super(j4);
            this.f86363d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f86363d.run();
        }

        @Override // kotlinx.coroutines.q1.c
        @m8.g
        public String toString() {
            return Intrinsics.stringPlus(super.toString(), this.f86363d);
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\b \u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u0005B\u000f\u0012\u0006\u0010\u0018\u001a\u00020\t¢\u0006\u0004\b(\u0010)J\u0011\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0000H\u0096\u0002J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tJ\u001e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fJ\u0006\u0010\u0013\u001a\u00020\u0012J\b\u0010\u0015\u001a\u00020\u0014H\u0016R\u0016\u0010\u0018\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\"\u0010\"\u001a\u00020\u00078\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\b\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R0\u0010'\u001a\b\u0012\u0002\b\u0003\u0018\u00010#2\f\u0010$\u001a\b\u0012\u0002\b\u0003\u0018\u00010#8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u001a\u0010%\"\u0004\b\u0016\u0010&¨\u0006*"}, d2 = {"Lkotlinx/coroutines/q1$c;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Lkotlinx/coroutines/l1;", "Lkotlinx/coroutines/internal/z0;", "other", "", "c", "", "now", "", "f", "Lkotlinx/coroutines/q1$d;", "delayed", "Lkotlinx/coroutines/q1;", "eventLoop", "d", "", "dispose", "", "toString", "a", "J", "nanoTime", "", "b", "Ljava/lang/Object;", "_heap", "I", "getIndex", "()I", "h", "(I)V", "index", "Lkotlinx/coroutines/internal/y0;", "value", "()Lkotlinx/coroutines/internal/y0;", "(Lkotlinx/coroutines/internal/y0;)V", "heap", "<init>", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static abstract class c implements Runnable, Comparable<c>, l1, kotlinx.coroutines.internal.z0 {
        @JvmField

        /* renamed from: a  reason: collision with root package name */
        public long f86364a;
        @m8.h

        /* renamed from: b  reason: collision with root package name */
        private Object f86365b;

        /* renamed from: c  reason: collision with root package name */
        private int f86366c = -1;

        public c(long j4) {
            this.f86364a = j4;
        }

        @Override // kotlinx.coroutines.internal.z0
        public void a(@m8.h kotlinx.coroutines.internal.y0<?> y0Var) {
            kotlinx.coroutines.internal.p0 p0Var;
            Object obj = this.f86365b;
            p0Var = t1.f86799a;
            if (obj != p0Var) {
                this.f86365b = y0Var;
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        @Override // kotlinx.coroutines.internal.z0
        @m8.h
        public kotlinx.coroutines.internal.y0<?> b() {
            Object obj = this.f86365b;
            if (obj instanceof kotlinx.coroutines.internal.y0) {
                return (kotlinx.coroutines.internal.y0) obj;
            }
            return null;
        }

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(@m8.g c cVar) {
            int i4 = ((this.f86364a - cVar.f86364a) > 0L ? 1 : ((this.f86364a - cVar.f86364a) == 0L ? 0 : -1));
            if (i4 > 0) {
                return 1;
            }
            return i4 < 0 ? -1 : 0;
        }

        public final synchronized int d(long j4, @m8.g d dVar, @m8.g q1 q1Var) {
            kotlinx.coroutines.internal.p0 p0Var;
            Object obj = this.f86365b;
            p0Var = t1.f86799a;
            if (obj == p0Var) {
                return 2;
            }
            synchronized (dVar) {
                c e4 = dVar.e();
                if (q1Var.i()) {
                    return 1;
                }
                if (e4 == null) {
                    dVar.f86367b = j4;
                } else {
                    long j10 = e4.f86364a;
                    if (j10 - j4 < 0) {
                        j4 = j10;
                    }
                    if (j4 - dVar.f86367b > 0) {
                        dVar.f86367b = j4;
                    }
                }
                long j11 = this.f86364a;
                long j12 = dVar.f86367b;
                if (j11 - j12 < 0) {
                    this.f86364a = j12;
                }
                dVar.a(this);
                return 0;
            }
        }

        @Override // kotlinx.coroutines.l1
        public final synchronized void dispose() {
            kotlinx.coroutines.internal.p0 p0Var;
            kotlinx.coroutines.internal.p0 p0Var2;
            Object obj = this.f86365b;
            p0Var = t1.f86799a;
            if (obj == p0Var) {
                return;
            }
            d dVar = obj instanceof d ? (d) obj : null;
            if (dVar != null) {
                dVar.j(this);
            }
            p0Var2 = t1.f86799a;
            this.f86365b = p0Var2;
        }

        public final boolean f(long j4) {
            return j4 - this.f86364a >= 0;
        }

        @Override // kotlinx.coroutines.internal.z0
        public int getIndex() {
            return this.f86366c;
        }

        @Override // kotlinx.coroutines.internal.z0
        public void h(int i4) {
            this.f86366c = i4;
        }

        @m8.g
        public String toString() {
            return "Delayed[nanos=" + this.f86364a + ']';
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\u0006\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/q1$d;", "Lkotlinx/coroutines/internal/y0;", "Lkotlinx/coroutines/q1$c;", "", "b", "J", "timeNow", "<init>", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    public static final class d extends kotlinx.coroutines.internal.y0<c> {
        @JvmField

        /* renamed from: b  reason: collision with root package name */
        public long f86367b;

        public d(long j4) {
            this.f86367b = j4;
        }
    }

    private final void G0() {
        kotlinx.coroutines.internal.p0 p0Var;
        kotlinx.coroutines.internal.p0 p0Var2;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f86359d;
                p0Var = t1.f86806h;
                if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, null, p0Var)) {
                    return;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.a0) {
                ((kotlinx.coroutines.internal.a0) obj).d();
                return;
            } else {
                p0Var2 = t1.f86806h;
                if (obj == p0Var2) {
                    return;
                }
                kotlinx.coroutines.internal.a0 a0Var = new kotlinx.coroutines.internal.a0(8, true);
                a0Var.a((Runnable) obj);
                if (androidx.concurrent.futures.a.a(f86359d, this, obj, a0Var)) {
                    return;
                }
            }
        }
    }

    private final Runnable H0() {
        kotlinx.coroutines.internal.p0 p0Var;
        while (true) {
            Object obj = this._queue;
            if (obj == null) {
                return null;
            }
            if (obj instanceof kotlinx.coroutines.internal.a0) {
                kotlinx.coroutines.internal.a0 a0Var = (kotlinx.coroutines.internal.a0) obj;
                Object l10 = a0Var.l();
                if (l10 != kotlinx.coroutines.internal.a0.f86229t) {
                    return (Runnable) l10;
                }
                androidx.concurrent.futures.a.a(f86359d, this, obj, a0Var.k());
            } else {
                p0Var = t1.f86806h;
                if (obj == p0Var) {
                    return null;
                }
                if (androidx.concurrent.futures.a.a(f86359d, this, obj, null)) {
                    return (Runnable) obj;
                }
            }
        }
    }

    private final boolean J0(Runnable runnable) {
        kotlinx.coroutines.internal.p0 p0Var;
        while (true) {
            Object obj = this._queue;
            if (i()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f86359d, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.a0) {
                kotlinx.coroutines.internal.a0 a0Var = (kotlinx.coroutines.internal.a0) obj;
                int a10 = a0Var.a(runnable);
                if (a10 == 0) {
                    return true;
                }
                if (a10 == 1) {
                    androidx.concurrent.futures.a.a(f86359d, this, obj, a0Var.k());
                } else if (a10 == 2) {
                    return false;
                }
            } else {
                p0Var = t1.f86806h;
                if (obj == p0Var) {
                    return false;
                }
                kotlinx.coroutines.internal.a0 a0Var2 = new kotlinx.coroutines.internal.a0(8, true);
                a0Var2.a((Runnable) obj);
                a0Var2.a(runnable);
                if (androidx.concurrent.futures.a.a(f86359d, this, obj, a0Var2)) {
                    return true;
                }
            }
        }
    }

    private final void K0() {
        kotlinx.coroutines.b b10 = kotlinx.coroutines.c.b();
        Long valueOf = b10 == null ? null : Long.valueOf(b10.b());
        long nanoTime = valueOf == null ? System.nanoTime() : valueOf.longValue();
        while (true) {
            d dVar = (d) this._delayed;
            c m9 = dVar == null ? null : dVar.m();
            if (m9 == null) {
                return;
            }
            D0(nanoTime, m9);
        }
    }

    private final int N0(long j4, c cVar) {
        if (i()) {
            return 1;
        }
        d dVar = (d) this._delayed;
        if (dVar == null) {
            androidx.concurrent.futures.a.a(f86360e, this, null, new d(j4));
            Object obj = this._delayed;
            Intrinsics.checkNotNull(obj);
            dVar = (d) obj;
        }
        return cVar.d(j4, dVar, this);
    }

    private final void P0(boolean z9) {
        this._isCompleted = z9 ? 1 : 0;
    }

    private final boolean Q0(c cVar) {
        d dVar = (d) this._delayed;
        return (dVar == null ? null : dVar.h()) == cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [int, boolean] */
    public final boolean i() {
        return this._isCompleted;
    }

    @Override // kotlinx.coroutines.a1
    @m8.g
    public l1 I(long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext) {
        return a1.a.b(this, j4, runnable, coroutineContext);
    }

    public void I0(@m8.g Runnable runnable) {
        if (J0(runnable)) {
            E0();
        } else {
            w0.f86846f.I0(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void L0() {
        this._queue = null;
        this._delayed = null;
    }

    public final void M0(long j4, @m8.g c cVar) {
        int N0 = N0(j4, cVar);
        if (N0 == 0) {
            if (Q0(cVar)) {
                E0();
            }
        } else if (N0 == 1) {
            D0(j4, cVar);
        } else if (N0 != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final l1 O0(long j4, @m8.g Runnable runnable) {
        long d4 = t1.d(j4);
        if (d4 < DurationKt.MAX_MILLIS) {
            kotlinx.coroutines.b b10 = kotlinx.coroutines.c.b();
            Long valueOf = b10 == null ? null : Long.valueOf(b10.b());
            long nanoTime = valueOf == null ? System.nanoTime() : valueOf.longValue();
            b bVar = new b(d4 + nanoTime, runnable);
            M0(nanoTime, bVar);
            return bVar;
        }
        return x2.f86862a;
    }

    @Override // kotlinx.coroutines.n0
    public final void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        I0(runnable);
    }

    @Override // kotlinx.coroutines.a1
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @m8.h
    public Object g0(long j4, @m8.g Continuation<? super Unit> continuation) {
        return a1.a.a(this, j4, continuation);
    }

    @Override // kotlinx.coroutines.a1
    public void r(long j4, @m8.g q<? super Unit> qVar) {
        long d4 = t1.d(j4);
        if (d4 < DurationKt.MAX_MILLIS) {
            kotlinx.coroutines.b b10 = kotlinx.coroutines.c.b();
            Long valueOf = b10 == null ? null : Long.valueOf(b10.b());
            long nanoTime = valueOf == null ? System.nanoTime() : valueOf.longValue();
            a aVar = new a(d4 + nanoTime, qVar);
            t.a(qVar, aVar);
            M0(nanoTime, aVar);
        }
    }

    @Override // kotlinx.coroutines.p1
    public void shutdown() {
        p3.f86355a.c();
        P0(true);
        G0();
        do {
        } while (z0() <= 0);
        K0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.p1
    public long t0() {
        long coerceAtLeast;
        kotlinx.coroutines.internal.p0 p0Var;
        if (super.t0() == 0) {
            return 0L;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (!(obj instanceof kotlinx.coroutines.internal.a0)) {
                p0Var = t1.f86806h;
                return obj == p0Var ? Long.MAX_VALUE : 0L;
            } else if (!((kotlinx.coroutines.internal.a0) obj).h()) {
                return 0L;
            }
        }
        d dVar = (d) this._delayed;
        c h4 = dVar == null ? null : dVar.h();
        if (h4 == null) {
            return Long.MAX_VALUE;
        }
        long j4 = h4.f86364a;
        kotlinx.coroutines.b b10 = kotlinx.coroutines.c.b();
        Long valueOf = b10 != null ? Long.valueOf(b10.b()) : null;
        coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(j4 - (valueOf == null ? System.nanoTime() : valueOf.longValue()), 0L);
        return coerceAtLeast;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.p1
    public boolean w0() {
        kotlinx.coroutines.internal.p0 p0Var;
        if (y0()) {
            d dVar = (d) this._delayed;
            if (dVar == null || dVar.g()) {
                Object obj = this._queue;
                if (obj != null) {
                    if (obj instanceof kotlinx.coroutines.internal.a0) {
                        return ((kotlinx.coroutines.internal.a0) obj).h();
                    }
                    p0Var = t1.f86806h;
                    if (obj != p0Var) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0065  */
    @Override // kotlinx.coroutines.p1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long z0() {
        /*
            r9 = this;
            boolean r0 = r9.A0()
            r1 = 0
            if (r0 == 0) goto L9
            return r1
        L9:
            java.lang.Object r0 = r9._delayed
            kotlinx.coroutines.q1$d r0 = (kotlinx.coroutines.q1.d) r0
            if (r0 == 0) goto L5b
            boolean r3 = r0.g()
            if (r3 != 0) goto L5b
            kotlinx.coroutines.b r3 = kotlinx.coroutines.c.b()
            r4 = 0
            if (r3 != 0) goto L1e
            r3 = r4
            goto L26
        L1e:
            long r5 = r3.b()
            java.lang.Long r3 = java.lang.Long.valueOf(r5)
        L26:
            if (r3 != 0) goto L2d
            long r5 = java.lang.System.nanoTime()
            goto L31
        L2d:
            long r5 = r3.longValue()
        L31:
            monitor-enter(r0)
            kotlinx.coroutines.internal.z0 r3 = r0.e()     // Catch: java.lang.Throwable -> L58
            if (r3 != 0) goto L3b
            monitor-exit(r0)
            r3 = r4
            goto L53
        L3b:
            kotlinx.coroutines.q1$c r3 = (kotlinx.coroutines.q1.c) r3     // Catch: java.lang.Throwable -> L58
            boolean r7 = r3.f(r5)     // Catch: java.lang.Throwable -> L58
            r8 = 0
            if (r7 == 0) goto L49
            boolean r3 = r9.J0(r3)     // Catch: java.lang.Throwable -> L58
            goto L4a
        L49:
            r3 = 0
        L4a:
            if (r3 == 0) goto L51
            kotlinx.coroutines.internal.z0 r3 = r0.k(r8)     // Catch: java.lang.Throwable -> L58
            goto L52
        L51:
            r3 = r4
        L52:
            monitor-exit(r0)
        L53:
            kotlinx.coroutines.q1$c r3 = (kotlinx.coroutines.q1.c) r3
            if (r3 != 0) goto L31
            goto L5b
        L58:
            r1 = move-exception
            monitor-exit(r0)
            throw r1
        L5b:
            java.lang.Runnable r0 = r9.H0()
            if (r0 == 0) goto L65
            r0.run()
            return r1
        L65:
            long r0 = r9.t0()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.q1.z0():long");
    }
}
