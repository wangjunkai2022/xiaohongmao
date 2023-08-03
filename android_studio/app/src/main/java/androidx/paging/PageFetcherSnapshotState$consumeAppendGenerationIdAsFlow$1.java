package androidx.paging;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.m;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PageFetcherSnapshotState.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Lkotlinx/coroutines/flow/j;", "", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1", f = "PageFetcherSnapshotState.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1 extends SuspendLambda implements Function2<j<? super Integer>, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ PageFetcherSnapshotState<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, Continuation<? super PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1> continuation) {
        super(2, continuation);
        this.this$0 = pageFetcherSnapshotState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g j<? super Integer> jVar, @h Continuation<? super Unit> continuation) {
        return ((PageFetcherSnapshotState$consumeAppendGenerationIdAsFlow$1) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        m mVar;
        int i4;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            mVar = ((PageFetcherSnapshotState) this.this$0).appendGenerationIdCh;
            i4 = ((PageFetcherSnapshotState) this.this$0).appendGenerationId;
            mVar.mo51trySendJP2dKIU(Boxing.boxInt(i4));
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
