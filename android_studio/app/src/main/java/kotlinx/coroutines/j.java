package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

@Metadata(bv = {}, d1 = {"kotlinx/coroutines/k", "kotlinx/coroutines/l"}, d2 = {}, k = 4, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class j {
    @m8.g
    public static final <T> y0<T> a(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, @m8.g CoroutineStart coroutineStart, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) {
        return l.a(s0Var, coroutineContext, coroutineStart, function2);
    }

    public static /* synthetic */ y0 b(s0 s0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i4, Object obj) {
        return l.b(s0Var, coroutineContext, coroutineStart, function2, i4, obj);
    }

    @m8.h
    public static final <T> Object c(@m8.g n0 n0Var, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        return l.c(n0Var, function2, continuation);
    }

    @m8.g
    public static final j2 d(@m8.g s0 s0Var, @m8.g CoroutineContext coroutineContext, @m8.g CoroutineStart coroutineStart, @m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return l.e(s0Var, coroutineContext, coroutineStart, function2);
    }

    public static /* synthetic */ j2 e(s0 s0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i4, Object obj) {
        return l.f(s0Var, coroutineContext, coroutineStart, function2, i4, obj);
    }

    public static final <T> T f(@m8.g CoroutineContext coroutineContext, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) throws InterruptedException {
        return (T) k.a(coroutineContext, function2);
    }

    @m8.h
    public static final <T> Object h(@m8.g CoroutineContext coroutineContext, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2, @m8.g Continuation<? super T> continuation) {
        return l.g(coroutineContext, function2, continuation);
    }
}
