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
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0004\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.FlowExtKt$simpleScan$1", f = "FlowExt.kt", i = {0, 0}, l = {52, 222}, m = "invokeSuspend", n = {"$this$flow", "accumulator"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class FlowExtKt$simpleScan$1 extends SuspendLambda implements Function2<j<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ R $initial;
    final /* synthetic */ Function3<R, T, Continuation<? super R>, Object> $operation;
    final /* synthetic */ i<T> $this_simpleScan;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtKt$simpleScan$1(R r9, i<? extends T> iVar, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super FlowExtKt$simpleScan$1> continuation) {
        super(2, continuation);
        this.$initial = r9;
        this.$this_simpleScan = iVar;
        this.$operation = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @g
    public final Continuation<Unit> create(@h Object obj, @g Continuation<?> continuation) {
        FlowExtKt$simpleScan$1 flowExtKt$simpleScan$1 = new FlowExtKt$simpleScan$1(this.$initial, this.$this_simpleScan, this.$operation, continuation);
        flowExtKt$simpleScan$1.L$0 = obj;
        return flowExtKt$simpleScan$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @h
    public final Object invoke(@g j<? super R> jVar, @h Continuation<? super Unit> continuation) {
        return ((FlowExtKt$simpleScan$1) create(jVar, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [R, T, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        Ref.ObjectRef objectRef;
        j jVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            j jVar2 = (j) this.L$0;
            objectRef = new Ref.ObjectRef();
            ?? r42 = this.$initial;
            objectRef.element = r42;
            this.L$0 = jVar2;
            this.L$1 = objectRef;
            this.label = 1;
            if (jVar2.emit(r42, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            jVar = jVar2;
        } else if (i4 != 1) {
            if (i4 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return Unit.INSTANCE;
        } else {
            objectRef = (Ref.ObjectRef) this.L$1;
            jVar = (j) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        i<T> iVar = this.$this_simpleScan;
        FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1 flowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1 = new FlowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1(objectRef, this.$operation, jVar);
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (iVar.collect(flowExtKt$simpleScan$1$invokeSuspend$$inlined$collect$1, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
