package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.paging.ActiveFlowTracker;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* compiled from: CachedPagingData.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0007\u001a\u00020\u0006\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/j;", "Landroidx/paging/PagingData;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.CachedPagingDataKt$cachedIn$5", f = "CachedPagingData.kt", i = {}, l = {106}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class CachedPagingDataKt$cachedIn$5 extends SuspendLambda implements Function3<j<? super PagingData<T>>, Throwable, Continuation<? super Unit>, Object> {
    final /* synthetic */ ActiveFlowTracker $tracker;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CachedPagingDataKt$cachedIn$5(ActiveFlowTracker activeFlowTracker, Continuation<? super CachedPagingDataKt$cachedIn$5> continuation) {
        super(3, continuation);
        this.$tracker = activeFlowTracker;
    }

    @Override // kotlin.jvm.functions.Function3
    @h
    public final Object invoke(@g j<? super PagingData<T>> jVar, @h Throwable th, @h Continuation<? super Unit> continuation) {
        return new CachedPagingDataKt$cachedIn$5(this.$tracker, continuation).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            ActiveFlowTracker activeFlowTracker = this.$tracker;
            if (activeFlowTracker != null) {
                ActiveFlowTracker.FlowType flowType = ActiveFlowTracker.FlowType.PAGED_DATA_FLOW;
                this.label = 1;
                if (activeFlowTracker.onComplete(flowType, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
