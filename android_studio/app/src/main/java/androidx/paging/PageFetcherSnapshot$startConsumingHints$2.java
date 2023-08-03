package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.paging.PageFetcherSnapshotState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.sync.c;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PageFetcherSnapshot.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$2", f = "PageFetcherSnapshot.kt", i = {0, 0}, l = {TypedValues.Motion.TYPE_DRAW_PATH, 229}, m = "invokeSuspend", n = {"this_$iv", "$this$withLock_u24default$iv$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class PageFetcherSnapshot$startConsumingHints$2 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$startConsumingHints$2(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, Continuation<? super PageFetcherSnapshot$startConsumingHints$2> continuation) {
        super(2, continuation);
        this.this$0 = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new PageFetcherSnapshot$startConsumingHints$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((PageFetcherSnapshot$startConsumingHints$2) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        PageFetcherSnapshot pageFetcherSnapshot;
        PageFetcherSnapshotState.Holder holder;
        c cVar;
        Object collectAsGenerationalViewportHints;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        try {
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                pageFetcherSnapshot = this.this$0;
                holder = pageFetcherSnapshot.stateHolder;
                c cVar2 = holder.lock;
                this.L$0 = holder;
                this.L$1 = cVar2;
                this.L$2 = pageFetcherSnapshot;
                this.label = 1;
                if (cVar2.c(null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                cVar = cVar2;
            } else if (i4 != 1) {
                if (i4 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            } else {
                pageFetcherSnapshot = (PageFetcherSnapshot) this.L$2;
                cVar = (c) this.L$1;
                holder = (PageFetcherSnapshotState.Holder) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            i<Integer> consumePrependGenerationIdAsFlow = holder.state.consumePrependGenerationIdAsFlow();
            cVar.d(null);
            LoadType loadType = LoadType.PREPEND;
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 2;
            collectAsGenerationalViewportHints = pageFetcherSnapshot.collectAsGenerationalViewportHints(consumePrependGenerationIdAsFlow, loadType, this);
            if (collectAsGenerationalViewportHints == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            cVar.d(null);
            throw th;
        }
    }
}
