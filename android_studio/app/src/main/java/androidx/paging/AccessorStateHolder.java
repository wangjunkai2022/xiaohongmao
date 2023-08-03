package androidx.paging;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.h0;
import kotlinx.coroutines.flow.j0;
import kotlinx.coroutines.flow.t;
import m8.g;
import org.aspectj.lang.c;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RemoteMediatorAccessor.kt */
@Metadata(bv = {}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\b\b\u0001\u0010\u0003*\u00020\u00012\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J3\u0010\b\u001a\u00028\u0002\"\u0004\b\u0002\u0010\u00042\u001e\u0010\u0007\u001a\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0004\u0012\u00028\u00020\u0005¢\u0006\u0004\b\b\u0010\tR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\fR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00138F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Landroidx/paging/AccessorStateHolder;", "", "Key", "Value", "R", "Lkotlin/Function1;", "Landroidx/paging/AccessorState;", "block", "use", "(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "Ljava/util/concurrent/locks/ReentrantLock;", c.f91028k, "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/flow/t;", "Landroidx/paging/LoadStates;", "_loadStates", "Lkotlinx/coroutines/flow/t;", "internalState", "Landroidx/paging/AccessorState;", "Lkotlinx/coroutines/flow/h0;", "getLoadStates", "()Lkotlinx/coroutines/flow/h0;", "loadStates", "<init>", "()V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class AccessorStateHolder<Key, Value> {
    @g
    private final ReentrantLock lock = new ReentrantLock();
    @g
    private final t<LoadStates> _loadStates = j0.a(LoadStates.Companion.getIDLE());
    @g
    private final AccessorState<Key, Value> internalState = new AccessorState<>();

    @g
    public final h0<LoadStates> getLoadStates() {
        return this._loadStates;
    }

    public final <R> R use(@g Function1<? super AccessorState<Key, Value>, ? extends R> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            R invoke = block.invoke(this.internalState);
            this._loadStates.setValue(this.internalState.computeLoadStates());
            return invoke;
        } finally {
            reentrantLock.unlock();
        }
    }
}
