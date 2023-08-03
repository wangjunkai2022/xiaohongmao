package androidx.paging;

import androidx.annotation.VisibleForTesting;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import m8.g;
import m8.h;

/* compiled from: CachedPagingData.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\ba\u0018\u00002\u00020\u0001:\u0001\bJ\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\t"}, d2 = {"Landroidx/paging/ActiveFlowTracker;", "", "onComplete", "", "flowType", "Landroidx/paging/ActiveFlowTracker$FlowType;", "(Landroidx/paging/ActiveFlowTracker$FlowType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onStart", "FlowType", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting
/* loaded from: classes.dex */
public interface ActiveFlowTracker {

    /* compiled from: CachedPagingData.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/ActiveFlowTracker$FlowType;", "", "(Ljava/lang/String;I)V", "PAGED_DATA_FLOW", "PAGE_EVENT_FLOW", "paging-common"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes.dex */
    public enum FlowType {
        PAGED_DATA_FLOW,
        PAGE_EVENT_FLOW
    }

    @h
    Object onComplete(@g FlowType flowType, @g Continuation<? super Unit> continuation);

    @h
    Object onStart(@g FlowType flowType, @g Continuation<? super Unit> continuation);
}
