package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.n0;

/* compiled from: Dispatcher.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0017J\u001c\u0010\t\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005H\u0016¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/scheduling/o;", "Lkotlinx/coroutines/n0;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatchYield", "dispatch", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
final class o extends n0 {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final o f86699a = new o();

    private o() {
    }

    @Override // kotlinx.coroutines.n0
    public void dispatch(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        c.f86667g.r0(runnable, n.f86698j, false);
    }

    @Override // kotlinx.coroutines.n0
    @e2
    public void dispatchYield(@m8.g CoroutineContext coroutineContext, @m8.g Runnable runnable) {
        c.f86667g.r0(runnable, n.f86698j, true);
    }
}
