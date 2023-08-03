package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.paging.PageEvent;
import androidx.paging.PageFetcherSnapshotState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.sync.c;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PageFetcherSnapshot.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u00040\u0003H\u008a@"}, d2 = {"", "Key", "Value", "Lkotlinx/coroutines/flow/j;", "Landroidx/paging/PageEvent;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$2", f = "PageFetcherSnapshot.kt", i = {0, 0}, l = {TypedValues.Motion.TYPE_DRAW_PATH, 174}, m = "invokeSuspend", n = {"this_$iv", "$this$withLock_u24default$iv$iv"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class PageFetcherSnapshot$pageEventFlow$2 extends SuspendLambda implements Function2<j<? super PageEvent<Value>>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcherSnapshot$pageEventFlow$2(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, Continuation<? super PageFetcherSnapshot$pageEventFlow$2> continuation) {
        super(2, continuation);
        this.this$0 = pageFetcherSnapshot;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        PageFetcherSnapshot$pageEventFlow$2 pageFetcherSnapshot$pageEventFlow$2 = new PageFetcherSnapshot$pageEventFlow$2(this.this$0, continuation);
        pageFetcherSnapshot$pageEventFlow$2.L$0 = obj;
        return pageFetcherSnapshot$pageEventFlow$2;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g j<? super PageEvent<Value>> jVar, @h Continuation<? super Unit> continuation) {
        return ((PageFetcherSnapshot$pageEventFlow$2) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        j jVar;
        PageFetcherSnapshotState.Holder holder;
        c cVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        try {
            if (i4 == 0) {
                ResultKt.throwOnFailure(obj);
                jVar = (j) this.L$0;
                holder = ((PageFetcherSnapshot) this.this$0).stateHolder;
                c cVar2 = holder.lock;
                this.L$0 = holder;
                this.L$1 = cVar2;
                this.L$2 = jVar;
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
                jVar = (j) this.L$2;
                cVar = (c) this.L$1;
                holder = (PageFetcherSnapshotState.Holder) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            LoadStates snapshot = holder.state.getSourceLoadStates$paging_common().snapshot();
            cVar.d(null);
            PageEvent.LoadStateUpdate loadStateUpdate = new PageEvent.LoadStateUpdate(snapshot, null, 2, null);
            this.L$0 = null;
            this.L$1 = null;
            this.L$2 = null;
            this.label = 2;
            if (jVar.emit(loadStateUpdate, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            cVar.d(null);
            throw th;
        }
    }
}
