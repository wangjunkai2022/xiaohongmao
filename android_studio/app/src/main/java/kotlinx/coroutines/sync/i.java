package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Metadata;
import kotlinx.coroutines.internal.m0;
import kotlinx.coroutines.internal.p0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Semaphore.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0000\u0012\u0006\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0086\b¢\u0006\u0004\b\u0005\u0010\u0006J\"\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0086\b¢\u0006\u0004\b\t\u0010\nJ,\u0010\r\u001a\u00020\f2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u000b\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0086\b¢\u0006\u0004\b\r\u0010\u000eJ$\u0010\u000f\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0086\b¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0018\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/sync/i;", "Lkotlinx/coroutines/internal/m0;", "", "index", "", "u", "(I)Ljava/lang/Object;", "value", "", "w", "(ILjava/lang/Object;)V", "expected", "", "t", "(ILjava/lang/Object;Ljava/lang/Object;)Z", "v", "(ILjava/lang/Object;)Ljava/lang/Object;", "s", "(I)V", "", "toString", "()Ljava/lang/String;", "p", "()I", "maxSlots", "", "id", "prev", "pointers", "<init>", "(JLkotlinx/coroutines/sync/i;I)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class i extends m0<i> {
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    /* synthetic */ AtomicReferenceArray f86798e;

    public i(long j4, @m8.h i iVar, int i4) {
        super(j4, iVar, i4);
        int i10;
        i10 = h.f86793f;
        this.f86798e = new AtomicReferenceArray(i10);
    }

    @Override // kotlinx.coroutines.internal.m0
    public int p() {
        int i4;
        i4 = h.f86793f;
        return i4;
    }

    public final void s(int i4) {
        p0 p0Var;
        p0Var = h.f86792e;
        this.f86798e.set(i4, p0Var);
        q();
    }

    public final boolean t(int i4, @m8.h Object obj, @m8.h Object obj2) {
        return this.f86798e.compareAndSet(i4, obj, obj2);
    }

    @m8.g
    public String toString() {
        return "SemaphoreSegment[id=" + o() + ", hashCode=" + hashCode() + ']';
    }

    @m8.h
    public final Object u(int i4) {
        return this.f86798e.get(i4);
    }

    @m8.h
    public final Object v(int i4, @m8.h Object obj) {
        return this.f86798e.getAndSet(i4, obj);
    }

    public final void w(int i4, @m8.h Object obj) {
        this.f86798e.set(i4, obj);
    }
}
