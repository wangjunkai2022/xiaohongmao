package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;

/* compiled from: Supervisor.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0012\u0010\u0003\u001a\u00020\u00022\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000\u001a\u001b\u0010\u0004\u001a\u00020\u00002\n\b\u0002\u0010\u0001\u001a\u0004\u0018\u00010\u0000H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001aO\u0010\r\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00062'\u0010\f\u001a#\b\u0001\u0012\u0004\u0012\u00020\b\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007¢\u0006\u0002\b\u000bH\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\r\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/j2;", "parent", "Lkotlinx/coroutines/c0;", "a", "b", "(Lkotlinx/coroutines/j2;)Lkotlinx/coroutines/j2;", "R", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "e", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class m3 {
    @m8.g
    public static final c0 a(@m8.h j2 j2Var) {
        return new l3(j2Var);
    }

    public static /* synthetic */ c0 c(j2 j2Var, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j2Var = null;
        }
        return a(j2Var);
    }

    public static /* synthetic */ j2 d(j2 j2Var, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j2Var = null;
        }
        return a(j2Var);
    }

    @m8.h
    public static final <R> Object e(@m8.g Function2<? super s0, ? super Continuation<? super R>, ? extends Object> function2, @m8.g Continuation<? super R> continuation) {
        Object coroutine_suspended;
        k3 k3Var = new k3(continuation.getContext(), continuation);
        Object f10 = z7.b.f(k3Var, k3Var, function2);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (f10 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return f10;
    }
}
