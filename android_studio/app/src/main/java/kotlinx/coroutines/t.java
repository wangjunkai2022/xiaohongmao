package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;

/* compiled from: CancellableContinuation.kt */
@Metadata(bv = {}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a5\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086Hø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\u0006\u001a5\u0010\u0007\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u001a\b\u0004\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0080Hø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\u0006\u001a\"\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00002\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0000\u001a\u0018\u0010\u000e\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\r\u001a\u00020\fH\u0000\u001a\u0018\u0010\u0011\u001a\u00020\u0003*\u0006\u0012\u0002\b\u00030\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "Lkotlinx/coroutines/q;", "", "block", "d", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "f", "Lkotlin/coroutines/Continuation;", "delegate", "Lkotlinx/coroutines/r;", "b", "Lkotlinx/coroutines/internal/x;", "node", "c", "Lkotlinx/coroutines/l1;", "handle", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class t {
    @e2
    public static final void a(@m8.g q<?> qVar, @m8.g l1 l1Var) {
        qVar.k(new m1(l1Var));
    }

    @m8.g
    public static final <T> r<T> b(@m8.g Continuation<? super T> continuation) {
        if (!(continuation instanceof kotlinx.coroutines.internal.l)) {
            return new r<>(continuation, 1);
        }
        r<T> p9 = ((kotlinx.coroutines.internal.l) continuation).p();
        if (p9 == null || !p9.N()) {
            p9 = null;
        }
        return p9 == null ? new r<>(continuation, 2) : p9;
    }

    public static final void c(@m8.g q<?> qVar, @m8.g kotlinx.coroutines.internal.x xVar) {
        qVar.k(new b3(xVar));
    }

    @m8.h
    public static final <T> Object d(@m8.g Function1<? super q<? super T>, Unit> function1, @m8.g Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r rVar = new r(intercepted, 1);
        rVar.C();
        function1.invoke(rVar);
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    private static final <T> Object e(Function1<? super q<? super T>, Unit> function1, Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        InlineMarker.mark(0);
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r rVar = new r(intercepted, 1);
        rVar.C();
        function1.invoke(rVar);
        Object A = rVar.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return A;
    }

    @m8.h
    public static final <T> Object f(@m8.g Function1<? super q<? super T>, Unit> function1, @m8.g Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r b10 = b(intercepted);
        function1.invoke(b10);
        Object A = b10.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return A;
    }

    private static final <T> Object g(Function1<? super q<? super T>, Unit> function1, Continuation<? super T> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        InlineMarker.mark(0);
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        r b10 = b(intercepted);
        function1.invoke(b10);
        Object A = b10.A();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (A == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        InlineMarker.mark(1);
        return A;
    }
}
