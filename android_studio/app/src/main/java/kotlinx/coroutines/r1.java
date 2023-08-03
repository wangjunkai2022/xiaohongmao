package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlinx.coroutines.q1;

/* compiled from: EventLoop.kt */
@Metadata(bv = {}, d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0003\u001a\u00020\u0002H\u0004J\u0018\u0010\b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0014R\u0014\u0010\f\u001a\u00020\t8$X¤\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/r1;", "Lkotlinx/coroutines/p1;", "", "E0", "", "now", "Lkotlinx/coroutines/q1$c;", "delayedTask", "D0", "Ljava/lang/Thread;", "C0", "()Ljava/lang/Thread;", "thread", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public abstract class r1 extends p1 {
    @m8.g
    protected abstract Thread C0();

    /* JADX INFO: Access modifiers changed from: protected */
    public void D0(long j4, @m8.g q1.c cVar) {
        w0.f86846f.M0(j4, cVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void E0() {
        Unit unit;
        Thread C0 = C0();
        if (Thread.currentThread() != C0) {
            b b10 = c.b();
            if (b10 == null) {
                unit = null;
            } else {
                b10.g(C0);
                unit = Unit.INSTANCE;
            }
            if (unit == null) {
                LockSupport.unpark(C0);
            }
        }
    }
}
