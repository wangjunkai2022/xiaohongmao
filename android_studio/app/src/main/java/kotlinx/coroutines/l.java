package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Builders.common.kt */
@Metadata(bv = {}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\u001aQ\u0010\f\u001a\u00020\u000b*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0004\b\f\u0010\r\u001a]\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u000f\"\u0004\b\u0000\u0010\u000e*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\u0004\u001a\u00020\u00032'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001aW\u0010\u0012\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e2\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tH\u0086@ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\u0012\u0010\u0013\u001aH\u0010\u0015\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u000e*\u00020\u00142)\b\b\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005¢\u0006\u0002\b\tH\u0086Jø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016\"\u0014\u0010\u0019\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0018\"\u0014\u0010\u001b\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018\"\u0014\u0010\u001c\u001a\u00020\u00178\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001d"}, d2 = {"Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/CoroutineStart;", com.google.android.exoplayer2.text.ttml.d.f25725o0, "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/j2;", "e", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/j2;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/y0;", "a", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/y0;", "g", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/n0;", "c", "(Lkotlinx/coroutines/n0;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "I", "UNDECIDED", "b", kotlinx.coroutines.debug.internal.f.f85233c, "RESUMED", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/BuildersKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class l {

    /* renamed from: a */
    private static final int f86334a = 0;

    /* renamed from: b */
    private static final int f86335b = 1;

    /* renamed from: c */
    private static final int f86336c = 2;

    @m8.g
    public static final <T> y0<T> a(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, @m8.g CoroutineStart coroutineStart, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) {
        z0 z0Var;
        CoroutineContext e4 = m0.e(s0Var, coroutineContext);
        if (coroutineStart.isLazy()) {
            z0Var = new s2(e4, function2);
        } else {
            z0Var = new z0(e4, true);
        }
        ((a) z0Var).o1(coroutineStart, z0Var, function2);
        return z0Var;
    }

    public static /* synthetic */ y0 b(s0 s0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i4 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return j.a(s0Var, coroutineContext, coroutineStart, function2);
    }

    @m8.h
    public static final <T> Object c(@m8.g n0 n0Var, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        return j.h(n0Var, function2, continuation);
    }

    private static final <T> Object d(n0 n0Var, Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        InlineMarker.mark(0);
        Object h4 = j.h(n0Var, function2, continuation);
        InlineMarker.mark(1);
        return h4;
    }

    @m8.g
    public static final j2 e(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, @m8.g CoroutineStart coroutineStart, @m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        a j3Var;
        CoroutineContext e4 = m0.e(s0Var, coroutineContext);
        if (coroutineStart.isLazy()) {
            j3Var = new t2(e4, function2);
        } else {
            j3Var = new j3(e4, true);
        }
        j3Var.o1(coroutineStart, j3Var, function2);
        return j3Var;
    }

    public static /* synthetic */ j2 f(s0 s0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i4 & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return j.d(s0Var, coroutineContext, coroutineStart, function2);
    }

    @m8.h
    public static final <T> Object g(@m8.g CoroutineContext coroutineContext, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        Object q12;
        Object coroutine_suspended;
        CoroutineContext context = continuation.getContext();
        CoroutineContext d4 = m0.d(context, coroutineContext);
        m2.z(d4);
        if (d4 == context) {
            kotlinx.coroutines.internal.l0 l0Var = new kotlinx.coroutines.internal.l0(d4, continuation);
            q12 = z7.b.f(l0Var, l0Var, function2);
        } else {
            ContinuationInterceptor.Key key = ContinuationInterceptor.Key;
            if (Intrinsics.areEqual(d4.get(key), context.get(key))) {
                w3 w3Var = new w3(d4, continuation);
                Object c10 = kotlinx.coroutines.internal.u0.c(d4, null);
                try {
                    Object f10 = z7.b.f(w3Var, w3Var, function2);
                    kotlinx.coroutines.internal.u0.a(d4, c10);
                    q12 = f10;
                } catch (Throwable th) {
                    kotlinx.coroutines.internal.u0.a(d4, c10);
                    throw th;
                }
            } else {
                e1 e1Var = new e1(d4, continuation);
                z7.a.f(function2, e1Var, e1Var, null, 4, null);
                q12 = e1Var.q1();
            }
        }
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (q12 == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return q12;
    }
}
