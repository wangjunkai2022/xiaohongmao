package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.internal.u0;

/* compiled from: ChannelFlow.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0000\u001a&\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a]\u0010\u0010\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\b2\u0006\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00028\u00012\b\b\u0002\u0010\f\u001a\u00020\u000b2\"\u0010\u000f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\rH\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/i;", "Lkotlinx/coroutines/flow/internal/d;", "b", "Lkotlinx/coroutines/flow/j;", "Lkotlin/coroutines/CoroutineContext;", "emitContext", "e", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "newContext", "value", "", "countOrElement", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "block", "c", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class e {
    public static final /* synthetic */ kotlinx.coroutines.flow.j a(kotlinx.coroutines.flow.j jVar, CoroutineContext coroutineContext) {
        return e(jVar, coroutineContext);
    }

    @m8.g
    public static final <T> d<T> b(@m8.g kotlinx.coroutines.flow.i<? extends T> iVar) {
        d<T> dVar = iVar instanceof d ? (d) iVar : null;
        return dVar == null ? new h(iVar, null, 0, null, 14, null) : dVar;
    }

    @m8.h
    public static final <T, V> Object c(@m8.g CoroutineContext coroutineContext, V v9, @m8.g Object obj, @m8.g Function2<? super V, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        Object coroutine_suspended;
        Object c10 = u0.c(coroutineContext, obj);
        try {
            Object invoke = ((Function2) TypeIntrinsics.beforeCheckcastToFunctionOfArity(function2, 2)).invoke(v9, new v(continuation, coroutineContext));
            u0.a(coroutineContext, c10);
            coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (invoke == coroutine_suspended) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return invoke;
        } catch (Throwable th) {
            u0.a(coroutineContext, c10);
            throw th;
        }
    }

    public static /* synthetic */ Object d(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation, int i4, Object obj3) {
        if ((i4 & 4) != 0) {
            obj2 = u0.b(coroutineContext);
        }
        return c(coroutineContext, obj, obj2, function2, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> kotlinx.coroutines.flow.j<T> e(kotlinx.coroutines.flow.j<? super T> jVar, CoroutineContext coroutineContext) {
        return jVar instanceof u ? true : jVar instanceof r ? jVar : new x(jVar, coroutineContext);
    }
}
