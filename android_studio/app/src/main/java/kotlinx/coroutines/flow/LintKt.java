package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.InlineMarker;

/* compiled from: Lint.kt */
@Metadata(bv = {}, d1 = {"\u0000~\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\u001a\u001e\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0007\u001a&\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0005\u001a\u00020\u0004H\u0007\u001a\u001e\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0007\u001a\u001e\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0007H\u0007\u001a\"\u0010\u000f\u001a\u00020\u000e*\u0006\u0012\u0002\b\u00030\n2\u0010\b\u0002\u0010\r\u001a\n\u0018\u00010\u000bj\u0004\u0018\u0001`\fH\u0007\u001ao\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012D\b\b\u0010\u0017\u001a>\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u0010¢\u0006\u0002\b\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0019\u001ah\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\b\b\u0002\u0010\u001b\u001a\u00020\u001a23\b\n\u0010\u001e\u001a-\b\u0001\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150\u001cH\u0087\bø\u0001\u0000¢\u0006\u0004\b\u001f\u0010 \u001a\u0084\u0001\u0010#\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012Y\b\b\u0010\u001e\u001aS\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\r\u0012\u0013\u0012\u00110\u001a¢\u0006\f\b\u0012\u0012\b\b\u0013\u0012\u0004\b\b(\"\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001d0\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u00150!¢\u0006\u0002\b\u0016H\u0087\bø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001a)\u0010&\u001a\b\u0012\u0004\u0012\u00028\u00000%\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a)\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000(\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b)\u0010'\u001a#\u0010+\u001a\u00020*\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b+\u0010'\"\"\u00100\u001a\u00020\u001d*\u0006\u0012\u0002\b\u00030\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b.\u0010/\u001a\u0004\b,\u0010-\"\"\u00104\u001a\u00020\u0004*\u0006\u0012\u0002\b\u00030\n8FX\u0087\u0004¢\u0006\f\u0012\u0004\b3\u0010/\u001a\u0004\b1\u00102\u0082\u0002\u0004\n\u0002\b\u0019¨\u00065"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/x;", "Lkotlinx/coroutines/flow/i;", "c", "Lkotlin/coroutines/CoroutineContext;", "context", "h", "Lkotlinx/coroutines/flow/h0;", "e", "g", "Lkotlinx/coroutines/flow/j;", "Ljava/util/concurrent/CancellationException;", "Lkotlinx/coroutines/CancellationException;", "cause", "", "a", "Lkotlin/Function3;", "", "Lkotlin/ParameterName;", "name", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", com.alipay.sdk.packet.d.f6907q, "d", "(Lkotlinx/coroutines/flow/x;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/i;", "", "retries", "Lkotlin/Function2;", "", "predicate", "m", "(Lkotlinx/coroutines/flow/x;JLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/i;", "Lkotlin/Function4;", "attempt", "o", "(Lkotlinx/coroutines/flow/x;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/i;", "", "p", "(Lkotlinx/coroutines/flow/x;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "q", "", "f", "k", "(Lkotlinx/coroutines/flow/j;)Z", "isActive$annotations", "(Lkotlinx/coroutines/flow/j;)V", "isActive", ContextChain.TAG_INFRA, "(Lkotlinx/coroutines/flow/j;)Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext$annotations", "coroutineContext", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class LintKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = "cancel() is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().cancel() instead or specify the receiver of cancel() explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().cancel(cause)", imports = {}))
    public static final void a(@m8.g j<?> jVar, @m8.h CancellationException cancellationException) {
        k.b1();
        throw new KotlinNothingValueException();
    }

    public static /* synthetic */ void b(j jVar, CancellationException cancellationException, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            cancellationException = null;
        }
        a(jVar, cancellationException);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'cancellable' to a SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @m8.g
    public static final <T> i<T> c(@m8.g x<? extends T> xVar) {
        k.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator typically has not effect, it can only catch exceptions from 'onSubscribe' operator", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> i<T> d(x<? extends T> xVar, Function3<? super j<? super T>, ? super Throwable, ? super Continuation<? super Unit>, ? extends Object> function3) {
        return k.u(xVar, function3);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'conflate' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @m8.g
    public static final <T> i<T> e(@m8.g h0<? extends T> h0Var) {
        k.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object f(x<? extends T> xVar, Continuation<? super Integer> continuation) {
        InlineMarker.mark(0);
        Object Y = k.Y(xVar, continuation);
        InlineMarker.mark(1);
        return Y;
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'distinctUntilChanged' to StateFlow has no effect. See the StateFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @m8.g
    public static final <T> i<T> g(@m8.g h0<? extends T> h0Var) {
        k.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Applying 'flowOn' to SharedFlow has no effect. See the SharedFlow documentation on Operator Fusion.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @m8.g
    public static final <T> i<T> h(@m8.g x<? extends T> xVar, @m8.g CoroutineContext coroutineContext) {
        k.b1();
        throw new KotlinNothingValueException();
    }

    @m8.g
    public static final CoroutineContext i(@m8.g j<?> jVar) {
        k.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "coroutineContext is resolved into the property of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext() instead or specify the receiver of coroutineContext explicitly", replaceWith = @ReplaceWith(expression = "currentCoroutineContext()", imports = {}))
    public static /* synthetic */ void j(j jVar) {
    }

    public static final boolean k(@m8.g j<?> jVar) {
        k.b1();
        throw new KotlinNothingValueException();
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "isActive is resolved into the extension of outer CoroutineScope which is likely to be an error.Use currentCoroutineContext().isActive or cancellable() operator instead or specify the receiver of isActive explicitly. Additionally, flow {} builder emissions are cancellable by default.", replaceWith = @ReplaceWith(expression = "currentCoroutineContext().isActive", imports = {}))
    public static /* synthetic */ void l(j jVar) {
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> i<T> m(x<? extends T> xVar, long j4, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return k.v1(xVar, j4, function2);
    }

    static /* synthetic */ i n(x xVar, long j4, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            j4 = Long.MAX_VALUE;
        }
        if ((i4 & 2) != 0) {
            function2 = new LintKt$retry$1(null);
        }
        return k.v1(xVar, j4, function2);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this operator has no effect.", replaceWith = @ReplaceWith(expression = "this", imports = {}))
    @InlineOnly
    private static final <T> i<T> o(x<? extends T> xVar, Function4<? super j<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return k.x1(xVar, function4);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object p(x<? extends T> xVar, Continuation<? super List<? extends T>> continuation) {
        Object c10;
        InlineMarker.mark(0);
        c10 = m.c(xVar, null, continuation, 1, null);
        InlineMarker.mark(1);
        return c10;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "SharedFlow never completes, so this terminal operation never completes.")
    @InlineOnly
    private static final <T> Object q(x<? extends T> xVar, Continuation<? super Set<? extends T>> continuation) {
        Object e4;
        InlineMarker.mark(0);
        e4 = m.e(xVar, null, continuation, 1, null);
        InlineMarker.mark(1);
        return e4;
    }
}
