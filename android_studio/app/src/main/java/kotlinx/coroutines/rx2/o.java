package kotlinx.coroutines.rx2;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.j2;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.s0;

/* compiled from: RxMaybe.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aQ\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012)\u0010\b\u001a%\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001aY\u0010\r\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00012)\u0010\b\u001a%\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001aW\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\t\"\u0004\b\u0000\u0010\u0000*\u00020\u00042\b\b\u0002\u0010\u0002\u001a\u00020\u00012)\u0010\b\u001a%\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Lio/reactivex/q;", "b", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/q;", "scope", "f", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/q;", "c", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class o {
    @m8.g
    public static final <T> io.reactivex.q<T> b(@m8.g CoroutineContext coroutineContext, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) {
        if (coroutineContext.get(j2.f86331k2) == null) {
            return f(a2.f84781a, coroutineContext, function2);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Maybe context cannot contain job in it.Its lifecycle should be managed via Disposable handle. Had ", coroutineContext).toString());
    }

    public static /* synthetic */ io.reactivex.q d(CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return b(coroutineContext, function2);
    }

    public static /* synthetic */ io.reactivex.q e(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return f(s0Var, coroutineContext, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> io.reactivex.q<T> f(final s0 s0Var, final CoroutineContext coroutineContext, final Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) {
        return io.reactivex.q.D(new io.reactivex.u() { // from class: kotlinx.coroutines.rx2.n
            @Override // io.reactivex.u
            public final void a(io.reactivex.s sVar) {
                o.g(s0.this, coroutineContext, function2, sVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, io.reactivex.s sVar) {
        m mVar = new m(m0.e(s0Var, coroutineContext), sVar);
        sVar.c(new d(mVar));
        mVar.o1(CoroutineStart.DEFAULT, mVar, function2);
    }
}
