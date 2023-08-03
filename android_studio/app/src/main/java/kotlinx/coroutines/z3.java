package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;

/* compiled from: Yield.kt */
@Metadata(bv = {}, d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0003\u001a\u0013\u0010\u0001\u001a\u00020\u0000H\u0086@ø\u0001\u0000¢\u0006\u0004\b\u0001\u0010\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0003"}, d2 = {"", "a", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class z3 {
    @m8.h
    public static final Object a(@m8.g Continuation<? super Unit> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Object coroutine_suspended2;
        Object coroutine_suspended3;
        CoroutineContext context = continuation.getContext();
        m2.z(context);
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        kotlinx.coroutines.internal.l lVar = intercepted instanceof kotlinx.coroutines.internal.l ? (kotlinx.coroutines.internal.l) intercepted : null;
        if (lVar == null) {
            coroutine_suspended = Unit.INSTANCE;
        } else {
            if (lVar.f86270d.isDispatchNeeded(context)) {
                lVar.q(context, Unit.INSTANCE);
            } else {
                y3 y3Var = new y3();
                CoroutineContext plus = context.plus(y3Var);
                Unit unit = Unit.INSTANCE;
                lVar.q(plus, unit);
                if (y3Var.f86865a) {
                    coroutine_suspended = kotlinx.coroutines.internal.m.h(lVar) ? IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() : unit;
                }
            }
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        coroutine_suspended2 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (coroutine_suspended == coroutine_suspended2) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        coroutine_suspended3 = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return coroutine_suspended == coroutine_suspended3 ? coroutine_suspended : Unit.INSTANCE;
    }
}
