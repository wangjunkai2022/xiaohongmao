package androidx.paging;

import androidx.exifinterface.media.ExifInterface;
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
/* compiled from: ContiguousPagedList.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0012\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u0000*\u00020\u0003H\u008a@"}, d2 = {"", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.ContiguousPagedList$deferBoundaryCallbacks$1", f = "ContiguousPagedList.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class ContiguousPagedList$deferBoundaryCallbacks$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $deferBegin;
    final /* synthetic */ boolean $deferEmpty;
    final /* synthetic */ boolean $deferEnd;
    int label;
    final /* synthetic */ ContiguousPagedList<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContiguousPagedList$deferBoundaryCallbacks$1(boolean z9, ContiguousPagedList<K, V> contiguousPagedList, boolean z10, boolean z11, Continuation<? super ContiguousPagedList$deferBoundaryCallbacks$1> continuation) {
        super(2, continuation);
        this.$deferEmpty = z9;
        this.this$0 = contiguousPagedList;
        this.$deferBegin = z10;
        this.$deferEnd = z11;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new ContiguousPagedList$deferBoundaryCallbacks$1(this.$deferEmpty, this.this$0, this.$deferBegin, this.$deferEnd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((ContiguousPagedList$deferBoundaryCallbacks$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            if (this.$deferEmpty) {
                this.this$0.getBoundaryCallback$paging_common().onZeroItemsLoaded();
            }
            if (this.$deferBegin) {
                ((ContiguousPagedList) this.this$0).boundaryCallbackBeginDeferred = true;
            }
            if (this.$deferEnd) {
                ((ContiguousPagedList) this.this$0).boundaryCallbackEndDeferred = true;
            }
            this.this$0.tryDispatchBoundaryCallbacks(false);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
