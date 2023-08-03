package kotlinx.coroutines.flow;

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

/* compiled from: Merge.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__MergeKt$flatMapLatest$1", f = "Merge.kt", i = {}, l = {190, 190}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class FlowKt__MergeKt$flatMapLatest$1 extends SuspendLambda implements Function3<j<? super R>, T, Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f85521a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f85522b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f85523c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function2<T, Continuation<? super i<? extends R>>, Object> f85524d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__MergeKt$flatMapLatest$1(Function2<? super T, ? super Continuation<? super i<? extends R>>, ? extends Object> function2, Continuation<? super FlowKt__MergeKt$flatMapLatest$1> continuation) {
        super(3, continuation);
        this.f85524d = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Continuation<? super Unit> continuation) {
        return invoke((j) obj, (j) obj2, continuation);
    }

    @m8.h
    public final Object invoke(@m8.g j<? super R> jVar, T t9, @m8.h Continuation<? super Unit> continuation) {
        FlowKt__MergeKt$flatMapLatest$1 flowKt__MergeKt$flatMapLatest$1 = new FlowKt__MergeKt$flatMapLatest$1(this.f85524d, continuation);
        flowKt__MergeKt$flatMapLatest$1.f85522b = jVar;
        flowKt__MergeKt$flatMapLatest$1.f85523c = t9;
        return flowKt__MergeKt$flatMapLatest$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        j jVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f85521a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            jVar = (j) this.f85522b;
            Object obj2 = this.f85523c;
            Function2<T, Continuation<? super i<? extends R>>, Object> function2 = this.f85524d;
            this.f85522b = jVar;
            this.f85521a = 1;
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
            jVar = (j) this.f85522b;
            ResultKt.throwOnFailure(obj);
        }
        this.f85522b = null;
        this.f85521a = 2;
        if (k.m0(jVar, (i) obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @m8.h
    public final Object invokeSuspend$$forInline(@m8.g Object obj) {
        Object obj2 = this.f85523c;
        InlineMarker.mark(0);
        k.m0((j) this.f85522b, (i) this.f85524d.invoke(obj2, this), this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
