package kotlinx.coroutines.reactive;

import androidx.exifinterface.media.ExifInterface;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import kotlin.BuilderInference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.e2;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.p0;
import kotlinx.coroutines.s0;

/* compiled from: Publish.kt */
@Metadata(bv = {}, d1 = {"\u0000@\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0007\u001aW\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012/\b\u0001\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001aw\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0002\u001a\u00020\u00012\u0018\u0010\u0010\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u00032-\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0012\u001a]\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\u0004\b\u0000\u0010\u0000*\u00020\r2\b\b\u0002\u0010\u0002\u001a\u00020\u00012/\b\u0001\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0003¢\u0006\u0002\b\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0013\u0010\u0014\"\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017\"\u0014\u0010\u0019\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0017\"&\u0010\u001b\u001a\u0014\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00060\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/d0;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lorg/reactivestreams/c;", "b", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lorg/reactivestreams/c;", "Lkotlinx/coroutines/s0;", "scope", "", "exceptionOnCancelHandler", "f", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)Lorg/reactivestreams/c;", "c", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lorg/reactivestreams/c;", "", "a", "J", "CLOSED", "SIGNALLED", "Lkotlin/jvm/functions/Function2;", "DEFAULT_HANDLER", "kotlinx-coroutines-reactive"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final long f86450a = -1;

    /* renamed from: b  reason: collision with root package name */
    private static final long f86451b = -2;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private static final Function2<Throwable, CoroutineContext, Unit> f86452c = a.f86453a;

    /* compiled from: Publish.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0014\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\n¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"", "t", "Lkotlin/coroutines/CoroutineContext;", "ctx", "", "a", "(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V"}, k = 3, mv = {1, 6, 0})
    /* loaded from: classes4.dex */
    static final class a extends Lambda implements Function2<Throwable, CoroutineContext, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f86453a = new a();

        a() {
            super(2);
        }

        public final void a(@m8.g Throwable th, @m8.g CoroutineContext coroutineContext) {
            if (th instanceof CancellationException) {
                return;
            }
            p0.b(coroutineContext, th);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th, CoroutineContext coroutineContext) {
            a(th, coroutineContext);
            return Unit.INSTANCE;
        }
    }

    @m8.g
    public static final <T> org.reactivestreams.c<T> b(@m8.g CoroutineContext coroutineContext, @BuilderInference @m8.g Function2<? super d0<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        if (coroutineContext.get(j2.f86331k2) == null) {
            return f(a2.f84781a, coroutineContext, f86452c, function2);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Publisher context cannot contain job in it.Its lifecycle should be managed via subscription. Had ", coroutineContext).toString());
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "CoroutineScope.publish is deprecated in favour of top-level publish", replaceWith = @ReplaceWith(expression = "publish(context, block)", imports = {}))
    public static final /* synthetic */ org.reactivestreams.c c(s0 s0Var, CoroutineContext coroutineContext, @BuilderInference Function2 function2) {
        return f(s0Var, coroutineContext, f86452c, function2);
    }

    public static /* synthetic */ org.reactivestreams.c d(CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return b(coroutineContext, function2);
    }

    public static /* synthetic */ org.reactivestreams.c e(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return c(s0Var, coroutineContext, function2);
    }

    @m8.g
    @e2
    public static final <T> org.reactivestreams.c<T> f(@m8.g final s0 s0Var, @m8.g final CoroutineContext coroutineContext, @m8.g final Function2<? super Throwable, ? super CoroutineContext, Unit> function2, @m8.g final Function2<? super d0<? super T>, ? super Continuation<? super Unit>, ? extends Object> function22) {
        return new org.reactivestreams.c() { // from class: kotlinx.coroutines.reactive.j
            @Override // org.reactivestreams.c
            public final void i(org.reactivestreams.d dVar) {
                k.g(s0.this, coroutineContext, function2, function22, dVar);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, Function2 function22, org.reactivestreams.d dVar) {
        Objects.requireNonNull(dVar, "Subscriber cannot be null");
        m mVar = new m(m0.e(s0Var, coroutineContext), dVar, function2);
        dVar.onSubscribe(mVar);
        mVar.o1(CoroutineStart.DEFAULT, mVar, function22);
    }
}
