package kotlinx.coroutines.scheduling;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.v1;

/* compiled from: Deprecated.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B)\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0016\u0012\u0006\u0010(\u001a\u00020\u001e¢\u0006\u0004\b0\u00101J#\u0010\n\u001a\u00020\t2\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001b\u0010\r\u001a\u00020\t2\n\u0010\f\u001a\u00060\u0004j\u0002`\u0005H\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J#\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J#\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00112\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0019\u0010\u0010R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0016\u0010$\u001a\u0004\u0018\u00010\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u001a\u0010(\u001a\u00020\u001e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010 \u001a\u0004\b&\u0010'R\u001e\u0010,\u001a\f\u0012\b\u0012\u00060\u0004j\u0002`\u00050)8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b*\u0010+R\u0014\u0010/\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u00062"}, d2 = {"Lkotlinx/coroutines/scheduling/f;", "Lkotlinx/coroutines/v1;", "Lkotlinx/coroutines/scheduling/k;", "Ljava/util/concurrent/Executor;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "tailDispatch", "", "q0", "(Ljava/lang/Runnable;Z)V", "command", "execute", "(Ljava/lang/Runnable;)V", "close", "()V", "Lkotlin/coroutines/CoroutineContext;", "context", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "dispatchYield", "", "toString", "()Ljava/lang/String;", "b0", "Lkotlinx/coroutines/scheduling/d;", "b", "Lkotlinx/coroutines/scheduling/d;", "dispatcher", "", "c", "I", "parallelism", "d", "Ljava/lang/String;", "name", "e", "d0", "()I", "taskMode", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "f", "Ljava/util/concurrent/ConcurrentLinkedQueue;", "queue", "p0", "()Ljava/util/concurrent/Executor;", "executor", "<init>", "(Lkotlinx/coroutines/scheduling/d;ILjava/lang/String;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class f extends v1 implements k, Executor {

    /* renamed from: g  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86673g = AtomicIntegerFieldUpdater.newUpdater(f.class, "inFlightTasks");
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final d f86674b;

    /* renamed from: c  reason: collision with root package name */
    private final int f86675c;
    @m8.h

    /* renamed from: d  reason: collision with root package name */
    private final String f86676d;

    /* renamed from: e  reason: collision with root package name */
    private final int f86677e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final ConcurrentLinkedQueue<Runnable> f86678f = new ConcurrentLinkedQueue<>();
    @m8.g
    private volatile /* synthetic */ int inFlightTasks = 0;

    public f(@m8.g d dVar, int i4, @m8.h String str, int i10) {
        this.f86674b = dVar;
        this.f86675c = i4;
        this.f86676d = str;
        this.f86677e = i10;
    }

    private final void q0(Runnable runnable, boolean z9) {
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f86673g;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.f86675c) {
                this.f86674b.t0(runnable, this, z9);
                return;
            }
            this.f86678f.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.f86675c) {
                return;
            }
            runnable = this.f86678f.poll();
        } while (runnable != null);
    }

    @Override // kotlinx.coroutines.scheduling.k
    public void b0() {
        Runnable poll = this.f86678f.poll();
        if (poll != null) {
            this.f86674b.t0(poll, this, true);
            return;
        }
        f86673g.decrementAndGet(this);
        Runnable poll2 = this.f86678f.poll();
        if (poll2 == null) {
            return;
        }
        q0(poll2, true);
    }

    @Override // kotlinx.coroutines.v1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // kotlinx.coroutines.scheduling.k
    public int d0() {
        return this.f86677e;
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        q0(runnable, false);
    }

    @Override // kotlinx.coroutines.n0
    public void dispatchYield(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        q0(runnable, true);
    }

    @Override // java.util.concurrent.Executor
    public void execute(@m8.g Runnable runnable) {
        q0(runnable, false);
    }

    @Override // kotlinx.coroutines.v1
    @m8.g
    public Executor p0() {
        return this;
    }

    @Override // kotlinx.coroutines.n0
    @m8.g
    public String toString() {
        String str = this.f86676d;
        if (str == null) {
            return super.toString() + "[dispatcher = " + this.f86674b + ']';
        }
        return str;
    }
}
