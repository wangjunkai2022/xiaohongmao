package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import io.reactivex.i0;
import io.reactivex.k0;
import io.reactivex.m0;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.s0;

/* compiled from: RxSingle.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aS\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\b\b\u0000\u0010\u0001*\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00022'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001a[\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\b\b\u0000\u0010\u0001*\u00020\u00002\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001aY\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\b\b\u0000\u0010\u0001*\u00020\u0000*\u00020\u00052\b\b\u0002\u0010\u0003\u001a\u00020\u00022'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00000\u0004¢\u0006\u0002\b\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "block", "Lio/reactivex/i0;", "b", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/i0;", "scope", "f", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/i0;", "c", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class w {
    @m8.g
    public static final <T> i0<T> b(@m8.g CoroutineContext coroutineContext, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) {
        if (coroutineContext.get(j2.f86331k2) == null) {
            return f(a2.f84781a, coroutineContext, function2);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Single context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had ", coroutineContext).toString());
    }

    public static /* synthetic */ i0 d(CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return b(coroutineContext, function2);
    }

    public static /* synthetic */ i0 e(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return f(s0Var, coroutineContext, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> i0<T> f(final s0 s0Var, final CoroutineContext coroutineContext, final Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) {
        return i0.A(new m0() { // from class: kotlinx.coroutines.rx2.v
            @Override // io.reactivex.m0
            public final void a(k0 k0Var) {
                w.g(s0.this, coroutineContext, function2, k0Var);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, k0 k0Var) {
        u uVar = new u(kotlinx.coroutines.m0.e(s0Var, coroutineContext), k0Var);
        k0Var.c(new d(uVar));
        uVar.o1(CoroutineStart.DEFAULT, uVar, function2);
    }
}
