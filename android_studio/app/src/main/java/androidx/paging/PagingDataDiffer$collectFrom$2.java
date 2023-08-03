package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.n0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PagingDataDiffer.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\b\b\u0000\u0010\u0001*\u00020\u0000H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.PagingDataDiffer$collectFrom$2", f = "PagingDataDiffer.kt", i = {}, l = {467}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PagingDataDiffer$collectFrom$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ PagingData<T> $pagingData;
    int label;
    final /* synthetic */ PagingDataDiffer<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagingDataDiffer$collectFrom$2(PagingDataDiffer<T> pagingDataDiffer, PagingData<T> pagingData, Continuation<? super PagingDataDiffer$collectFrom$2> continuation) {
        super(1, continuation);
        this.this$0 = pagingDataDiffer;
        this.$pagingData = pagingData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@g Continuation<?> continuation) {
        return new PagingDataDiffer$collectFrom$2(this.this$0, this.$pagingData, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    @h
    public final Object invoke(@h Continuation<? super Unit> continuation) {
        return ((PagingDataDiffer$collectFrom$2) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            ((PagingDataDiffer) this.this$0).receiver = this.$pagingData.getReceiver$paging_common();
            i flow$paging_common = this.$pagingData.getFlow$paging_common();
            final PagingDataDiffer<T> pagingDataDiffer = this.this$0;
            Object obj2 = new j<PageEvent<T>>() { // from class: androidx.paging.PagingDataDiffer$collectFrom$2$invokeSuspend$$inlined$collect$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // kotlinx.coroutines.flow.j
                @h
                public Object emit(PageEvent<T> pageEvent, @g Continuation<? super Unit> continuation) {
                    n0 n0Var;
                    Object coroutine_suspended2;
                    n0Var = PagingDataDiffer.this.mainDispatcher;
                    Object h4 = kotlinx.coroutines.j.h(n0Var, new PagingDataDiffer$collectFrom$2$1$1(pageEvent, PagingDataDiffer.this, null), continuation);
                    coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    return h4 == coroutine_suspended2 ? h4 : Unit.INSTANCE;
                }
            };
            this.label = 1;
            if (flow$paging_common.collect(obj2, this) == coroutine_suspended) {
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
