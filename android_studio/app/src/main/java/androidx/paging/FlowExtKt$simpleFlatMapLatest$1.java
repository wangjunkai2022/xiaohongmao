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
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.i;
import kotlinx.coroutines.flow.j;
import kotlinx.coroutines.flow.k;
import m8.g;
import m8.h;

/* compiled from: FlowExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "<anonymous>"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "androidx.paging.FlowExtKt$simpleFlatMapLatest$1", f = "FlowExt.kt", i = {}, l = {96, 96}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class FlowExtKt$simpleFlatMapLatest$1 extends SuspendLambda implements Function3<j<? super R>, T, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<T, Continuation<? super i<? extends R>>, Object> $transform;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowExtKt$simpleFlatMapLatest$1(Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2, Continuation<? super FlowExtKt$simpleFlatMapLatest$1> continuation) {
        super(3, continuation);
        this.$transform = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Continuation<? super Unit> continuation) {
        return invoke((j) obj, (j) obj2, continuation);
    }

    @h
    public final Object invoke(@g j<? super R> jVar, T t9, @h Continuation<? super Unit> continuation) {
        FlowExtKt$simpleFlatMapLatest$1 flowExtKt$simpleFlatMapLatest$1 = new FlowExtKt$simpleFlatMapLatest$1(this.$transform, continuation);
        flowExtKt$simpleFlatMapLatest$1.L$0 = jVar;
        flowExtKt$simpleFlatMapLatest$1.L$1 = t9;
        return flowExtKt$simpleFlatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @h
    public final Object invokeSuspend(@g Object obj) {
        Object coroutine_suspended;
        j jVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            jVar = (j) this.L$0;
            Object obj2 = this.L$1;
            Function2<T, Continuation<? super i<? extends R>>, Object> function2 = this.$transform;
            this.L$0 = jVar;
            this.label = 1;
            obj = function2.invoke(obj2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            if (i4 == 2) {
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            jVar = (j) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        this.L$0 = null;
        this.label = 2;
        if (k.m0(jVar, (i) obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @h
    public final Object invokeSuspend$$forInline(@g Object obj) {
        Object obj2 = this.L$1;
        InlineMarker.mark(0);
        k.m0((j) this.L$0, (i) this.$transform.invoke(obj2, this), this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
