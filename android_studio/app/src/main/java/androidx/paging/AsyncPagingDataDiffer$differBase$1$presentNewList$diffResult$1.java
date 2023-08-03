package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
import androidx.recyclerview.widget.DiffUtil;
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
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u0002H\u008a@"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "Landroidx/paging/NullPaddedDiffResult;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1", f = "AsyncPagingDataDiffer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1 extends SuspendLambda implements Function2<s0, Continuation<? super NullPaddedDiffResult>, Object> {
    final /* synthetic */ NullPaddedList<T> $newList;
    final /* synthetic */ NullPaddedList<T> $previousList;
    int label;
    final /* synthetic */ AsyncPagingDataDiffer<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1(NullPaddedList<T> nullPaddedList, NullPaddedList<T> nullPaddedList2, AsyncPagingDataDiffer<T> asyncPagingDataDiffer, Continuation<? super AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1> continuation) {
        super(2, continuation);
        this.$previousList = nullPaddedList;
        this.$newList = nullPaddedList2;
        this.this$0 = asyncPagingDataDiffer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1(this.$previousList, this.$newList, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super NullPaddedDiffResult> continuation) {
        return ((AsyncPagingDataDiffer$differBase$1$presentNewList$diffResult$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        DiffUtil.ItemCallback itemCallback;
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            NullPaddedList<T> nullPaddedList = this.$previousList;
            NullPaddedList<T> nullPaddedList2 = this.$newList;
            itemCallback = ((AsyncPagingDataDiffer) this.this$0).diffCallback;
            return NullPaddedListDiffHelperKt.computeDiff(nullPaddedList, nullPaddedList2, itemCallback);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
