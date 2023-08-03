package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;

/* compiled from: LocalAtomics.common.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0006\".\u0010\u0003\u001a\u00020\u0002*\u00060\u0000j\u0002`\u00012\u0006\u0010\u0003\u001a\u00020\u00028À\u0002@À\u0002X\u0080\u000e¢\u0006\f\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Ljava/util/concurrent/atomic/AtomicInteger;", "Lkotlinx/coroutines/internal/LocalAtomicInt;", "", "value", "a", "(Ljava/util/concurrent/atomic/AtomicInteger;)I", "b", "(Ljava/util/concurrent/atomic/AtomicInteger;I)V", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class u {
    public static final int a(@m8.g AtomicInteger atomicInteger) {
        return atomicInteger.get();
    }

    public static final void b(@m8.g AtomicInteger atomicInteger, int i4) {
        atomicInteger.set(i4);
    }
}
