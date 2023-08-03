package androidx.paging;

import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.j0;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001\"\u0004\b\u0002\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"T1", "T2", "R", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$1$1", f = "FlowExt.kt", i = {}, l = {222}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class FlowExtKt$combineWithoutBatching$2$1$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ SimpleProducerScope<R> $$this$simpleChannelFlow;
    final /* synthetic */ i<Object> $flow;
    final /* synthetic */ AtomicInteger $incompleteFlows;
    final /* synthetic */ int $index;
    final /* synthetic */ UnbatchedFlowCombiner<T1, T2> $unbatchedFlowCombiner;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowExtKt$combineWithoutBatching$2$1$1(i<? extends Object> iVar, AtomicInteger atomicInteger, SimpleProducerScope<R> simpleProducerScope, UnbatchedFlowCombiner<T1, T2> unbatchedFlowCombiner, int i4, Continuation<? super FlowExtKt$combineWithoutBatching$2$1$1> continuation) {
        super(2, continuation);
        this.$flow = iVar;
        this.$incompleteFlows = atomicInteger;
        this.$$this$simpleChannelFlow = simpleProducerScope;
        this.$unbatchedFlowCombiner = unbatchedFlowCombiner;
        this.$index = i4;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new FlowExtKt$combineWithoutBatching$2$1$1(this.$flow, this.$incompleteFlows, this.$$this$simpleChannelFlow, this.$unbatchedFlowCombiner, this.$index, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((FlowExtKt$combineWithoutBatching$2$1$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        AtomicInteger atomicInteger;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        try {
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                i<Object> iVar = this.$flow;
                FlowExtKt$combineWithoutBatching$2$1$1$invokeSuspend$$inlined$collect$1 flowExtKt$combineWithoutBatching$2$1$1$invokeSuspend$$inlined$collect$1 = new FlowExtKt$combineWithoutBatching$2$1$1$invokeSuspend$$inlined$collect$1(this.$unbatchedFlowCombiner, this.$index);
                this.label = 1;
                if (iVar.collect(flowExtKt$combineWithoutBatching$2$1$1$invokeSuspend$$inlined$collect$1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                ResultKt.throwOnFailure(obj);
            }
            if (atomicInteger.decrementAndGet() == 0) {
                j0.a.a(this.$$this$simpleChannelFlow, null, 1, null);
            }
            return Unit.INSTANCE;
        } finally {
            if (this.$incompleteFlows.decrementAndGet() == 0) {
                j0.a.a(this.$$this$simpleChannelFlow, null, 1, null);
            }
        }
    }
}
