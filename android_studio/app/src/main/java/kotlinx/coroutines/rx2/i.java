package kotlinx.coroutines.rx2;

import kotlin.Metadata;
import kotlin.Unit;
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

/* compiled from: RxCompletable.kt */
@Metadata(bv = {}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001aC\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u0001\u001a\u00020\u00002'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0002¢\u0006\u0002\b\u0007ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000b\u001aK\u0010\r\u001a\u00020\t2\u0006\u0010\f\u001a\u00020\u00032\u0006\u0010\u0001\u001a\u00020\u00002'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0002¢\u0006\u0002\b\u0007H\u0002ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000e\u001aI\u0010\u000f\u001a\u00020\t*\u00020\u00032\b\b\u0002\u0010\u0001\u001a\u00020\u00002'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0002¢\u0006\u0002\b\u0007H\u0007ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u000e\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0010"}, d2 = {"Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "", "Lkotlin/ExtensionFunctionType;", "block", "Lio/reactivex/a;", "b", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/a;", "scope", "f", "(Lkotlinx/coroutines/s0;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Lio/reactivex/a;", "c", "kotlinx-coroutines-rx2"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class i {
    @m8.g
    public static final io.reactivex.a b(@m8.g CoroutineContext coroutineContext, @m8.g Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        if (coroutineContext.get(j2.f86331k2) == null) {
            return f(a2.f84781a, coroutineContext, function2);
        }
        throw new IllegalArgumentException(Intrinsics.stringPlus("Completable context cannot contain job in it. Its lifecycle should be managed via Disposable handle. Had ", coroutineContext).toString());
    }

    public static /* synthetic */ io.reactivex.a d(CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return b(coroutineContext, function2);
    }

    public static /* synthetic */ io.reactivex.a e(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return f(s0Var, coroutineContext, function2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final io.reactivex.a f(final s0 s0Var, final CoroutineContext coroutineContext, final Function2<? super s0, ? super Continuation<? super Unit>, ? extends Object> function2) {
        return io.reactivex.a.z(new io.reactivex.e() { // from class: kotlinx.coroutines.rx2.h
            @Override // io.reactivex.e
            public final void a(io.reactivex.c cVar) {
                i.g(s0.this, coroutineContext, function2, cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(s0 s0Var, CoroutineContext coroutineContext, Function2 function2, io.reactivex.c cVar) {
        g gVar = new g(m0.e(s0Var, coroutineContext), cVar);
        cVar.c(new d(gVar));
        gVar.o1(CoroutineStart.DEFAULT, gVar, function2);
    }
}
