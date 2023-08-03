package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;

/* compiled from: Delay.kt */
@Metadata(bv = {}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\u001b\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0097@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006J\u001e\u0010\n\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00022\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\bH&J$\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00022\n\u0010\r\u001a\u00060\u000bj\u0002`\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lkotlinx/coroutines/a1;", "", "", com.qennnsad.aknkaksd.domain.usecase.anchor.j.f47980a, "", "g0", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "timeMillis", "Lkotlinx/coroutines/q;", "continuation", "r", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/l1;", "I", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
@e2
/* loaded from: classes4.dex */
public interface a1 {

    /* compiled from: Delay.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class a {
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        @m8.h
        public static Object a(@m8.g a1 a1Var, long j4, @m8.g Continuation<? super Unit> continuation) {
            Continuation intercepted;
            Object coroutine_suspended;
            Object coroutine_suspended2;
            if (j4 <= 0) {
                return Unit.INSTANCE;
            }
            intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            r rVar = new r(intercepted, 1);
            rVar.C();
            a1Var.r(j4, rVar);
            Object A = rVar.A();
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (A == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            return A == coroutine_suspended2 ? A : Unit.INSTANCE;
        }

        @m8.g
        public static l1 b(@m8.g a1 a1Var, long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext) {
            return x0.a().I(j4, runnable, coroutineContext);
        }
    }

    @m8.g
    l1 I(long j4, @m8.g Runnable runnable, @m8.g CoroutineContext coroutineContext);

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @m8.h
    Object g0(long j4, @m8.g Continuation<? super Unit> continuation);

    void r(long j4, @m8.g q<? super Unit> qVar);
}
