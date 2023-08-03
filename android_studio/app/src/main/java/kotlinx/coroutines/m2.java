package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;

@Metadata(bv = {}, d1 = {"kotlinx/coroutines/n2", "kotlinx/coroutines/o2"}, d2 = {}, k = 4, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class m2 {
    public static final void A(@m8.g j2 j2Var) {
        o2.y(j2Var);
    }

    @m8.g
    public static final j2 B(@m8.g CoroutineContext coroutineContext) {
        return o2.z(coroutineContext);
    }

    public static final boolean C(@m8.g CoroutineContext coroutineContext) {
        return o2.A(coroutineContext);
    }

    @m8.g
    public static final c0 a(@m8.h j2 j2Var) {
        return o2.a(j2Var);
    }

    public static /* synthetic */ c0 c(j2 j2Var, int i4, Object obj) {
        return o2.c(j2Var, i4, obj);
    }

    public static final void f(@m8.g CoroutineContext coroutineContext, @m8.h CancellationException cancellationException) {
        o2.f(coroutineContext, cancellationException);
    }

    public static final void g(@m8.g j2 j2Var, @m8.g String str, @m8.h Throwable th) {
        o2.g(j2Var, str, th);
    }

    @m8.h
    public static final Object l(@m8.g j2 j2Var, @m8.g Continuation<? super Unit> continuation) {
        return o2.l(j2Var, continuation);
    }

    public static final void o(@m8.g CoroutineContext coroutineContext, @m8.h CancellationException cancellationException) {
        o2.o(coroutineContext, cancellationException);
    }

    public static final void r(@m8.g j2 j2Var, @m8.h CancellationException cancellationException) {
        o2.r(j2Var, cancellationException);
    }

    public static final void w(@m8.g q<?> qVar, @m8.g Future<?> future) {
        n2.a(qVar, future);
    }

    @m8.g
    @e2
    public static final l1 x(@m8.g j2 j2Var, @m8.g Future<?> future) {
        return n2.b(j2Var, future);
    }

    @m8.g
    public static final l1 y(@m8.g j2 j2Var, @m8.g l1 l1Var) {
        return o2.w(j2Var, l1Var);
    }

    public static final void z(@m8.g CoroutineContext coroutineContext) {
        o2.x(coroutineContext);
    }
}
