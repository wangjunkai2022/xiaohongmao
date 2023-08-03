package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.b0;
import io.reactivex.c0;
import kotlin.BuilderInference;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.channels.d0;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.s0;

/* compiled from: RxObservable.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\u001a[\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022/\b\u0001\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\bø\u0001\u0000¢\u0006\u0004\b\u000b\u0010\f\u001aa\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022-\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\bH\u0002ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\u001aa\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\r2\b\b\u0002\u0010\u0003\u001a\u00020\u00022/\b\u0001\u0010\t\u001a)\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\bH\u0007ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u0010\"\u0014\u0010\u0015\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014\"\u0014\u0010\u0016\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0014\"\u0014\u0010\u0017\u001a\u00020\u00128\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0014\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/d0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lio/reactivex/z;", "b", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/z;", "Lkotlinx/coroutines/s0;", "scope", "f", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/z;", "c", "", "a", "I", "OPEN", "CLOSED", "SIGNALLED", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private static final int f86603a = 0;

    /* renamed from: b  reason: collision with root package name */
    private static final int f86604b = -1;

    /* renamed from: c  reason: collision with root package name */
    private static final int f86605c = -2;

    @m8.g
    public static final <T> io.reactivex.z<T> b(@m8.g CoroutineContext coroutineContext, @BuilderInference @m8.g Function2<? super d0<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        if (coroutineContext.get(j2.f86331k2) == null) {
            return f(a2.f84781a, coroutineContext, function2);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Observable context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had ", coroutineContext).toString());
    }

    public static /* synthetic */ io.reactivex.z d(CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return b(coroutineContext, function2);
    }

    public static /* synthetic */ io.reactivex.z e(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return f(s0Var, coroutineContext, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> io.reactivex.z<T> f(final s0 s0Var, final CoroutineContext coroutineContext, final Function2<? super d0<? super T>, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return io.reactivex.z.create(new c0() { // from class: kotlinx.coroutines.rx2.q
            @Override // io.reactivex.c0
            public final void a(b0 b0Var) {
                r.g(s0.this, coroutineContext, function2, b0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, b0 b0Var) {
        p pVar = new p(m0.e(s0Var, coroutineContext), b0Var);
        b0Var.c(new d(pVar));
        pVar.o1(CoroutineStart.DEFAULT, pVar, function2);
    }
}
