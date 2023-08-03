package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.s0;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AsyncPagingDataDiffer.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.AsyncPagingDataDiffer$submitData$2", f = "AsyncPagingDataDiffer.kt", i = {}, l = {163}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class AsyncPagingDataDiffer$submitData$2 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $id;
    final /* synthetic */ PagingData<T> $pagingData;
    int label;
    final /* synthetic */ AsyncPagingDataDiffer<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer$submitData$2(AsyncPagingDataDiffer<T> asyncPagingDataDiffer, int i4, PagingData<T> pagingData, Continuation<? super AsyncPagingDataDiffer$submitData$2> continuation) {
        super(2, continuation);
        this.this$0 = asyncPagingDataDiffer;
        this.$id = i4;
        this.$pagingData = pagingData;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new AsyncPagingDataDiffer$submitData$2(this.this$0, this.$id, this.$pagingData, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((AsyncPagingDataDiffer$submitData$2) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        AtomicInteger atomicInteger;
        AsyncPagingDataDiffer$differBase$1 asyncPagingDataDiffer$differBase$1;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            atomicInteger = ((AsyncPagingDataDiffer) this.this$0).submitDataId;
            if (atomicInteger.get() == this.$id) {
                asyncPagingDataDiffer$differBase$1 = ((AsyncPagingDataDiffer) this.this$0).differBase;
                Object obj2 = this.$pagingData;
                this.label = 1;
                if (asyncPagingDataDiffer$differBase$1.collectFrom(obj2, this) == coroutine_suspended) {
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
