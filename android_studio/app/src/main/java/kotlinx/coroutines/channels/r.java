package kotlinx.coroutines.channels;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.z2;

@Metadata(bv = {}, d1 = {"kotlinx/coroutines/channels/s", "kotlinx/coroutines/channels/t", "kotlinx/coroutines/channels/u"}, d2 = {}, k = 4, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class r {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    public static final String f84913a = "Channel was closed";

    @PublishedApi
    @m8.g
    public static final <E, R> f0<R> J(@m8.g f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super Continuation<? super R>, ? extends Object> function2) {
        return u.E(f0Var, coroutineContext, function2);
    }

    @PublishedApi
    @m8.g
    public static final <E, R> f0<R> L(@m8.g f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function3<? super Integer, ? super E, ? super Continuation<? super R>, ? extends Object> function3) {
        return u.G(f0Var, coroutineContext, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'onReceiveCatching'")
    @m8.g
    public static final <E> kotlinx.coroutines.selects.d<E> U(@m8.g f0<? extends E> f0Var) {
        return t.h(f0Var);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'receiveCatching'", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @m8.h
    public static final <E> Object V(@m8.g f0<? extends E> f0Var, @m8.g Continuation<? super E> continuation) {
        return t.i(f0Var, continuation);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @ReplaceWith(expression = "trySendBlocking(element)", imports = {}))
    public static final <E> void X(@m8.g j0<? super E> j0Var, E e4) {
        s.a(j0Var, e4);
    }

    @PublishedApi
    public static final void b(@m8.g f0<?> f0Var, @m8.h Throwable th) {
        t.a(f0Var, th);
    }

    @z2
    public static final <E, R> R c(@m8.g i<E> iVar, @m8.g Function1<? super f0<? extends E>, ? extends R> function1) {
        return (R) t.b(iVar, function1);
    }

    public static final <E, R> R d(@m8.g f0<? extends E> f0Var, @m8.g Function1<? super f0<? extends E>, ? extends R> function1) {
        return (R) t.c(f0Var, function1);
    }

    @m8.h
    @z2
    public static final <E> Object e(@m8.g i<E> iVar, @m8.g Function1<? super E, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        return t.d(iVar, function1, continuation);
    }

    @m8.h
    @PublishedApi
    public static final <E, C extends j0<? super E>> Object e0(@m8.g f0<? extends E> f0Var, @m8.g C c10, @m8.g Continuation<? super C> continuation) {
        return u.W(f0Var, c10, continuation);
    }

    @m8.h
    public static final <E> Object f(@m8.g f0<? extends E> f0Var, @m8.g Function1<? super E, Unit> function1, @m8.g Continuation<? super Unit> continuation) {
        return t.e(f0Var, function1, continuation);
    }

    @m8.h
    @PublishedApi
    public static final <E, C extends Collection<? super E>> Object f0(@m8.g f0<? extends E> f0Var, @m8.g C c10, @m8.g Continuation<? super C> continuation) {
        return u.X(f0Var, c10, continuation);
    }

    @PublishedApi
    @m8.g
    public static final Function1<Throwable, Unit> g(@m8.g f0<?> f0Var) {
        return u.b(f0Var);
    }

    @m8.h
    public static final <E> Object g0(@m8.g f0<? extends E> f0Var, @m8.g Continuation<? super List<? extends E>> continuation) {
        return t.j(f0Var, continuation);
    }

    @PublishedApi
    @m8.g
    public static final Function1<Throwable, Unit> h(@m8.g f0<?>... f0VarArr) {
        return u.c(f0VarArr);
    }

    @m8.h
    @PublishedApi
    public static final <K, V, M extends Map<? super K, ? super V>> Object h0(@m8.g f0<? extends Pair<? extends K, ? extends V>> f0Var, @m8.g M m9, @m8.g Continuation<? super M> continuation) {
        return u.Y(f0Var, m9, continuation);
    }

    @PublishedApi
    @m8.g
    public static final <E, K> f0<E> k(@m8.g f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super Continuation<? super K>, ? extends Object> function2) {
        return u.f(f0Var, coroutineContext, function2);
    }

    @m8.h
    @PublishedApi
    public static final <E> Object k0(@m8.g f0<? extends E> f0Var, @m8.g Continuation<? super Set<E>> continuation) {
        return u.b0(f0Var, continuation);
    }

    @m8.g
    public static final <E> Object m0(@m8.g j0<? super E> j0Var, E e4) {
        return s.b(j0Var, e4);
    }

    @PublishedApi
    @m8.g
    public static final <E, R, V> f0<V> q0(@m8.g f0<? extends E> f0Var, @m8.g f0<? extends R> f0Var2, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super R, ? extends V> function2) {
        return u.g0(f0Var, f0Var2, coroutineContext, function2);
    }

    @PublishedApi
    @m8.g
    public static final <E> f0<E> s(@m8.g f0<? extends E> f0Var, @m8.g CoroutineContext coroutineContext, @m8.g Function2<? super E, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return u.n(f0Var, coroutineContext, function2);
    }

    @PublishedApi
    @m8.g
    public static final <E> f0<E> y(@m8.g f0<? extends E> f0Var) {
        return u.t(f0Var);
    }
}
