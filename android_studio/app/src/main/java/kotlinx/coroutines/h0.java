package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: CompletionHandler.kt */
@Metadata(bv = {}, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a8\u0010\u0007\u001a\u00020\u0005*#\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u00062\b\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0080\b\":\u0010\u000b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u0006*\u00020\b8À\u0002X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\n\":\u0010\u000b\u001a#\u0012\u0015\u0012\u0013\u0018\u00010\u0001¢\u0006\f\b\u0002\u0012\b\b\u0003\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u00050\u0000j\u0002`\u0006*\u00020\f8À\u0002X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "Lkotlinx/coroutines/CompletionHandler;", "c", "Lkotlinx/coroutines/g0;", "b", "(Lkotlinx/coroutines/g0;)Lkotlin/jvm/functions/Function1;", "asHandler", "Lkotlinx/coroutines/p;", "a", "(Lkotlinx/coroutines/p;)Lkotlin/jvm/functions/Function1;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class h0 {
    @m8.g
    public static final Function1<Throwable, Unit> a(@m8.g p pVar) {
        return pVar;
    }

    @m8.g
    public static final Function1<Throwable, Unit> b(@m8.g g0 g0Var) {
        return g0Var;
    }

    public static final void c(@m8.g Function1<? super Throwable, Unit> function1, @m8.h Throwable th) {
        function1.invoke(th);
    }
}
