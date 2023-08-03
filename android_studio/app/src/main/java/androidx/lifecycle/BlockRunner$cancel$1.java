package androidx.lifecycle;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.exoplayer2.extractor.ts.a0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.b1;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CoroutineLiveData.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/s0;", "", "<anonymous>"}, k = 3, mv = {1, 6, 0})
@DebugMetadata(c = "androidx.lifecycle.BlockRunner$cancel$1", f = "CoroutineLiveData.kt", i = {}, l = {a0.f22979w}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class BlockRunner$cancel$1 extends SuspendLambda implements Function2<s0, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BlockRunner<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockRunner$cancel$1(BlockRunner<T> blockRunner, Continuation<? super BlockRunner$cancel$1> continuation) {
        super(2, continuation);
        this.this$0 = blockRunner;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.g
    public final Continuation<Unit> create(@m8.h Object obj, @m8.g Continuation<?> continuation) {
        return new BlockRunner$cancel$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    @m8.h
    public final Object invoke(@m8.g s0 s0Var, @m8.h Continuation<? super Unit> continuation) {
        return ((BlockRunner$cancel$1) create(s0Var, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @m8.h
    public final Object invokeSuspend(@m8.g Object obj) {
        Object coroutine_suspended;
        long j4;
        CoroutineLiveData coroutineLiveData;
        j2 j2Var;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = this.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            j4 = ((BlockRunner) this.this$0).timeoutInMs;
            this.label = 1;
            if (b1.b(j4, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i4 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        coroutineLiveData = ((BlockRunner) this.this$0).liveData;
        if (!coroutineLiveData.hasActiveObservers()) {
            j2Var = ((BlockRunner) this.this$0).runningJob;
            if (j2Var != null) {
                j2.a.b(j2Var, null, 1, null);
            }
            ((BlockRunner) this.this$0).runningJob = null;
        }
        return Unit.INSTANCE;
    }
}
