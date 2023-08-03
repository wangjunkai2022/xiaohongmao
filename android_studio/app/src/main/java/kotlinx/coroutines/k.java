package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;

/* compiled from: Builders.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aV\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007ø\u0001\u0000\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function2;", "Lkotlinx/coroutines/s0;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "a", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 5, mv = {1, 6, 0}, xs = "kotlinx/coroutines/BuildersKt")
/* loaded from: classes4.dex */
public final /* synthetic */ class k {
    public static final <T> T a(@m8.g CoroutineContext coroutineContext, @m8.g Function2<? super s0, ? super Continuation<? super T>, ? extends Object> function2) throws InterruptedException {
        p1 a10;
        CoroutineContext e4;
        Thread currentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.Key);
        if (continuationInterceptor == null) {
            a10 = p3.f86355a.b();
            e4 = m0.e(a2.f84781a, coroutineContext.plus(a10));
        } else {
            p1 p1Var = null;
            p1 p1Var2 = continuationInterceptor instanceof p1 ? (p1) continuationInterceptor : null;
            if (p1Var2 != null && p1Var2.B0()) {
                p1Var = p1Var2;
            }
            a10 = p1Var == null ? p3.f86355a.a() : p1Var;
            e4 = m0.e(a2.f84781a, coroutineContext);
        }
        h hVar = new h(e4, currentThread, a10);
        hVar.o1(CoroutineStart.DEFAULT, hVar, function2);
        return (T) hVar.p1();
    }

    public static /* synthetic */ Object b(CoroutineContext coroutineContext, Function2 function2, int i4, Object obj) throws InterruptedException {
        if ((i4 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return j.f(coroutineContext, function2);
    }
}
