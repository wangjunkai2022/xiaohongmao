package androidx.paging;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PageFetcher.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Landroidx/paging/SimpleProducerScope;", "Landroidx/paging/PageEvent;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcher$injectRemoteEvents$1", f = "PageFetcher.kt", i = {}, l = {233}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PageFetcher$injectRemoteEvents$1 extends SuspendLambda implements Function2<SimpleProducerScope<PageEvent<Value>>, Continuation<? super Unit>, Object> {
    final /* synthetic */ RemoteMediatorAccessor<Key, Value> $accessor;
    final /* synthetic */ MutableLoadStateCollection $sourceStates;
    final /* synthetic */ PageFetcherSnapshot<Key, Value> $this_injectRemoteEvents;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$injectRemoteEvents$1(RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor, PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, MutableLoadStateCollection mutableLoadStateCollection, Continuation<? super PageFetcher$injectRemoteEvents$1> continuation) {
        super(2, continuation);
        this.$accessor = remoteMediatorAccessor;
        this.$this_injectRemoteEvents = pageFetcherSnapshot;
        this.$sourceStates = mutableLoadStateCollection;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        PageFetcher$injectRemoteEvents$1 pageFetcher$injectRemoteEvents$1 = new PageFetcher$injectRemoteEvents$1(this.$accessor, this.$this_injectRemoteEvents, this.$sourceStates, continuation);
        pageFetcher$injectRemoteEvents$1.L$0 = obj;
        return pageFetcher$injectRemoteEvents$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g SimpleProducerScope<PageEvent<Value>> simpleProducerScope, @h Continuation<? super Unit> continuation) {
        return ((PageFetcher$injectRemoteEvents$1) create(simpleProducerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            final SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
            i simpleChannelFlow = SimpleChannelFlowKt.simpleChannelFlow(new PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(this.$accessor.getState(), this.$this_injectRemoteEvents.getPageEventFlow(), null, this.$sourceStates));
            Object obj2 = new j<PageEvent<Value>>() { // from class: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$collect$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlinx.coroutines.flow.j
                @h
                public Object emit(PageEvent<Value> pageEvent, @g Continuation<? super Unit> continuation) {
                    Object coroutine_suspended2;
                    Object send = SimpleProducerScope.this.send(pageEvent, continuation);
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return send == coroutine_suspended2 ? send : Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (simpleChannelFlow.collect(obj2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
