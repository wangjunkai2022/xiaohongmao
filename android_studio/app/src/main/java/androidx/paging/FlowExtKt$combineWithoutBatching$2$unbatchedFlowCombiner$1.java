package androidx.paging;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.channels.j0;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\b\u001a\u00020\u0007\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u00022\u0006\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00028\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u008a@"}, d2 = {"T1", "T2", "R", "t1", "t2", "Landroidx/paging/CombineSource;", "updateFrom", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1", f = "FlowExt.kt", i = {}, l = {139, 139}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1 extends SuspendLambda implements Function4<T1, T2, CombineSource, Continuation<? super Unit>, Object> {
    final /* synthetic */ SimpleProducerScope<R> $$this$simpleChannelFlow;
    final /* synthetic */ Function4<T1, T2, CombineSource, Continuation<? super R>, Object> $transform;
    /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    /* synthetic */ Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(SimpleProducerScope<R> simpleProducerScope, Function4<? super T1, ? super T2, ? super CombineSource, ? super Continuation<? super R>, ? extends Object> function4, Continuation<? super FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1> continuation) {
        super(4, continuation);
        this.$$this$simpleChannelFlow = simpleProducerScope;
        this.$transform = function4;
    }

    @h
    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(T1 t12, T2 t22, @g CombineSource combineSource, @h Continuation<? super Unit> continuation) {
        FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1 flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1 = new FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1(this.$$this$simpleChannelFlow, this.$transform, continuation);
        flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.L$0 = t12;
        flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.L$1 = t22;
        flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.L$2 = combineSource;
        return flowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, CombineSource combineSource, Continuation<? super Unit> continuation) {
        return invoke2((FlowExtKt$combineWithoutBatching$2$unbatchedFlowCombiner$1) obj, obj2, combineSource, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        SimpleProducerScope simpleProducerScope;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            SimpleProducerScope simpleProducerScope2 = this.$$this$simpleChannelFlow;
            Function4<T1, T2, CombineSource, Continuation<? super R>, Object> function4 = this.$transform;
            this.L$0 = simpleProducerScope2;
            this.L$1 = null;
            this.label = 1;
            obj = function4.invoke(this.L$0, this.L$1, (CombineSource) this.L$2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            simpleProducerScope = simpleProducerScope2;
        } else if (i4 != 1) {
            if (i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        } else {
            simpleProducerScope = (SimpleProducerScope) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        this.L$0 = null;
        this.label = 2;
        if (simpleProducerScope.send(obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @h
    public final Object invokeSuspend$$forInline(@g Object obj) {
        j0 j0Var = this.$$this$simpleChannelFlow;
        Object invoke = this.$transform.invoke(this.L$0, this.L$1, (CombineSource) this.L$2, this);
        InlineMarker.mark(0);
        j0Var.send(invoke, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
