package androidx.paging;

import androidx.paging.ViewportHint;
import io.sentry.protocol.t;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.s;
import kotlinx.coroutines.flow.z;
import m8.g;
import m8.h;
import org.aspectj.lang.c;

/* compiled from: HintHandler.kt */
@Metadata(bv = {}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u0016\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0005R\u0018\u0010\f\u001a\u00060\u000bR\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0016"}, d2 = {"Landroidx/paging/HintHandler;", "", "Landroidx/paging/LoadType;", "loadType", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/ViewportHint;", "hintFor", "viewportHint", "", "forceSetHint", "processHint", "Landroidx/paging/HintHandler$State;", t.b.f83859d, "Landroidx/paging/HintHandler$State;", "Landroidx/paging/ViewportHint$Access;", "getLastAccessHint", "()Landroidx/paging/ViewportHint$Access;", "lastAccessHint", "<init>", "()V", "HintFlow", "State", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class HintHandler {
    @g
    private final State state = new State(this);

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HintHandler.kt */
    @Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0010\u0010\u0011R.\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Landroidx/paging/HintHandler$HintFlow;", "", "Landroidx/paging/ViewportHint;", "value", "Landroidx/paging/ViewportHint;", "getValue", "()Landroidx/paging/ViewportHint;", "setValue", "(Landroidx/paging/ViewportHint;)V", "Lkotlinx/coroutines/flow/s;", "_flow", "Lkotlinx/coroutines/flow/s;", "Lkotlinx/coroutines/flow/i;", "getFlow", "()Lkotlinx/coroutines/flow/i;", "flow", "<init>", "(Landroidx/paging/HintHandler;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    public final class HintFlow {
        @g
        private final s<ViewportHint> _flow;
        final /* synthetic */ HintHandler this$0;
        @h
        private ViewportHint value;

        public HintFlow(HintHandler this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this._flow = z.b(1, 0, BufferOverflow.DROP_OLDEST, 2, null);
        }

        @g
        public final i<ViewportHint> getFlow() {
            return this._flow;
        }

        @h
        public final ViewportHint getValue() {
            return this.value;
        }

        public final void setValue(@h ViewportHint viewportHint) {
            this.value = viewportHint;
            if (viewportHint != null) {
                this._flow.c(viewportHint);
            }
        }
    }

    /* compiled from: HintHandler.kt */
    @Metadata(bv = {}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJP\u0010\r\u001a\u00020\u000b2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022>\u0010\f\u001a:\u0012\u0017\u0012\u00150\u0005R\u00020\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\t\u0012\u0017\u0012\u00150\u0005R\u00020\u0006¢\u0006\f\b\u0007\u0012\b\b\b\u0012\u0004\b\b(\n\u0012\u0004\u0012\u00020\u000b0\u0004R\u0018\u0010\t\u001a\u00060\u0005R\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000eR\u0018\u0010\n\u001a\u00060\u0005R\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000eR(\u0010\u0010\u001a\u0004\u0018\u00010\u00022\b\u0010\u000f\u001a\u0004\u0018\u00010\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178F¢\u0006\u0006\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00180\u00178F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001a¨\u0006 "}, d2 = {"Landroidx/paging/HintHandler$State;", "", "Landroidx/paging/ViewportHint$Access;", "accessHint", "Lkotlin/Function2;", "Landroidx/paging/HintHandler$HintFlow;", "Landroidx/paging/HintHandler;", "Lkotlin/ParameterName;", "name", "prepend", "append", "", "block", "modify", "Landroidx/paging/HintHandler$HintFlow;", "<set-?>", "lastAccessHint", "Landroidx/paging/ViewportHint$Access;", "getLastAccessHint", "()Landroidx/paging/ViewportHint$Access;", "Ljava/util/concurrent/locks/ReentrantLock;", c.f91028k, "Ljava/util/concurrent/locks/ReentrantLock;", "Lkotlinx/coroutines/flow/i;", "Landroidx/paging/ViewportHint;", "getPrependFlow", "()Lkotlinx/coroutines/flow/i;", "prependFlow", "getAppendFlow", "appendFlow", "<init>", "(Landroidx/paging/HintHandler;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes.dex */
    private final class State {
        @g
        private final HintFlow append;
        @h
        private ViewportHint.Access lastAccessHint;
        @g
        private final ReentrantLock lock;
        @g
        private final HintFlow prepend;
        final /* synthetic */ HintHandler this$0;

        public State(HintHandler this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this.this$0 = this$0;
            this.prepend = new HintFlow(this$0);
            this.append = new HintFlow(this$0);
            this.lock = new ReentrantLock();
        }

        @g
        public final i<ViewportHint> getAppendFlow() {
            return this.append.getFlow();
        }

        @h
        public final ViewportHint.Access getLastAccessHint() {
            return this.lastAccessHint;
        }

        @g
        public final i<ViewportHint> getPrependFlow() {
            return this.prepend.getFlow();
        }

        public final void modify(@h ViewportHint.Access access, @g Function2<? super HintFlow, ? super HintFlow, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            ReentrantLock reentrantLock = this.lock;
            reentrantLock.lock();
            if (access != null) {
                try {
                    this.lastAccessHint = access;
                } finally {
                    reentrantLock.unlock();
                }
            }
            block.invoke(this.prepend, this.append);
            Unit unit = Unit.INSTANCE;
        }
    }

    /* compiled from: HintHandler.kt */
    @Metadata(k = 3, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            iArr[LoadType.PREPEND.ordinal()] = 1;
            iArr[LoadType.APPEND.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void forceSetHint(@g LoadType loadType, @g ViewportHint viewportHint) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        Intrinsics.checkNotNullParameter(viewportHint, "viewportHint");
        if (loadType == LoadType.PREPEND || loadType == LoadType.APPEND) {
            this.state.modify(null, new HintHandler$forceSetHint$2(loadType, viewportHint));
            return;
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("invalid load type for reset: ", loadType).toString());
    }

    @h
    public final ViewportHint.Access getLastAccessHint() {
        return this.state.getLastAccessHint();
    }

    @g
    public final i<ViewportHint> hintFor(@g LoadType loadType) {
        Intrinsics.checkNotNullParameter(loadType, "loadType");
        int i4 = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i4 != 1) {
            if (i4 == 2) {
                return this.state.getAppendFlow();
            }
            throw new IllegalArgumentException("invalid load type for hints");
        }
        return this.state.getPrependFlow();
    }

    public final void processHint(@g ViewportHint viewportHint) {
        Intrinsics.checkNotNullParameter(viewportHint, "viewportHint");
        this.state.modify(viewportHint instanceof ViewportHint.Access ? (ViewportHint.Access) viewportHint : null, new HintHandler$processHint$1(viewportHint));
    }
}
