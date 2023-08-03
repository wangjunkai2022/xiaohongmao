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
@DebugMetadata(c = "androidx.paging.ContiguousPagedList$tryDispatchBoundaryCallbacks$1", f = "ContiguousPagedList.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class ContiguousPagedList$tryDispatchBoundaryCallbacks$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $dispatchBegin;
    final /* synthetic */ boolean $dispatchEnd;
    int label;
    final /* synthetic */ ContiguousPagedList<K, V> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContiguousPagedList$tryDispatchBoundaryCallbacks$1(ContiguousPagedList<K, V> contiguousPagedList, boolean z9, boolean z10, Continuation<? super ContiguousPagedList$tryDispatchBoundaryCallbacks$1> continuation) {
        super(2, continuation);
        this.this$0 = contiguousPagedList;
        this.$dispatchBegin = z9;
        this.$dispatchEnd = z10;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        return new ContiguousPagedList$tryDispatchBoundaryCallbacks$1(this.this$0, this.$dispatchBegin, this.$dispatchEnd, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g s0 s0Var, @h Continuation<? super Unit> continuation) {
        return ((ContiguousPagedList$tryDispatchBoundaryCallbacks$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.dispatchBoundaryCallbacks(this.$dispatchBegin, this.$dispatchEnd);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
