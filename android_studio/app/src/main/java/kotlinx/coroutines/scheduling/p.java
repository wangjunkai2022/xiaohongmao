package kotlinx.coroutines.scheduling;

import com.facebook.common.callercontext.ContextChain;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;

/* compiled from: WorkQueue.kt */
@Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b(\u0010)J\u0019\u0010\u0004\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0013\u001a\u00020\u0012*\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0015\u0010\u0011J!\u0010\u0017\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0015\u0010\u001b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0000¢\u0006\u0004\b\u001b\u0010\u001aJ\u0015\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001c\u001a\u00020\f¢\u0006\u0004\b\u001d\u0010\u001eR\u001c\u0010!\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010 R\u0014\u0010%\u001a\u00020\"8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0014\u0010'\u001a\u00020\"8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b&\u0010$¨\u0006*"}, d2 = {"Lkotlinx/coroutines/scheduling/p;", "", "Lkotlinx/coroutines/scheduling/j;", "task", "c", "(Lkotlinx/coroutines/scheduling/j;)Lkotlinx/coroutines/scheduling/j;", "victim", "", "blockingOnly", "", "m", "(Lkotlinx/coroutines/scheduling/p;Z)J", "Lkotlinx/coroutines/scheduling/e;", "queue", "j", "(Lkotlinx/coroutines/scheduling/e;)Z", ContextChain.TAG_INFRA, "()Lkotlinx/coroutines/scheduling/j;", "", "d", "(Lkotlinx/coroutines/scheduling/j;)V", "h", "fair", "a", "(Lkotlinx/coroutines/scheduling/j;Z)Lkotlinx/coroutines/scheduling/j;", "l", "(Lkotlinx/coroutines/scheduling/p;)J", "k", "globalQueue", "g", "(Lkotlinx/coroutines/scheduling/e;)V", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "buffer", "", "e", "()I", "bufferSize", "f", com.qennnsad.aknkaksd.data.repository.f.f47745b, "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class p {

    /* renamed from: b  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f86700b = AtomicReferenceFieldUpdater.newUpdater(p.class, Object.class, "lastScheduledTask");

    /* renamed from: c  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86701c = AtomicIntegerFieldUpdater.newUpdater(p.class, "producerIndex");

    /* renamed from: d  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86702d = AtomicIntegerFieldUpdater.newUpdater(p.class, "consumerIndex");

    /* renamed from: e  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f86703e = AtomicIntegerFieldUpdater.newUpdater(p.class, "blockingTasksInBuffer");
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReferenceArray<j> f86704a = new AtomicReferenceArray<>(128);
    @m8.g
    private volatile /* synthetic */ Object lastScheduledTask = null;
    @m8.g
    private volatile /* synthetic */ int producerIndex = 0;
    @m8.g
    private volatile /* synthetic */ int consumerIndex = 0;
    @m8.g
    private volatile /* synthetic */ int blockingTasksInBuffer = 0;

    public static /* synthetic */ j b(p pVar, j jVar, boolean z9, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            z9 = false;
        }
        return pVar.a(jVar, z9);
    }

    private final j c(j jVar) {
        if (jVar.f86686b.d0() == 1) {
            f86703e.incrementAndGet(this);
        }
        if (e() == 127) {
            return jVar;
        }
        int i4 = this.producerIndex & 127;
        while (this.f86704a.get(i4) != null) {
            Thread.yield();
        }
        this.f86704a.lazySet(i4, jVar);
        f86701c.incrementAndGet(this);
        return null;
    }

    private final void d(j jVar) {
        if (jVar != null) {
            if (jVar.f86686b.d0() == 1) {
                f86703e.decrementAndGet(this);
            }
        }
    }

    private final j i() {
        j andSet;
        while (true) {
            int i4 = this.consumerIndex;
            if (i4 - this.producerIndex == 0) {
                return null;
            }
            int i10 = i4 & 127;
            if (f86702d.compareAndSet(this, i4, i4 + 1) && (andSet = this.f86704a.getAndSet(i10, null)) != null) {
                d(andSet);
                return andSet;
            }
        }
    }

    private final boolean j(e eVar) {
        j i4 = i();
        if (i4 == null) {
            return false;
        }
        eVar.a(i4);
        return true;
    }

    private final long m(p pVar, boolean z9) {
        j jVar;
        do {
            jVar = (j) pVar.lastScheduledTask;
            if (jVar == null) {
                return -2L;
            }
            if (z9) {
                if (!(jVar.f86686b.d0() == 1)) {
                    return -2L;
                }
            }
            long a10 = n.f86694f.a() - jVar.f86685a;
            long j4 = n.f86690b;
            if (a10 < j4) {
                return j4 - a10;
            }
        } while (!androidx.concurrent.futures.a.a(f86700b, pVar, jVar, null));
        b(this, jVar, false, 2, null);
        return -1L;
    }

    @m8.h
    public final j a(@m8.g j jVar, boolean z9) {
        if (z9) {
            return c(jVar);
        }
        j jVar2 = (j) f86700b.getAndSet(this, jVar);
        if (jVar2 == null) {
            return null;
        }
        return c(jVar2);
    }

    public final int e() {
        return this.producerIndex - this.consumerIndex;
    }

    public final int f() {
        return this.lastScheduledTask != null ? e() + 1 : e();
    }

    public final void g(@m8.g e eVar) {
        j jVar = (j) f86700b.getAndSet(this, null);
        if (jVar != null) {
            eVar.a(jVar);
        }
        do {
        } while (j(eVar));
    }

    @m8.h
    public final j h() {
        j jVar = (j) f86700b.getAndSet(this, null);
        return jVar == null ? i() : jVar;
    }

    public final long k(@m8.g p pVar) {
        int i4 = pVar.consumerIndex;
        int i10 = pVar.producerIndex;
        AtomicReferenceArray<j> atomicReferenceArray = pVar.f86704a;
        while (true) {
            if (i4 == i10) {
                break;
            }
            int i11 = i4 & 127;
            if (pVar.blockingTasksInBuffer == 0) {
                break;
            }
            j jVar = atomicReferenceArray.get(i11);
            if (jVar != null) {
                if ((jVar.f86686b.d0() == 1) && atomicReferenceArray.compareAndSet(i11, jVar, null)) {
                    f86703e.decrementAndGet(pVar);
                    b(this, jVar, false, 2, null);
                    return -1L;
                }
            }
            i4++;
        }
        return m(pVar, true);
    }

    public final long l(@m8.g p pVar) {
        j i4 = pVar.i();
        if (i4 != null) {
            b(this, i4, false, 2, null);
            return -1L;
        }
        return m(pVar, false);
    }
}
