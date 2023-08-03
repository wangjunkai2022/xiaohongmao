package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.q2;
import kotlinx.coroutines.s0;
import kotlinx.coroutines.z2;

/* compiled from: Actor.kt */
@Metadata(bv = {}, d1 = {"\u0000P\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u009e\u0001\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062-\b\u0002\u0010\u000f\u001a'\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b\n\u0012\b\b\u000b\u0012\u0004\b\b(\f\u0012\u0004\u0012\u00020\r\u0018\u00010\bj\u0004\u0018\u0001`\u000e2-\u0010\u0015\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0011\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0010¢\u0006\u0002\b\u0014H\u0007ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "capacity", "Lkotlinx/coroutines/CoroutineStart;", com.google.android.exoplayer2.text.ttml.d.f25725o0, "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "onCompletion", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/f;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lkotlinx/coroutines/channels/j0;", "a", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/j0;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e {
    @z2
    @m8.g
    public static final <E> j0<E> a(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, int i4, @m8.g CoroutineStart coroutineStart, @m8.h Function1<? super Throwable, Unit> function1, @m8.g Function2<? super f<E>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        d dVar;
        CoroutineContext e4 = kotlinx.coroutines.m0.e(s0Var, coroutineContext);
        m d4 = p.d(i4, null, null, 6, null);
        if (coroutineStart.isLazy()) {
            dVar = new y(e4, d4, function2);
        } else {
            dVar = new d(e4, d4, true);
        }
        if (function1 != null) {
            ((q2) dVar).H(function1);
        }
        ((kotlinx.coroutines.a) dVar).o1(coroutineStart, dVar, function2);
        return dVar;
    }

    public static /* synthetic */ j0 b(s0 s0Var, CoroutineContext coroutineContext, int i4, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i11 = (i10 & 2) != 0 ? 0 : i4;
        if ((i10 & 4) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i10 & 8) != 0) {
            function1 = null;
        }
        return a(s0Var, coroutineContext2, i11, coroutineStart2, function1, function2);
    }
}
