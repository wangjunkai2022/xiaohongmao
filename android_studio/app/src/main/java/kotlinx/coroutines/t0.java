package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoroutineScope.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0006\u001a\u0015\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\u0002\u001a\u0006\u0010\u0004\u001a\u00020\u0000\u001aO\u0010\u000b\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00052'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006¢\u0006\u0002\b\tH\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0001 \u0001¢\u0006\u0004\b\u000b\u0010\f\u001a\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a\u001c\u0010\u0012\u001a\u00020\u0011*\u00020\u00002\u0010\b\u0002\u0010\u0010\u001a\n\u0018\u00010\u000ej\u0004\u0018\u0001`\u000f\u001a\u001e\u0010\u0016\u001a\u00020\u0011*\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u00132\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0015\u001a\n\u0010\u0017\u001a\u00020\u0011*\u00020\u0000\u001a\u0013\u0010\u0018\u001a\u00020\u0001H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\"\u001b\u0010\u001f\u001a\u00020\u001a*\u00020\u00008F¢\u0006\f\u0012\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006 "}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/CoroutineContext;", "context", "m", "b", "R", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "g", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "d", "", "message", "", "c", "j", "h", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "k", "(Lkotlinx/coroutines/s0;)Z", "isActive$annotations", "(Lkotlinx/coroutines/s0;)V", "isActive", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class t0 {
    @m8.g
    public static final s0 a(@m8.g CoroutineContext coroutineContext) {
        c0 c10;
        if (coroutineContext.get(j2.f86331k2) == null) {
            c10 = o2.c(null, 1, null);
            coroutineContext = coroutineContext.plus(c10);
        }
        return new kotlinx.coroutines.internal.j(coroutineContext);
    }

    @m8.g
    public static final s0 b() {
        return new kotlinx.coroutines.internal.j(m3.c(null, 1, null).plus(i1.e()));
    }

    public static final void c(@m8.g s0 s0Var, @m8.g String str, @m8.h Throwable th) {
        d(s0Var, u1.a(str, th));
    }

    public static final void d(@m8.g s0 s0Var, @m8.h CancellationException cancellationException) {
        j2 j2Var = (j2) s0Var.getCoroutineContext().get(j2.f86331k2);
        if (j2Var != null) {
            j2Var.d(cancellationException);
            return;
        }
        throw new IllegalStateException(Intrinsics.stringPlus("Scope cannot be cancelled because it does not have a job: ", s0Var).toString());
    }

    public static /* synthetic */ void e(s0 s0Var, String str, Throwable th, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            th = null;
        }
        c(s0Var, str, th);
    }

    public static /* synthetic */ void f(s0 s0Var, CancellationException cancellationException, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            cancellationException = null;
        }
        d(s0Var, cancellationException);
    }

    @m8.h
    public static final <R> Object g(@m8.g Function2<? super s0, ? super Continuation<? super R>, ? extends Object> function2, @m8.g Continuation<? super R> continuation) {
        Object coroutine_suspended;
        kotlinx.coroutines.internal.l0 l0Var = new kotlinx.coroutines.internal.l0(continuation.getContext(), continuation);
        Object f10 = z7.b.f(l0Var, l0Var, function2);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (f10 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return f10;
    }

    @m8.h
    public static final Object h(@m8.g Continuation<? super CoroutineContext> continuation) {
        return continuation.getContext();
    }

    private static final Object i(Continuation<? super CoroutineContext> continuation) {
        InlineMarker.mark(3);
        throw null;
    }

    public static final void j(@m8.g s0 s0Var) {
        m2.z(s0Var.getCoroutineContext());
    }

    public static final boolean k(@m8.g s0 s0Var) {
        j2 j2Var = (j2) s0Var.getCoroutineContext().get(j2.f86331k2);
        if (j2Var == null) {
            return true;
        }
        return j2Var.a();
    }

    public static /* synthetic */ void l(s0 s0Var) {
    }

    @m8.g
    public static final s0 m(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext) {
        return new kotlinx.coroutines.internal.j(s0Var.getCoroutineContext().plus(coroutineContext));
    }
}
