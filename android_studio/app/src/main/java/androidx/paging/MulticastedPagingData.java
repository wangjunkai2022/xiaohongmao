package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.k;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CachedPagingData.kt */
@Metadata(bv = {}, d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B)\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0019\u0010\u001aJ\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003J\u0013\u0010\u0006\u001a\u00020\u0005H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001d\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\u00038\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00118\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00168\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Landroidx/paging/MulticastedPagingData;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/paging/PagingData;", "asPagingData", "", "close", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/s0;", "scope", "Lkotlinx/coroutines/s0;", "getScope", "()Lkotlinx/coroutines/s0;", "parent", "Landroidx/paging/PagingData;", "getParent", "()Landroidx/paging/PagingData;", "Landroidx/paging/ActiveFlowTracker;", "tracker", "Landroidx/paging/ActiveFlowTracker;", "getTracker", "()Landroidx/paging/ActiveFlowTracker;", "Landroidx/paging/CachedPageEventFlow;", "accumulated", "Landroidx/paging/CachedPageEventFlow;", "<init>", "(Lkotlinx/coroutines/s0;Landroidx/paging/PagingData;Landroidx/paging/ActiveFlowTracker;)V", "paging-common"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class MulticastedPagingData<T> {
    @g
    private final CachedPageEventFlow<T> accumulated;
    @g
    private final PagingData<T> parent;
    @g
    private final s0 scope;
    @h
    private final ActiveFlowTracker tracker;

    public MulticastedPagingData(@g s0 scope, @g PagingData<T> parent, @h ActiveFlowTracker activeFlowTracker) {
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.scope = scope;
        this.parent = parent;
        this.tracker = activeFlowTracker;
        this.accumulated = new CachedPageEventFlow<>(k.d1(k.l1(parent.getFlow$paging_common(), new MulticastedPagingData$accumulated$1(this, null)), new MulticastedPagingData$accumulated$2(this, null)), scope);
    }

    @g
    public final PagingData<T> asPagingData() {
        return new PagingData<>(this.accumulated.getDownstreamFlow(), this.parent.getReceiver$paging_common());
    }

    @h
    public final Object close(@g Continuation<? super Unit> continuation) {
        this.accumulated.close();
        return Unit.INSTANCE;
    }

    @g
    public final PagingData<T> getParent() {
        return this.parent;
    }

    @g
    public final s0 getScope() {
        return this.scope;
    }

    @h
    public final ActiveFlowTracker getTracker() {
        return this.tracker;
    }

    public /* synthetic */ MulticastedPagingData(s0 s0Var, PagingData pagingData, ActiveFlowTracker activeFlowTracker, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(s0Var, pagingData, (i4 & 4) != 0 ? null : activeFlowTracker);
    }
}
