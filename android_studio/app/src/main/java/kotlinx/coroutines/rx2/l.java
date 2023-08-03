package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import kotlin.BuilderInference;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: RxFlowable.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\u0003\u001a[\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022/\b\u0001\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\bø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001aa\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\r2\b\b\u0002\u0010\u0003\u001a\u00020\u00022/\b\u0001\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000f\"&\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00070\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0011\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/d0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lio/reactivex/j;", "a", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/j;", "Lkotlinx/coroutines/s0;", "b", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/j;", "", "Lkotlin/jvm/functions/Function2;", "RX_HANDLER", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class l {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private static final Function2<Throwable, CoroutineContext, Unit> f86578a = a.f86579a;

    /* compiled from: RxFlowable.kt */
    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes4.dex */
    /* synthetic */ class a extends FunctionReferenceImpl implements Function2<Throwable, CoroutineContext, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f86579a = new a();

        a() {
            super(2, e.class, "handleUndeliverableException", "handleUndeliverableException(Ljava/lang/Throwable;Lkotlin/coroutines/CoroutineContext;)V", 1);
        }

        public final void a(@m8.g Throwable th, @m8.g CoroutineContext coroutineContext) {
            e.a(th, coroutineContext);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Throwable th, CoroutineContext coroutineContext) {
            a(th, coroutineContext);
            return Unit.INSTANCE;
        }
    }

    @m8.g
    public static final <T> io.reactivex.j<T> a(@m8.g CoroutineContext coroutineContext, @BuilderInference @m8.g Function2<? super d0<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        if (coroutineContext.get(j2.f86331k2) == null) {
            return io.reactivex.j.Y2(kotlinx.coroutines.reactive.k.f(a2.f84781a, coroutineContext, f86578a, function2));
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Flowable context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had ", coroutineContext).toString());
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "CoroutineScope.rxFlowable is deprecated in favour of top-level rxFlowable", replaceWith = @ReplaceWith(expression = "rxFlowable(context, block)", imports = {}))
    @LowPriorityInOverloadResolution
    public static final /* synthetic */ io.reactivex.j b(s0 s0Var, CoroutineContext coroutineContext, @BuilderInference Function2 function2) {
        return io.reactivex.j.Y2(kotlinx.coroutines.reactive.k.f(s0Var, coroutineContext, f86578a, function2));
    }

    public static /* synthetic */ io.reactivex.j c(CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return a(coroutineContext, function2);
    }

    public static /* synthetic */ io.reactivex.j d(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return b(s0Var, coroutineContext, function2);
    }
}
