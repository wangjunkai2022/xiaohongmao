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

/* compiled from: Zip.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0006\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u0000\u0018\u0001\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u00028\u00010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/j;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ZipKt$combineUnsafe$1$1", f = "Zip.kt", i = {}, l = {262, 262}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes4.dex */
public final class FlowKt__ZipKt$combineUnsafe$1$1 extends SuspendLambda implements Function3<j<? super R>, T[], Continuation<? super Unit>, Object> {

    /* renamed from: a  reason: collision with root package name */
    int f85827a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ Object f85828b;

    /* renamed from: c  reason: collision with root package name */
    /* synthetic */ Object f85829c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ Function2<T[], Continuation<? super R>, Object> f85830d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__ZipKt$combineUnsafe$1$1(Function2<? super T[], ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super FlowKt__ZipKt$combineUnsafe$1$1> continuation) {
        super(3, continuation);
        this.f85830d = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    @m8.h
    public final Object invoke(@m8.g j<? super R> jVar, @m8.g T[] tArr, @m8.h Continuation<? super Unit> continuation) {
        FlowKt__ZipKt$combineUnsafe$1$1 flowKt__ZipKt$combineUnsafe$1$1 = new FlowKt__ZipKt$combineUnsafe$1$1(this.f85830d, continuation);
        flowKt__ZipKt$combineUnsafe$1$1.f85828b = jVar;
        flowKt__ZipKt$combineUnsafe$1$1.f85829c = tArr;
        return flowKt__ZipKt$combineUnsafe$1$1.invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        j jVar;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.f85827a;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            jVar = (j) this.f85828b;
            Function2<T[], Continuation<? super R>, Object> function2 = this.f85830d;
            this.f85828b = jVar;
            this.f85827a = 1;
            obj = function2.invoke((Object[]) this.f85829c, this);
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
            jVar = (j) this.f85828b;
            ResultKt.throwOnFailure(obj);
        }
        this.f85828b = null;
        this.f85827a = 2;
        if (jVar.emit(obj, this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @m8.h
    public final Object invokeSuspend$$forInline(@m8.g Object obj) {
        Object invoke = this.f85830d.invoke((Object[]) this.f85829c, this);
        InlineMarker.mark(0);
        ((j) this.f85828b).emit(invoke, this);
        InlineMarker.mark(1);
        return Unit.INSTANCE;
    }
}
