package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: EventLoop.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\b\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\b\u0010\u0003\u001a\u00020\u0002H\u0007\u001a\u0019\u0010\u0007\u001a\u00020\u00052\u000e\b\u0004\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0080\b¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/p1;", "a", "", "c", "Lkotlin/Function0;", "", "block", "b", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class s1 {
    @m8.g
    public static final p1 a() {
        return new i(Thread.currentThread());
    }

    public static final void b(@m8.g Function0<Unit> function0) {
        function0.invoke();
    }

    @e2
    public static final long c() {
        p1 a10 = p3.f86355a.a();
        if (a10 == null) {
            return Long.MAX_VALUE;
        }
        return a10.z0();
    }
}
