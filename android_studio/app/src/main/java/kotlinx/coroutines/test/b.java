package kotlinx.coroutines.test;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: TestCoroutineContext.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a+\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0001\u001a\u00020\u00002\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0002\b\u0004H\u0007¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/test/a;", "testContext", "Lkotlin/Function1;", "", "Lkotlin/ExtensionFunctionType;", "testBody", "a", "kotlinx-coroutines-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes4.dex */
public final class b {
    @Deprecated(level = DeprecationLevel.ERROR, message = "This API has been deprecated to integrate with Structured Concurrency.", replaceWith = @ReplaceWith(expression = "testContext.runBlockingTest(testBody)", imports = {"kotlin.coroutines.test"}))
    public static final void a(@g a aVar, @g Function1<? super a, Unit> function1) {
        function1.invoke(aVar);
        List<Throwable> F = aVar.F();
        boolean z9 = true;
        if (!(F instanceof Collection) || !F.isEmpty()) {
            Iterator<T> it = F.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (!(((Throwable) it.next()) instanceof CancellationException)) {
                    z9 = false;
                    break;
                }
            }
        }
        if (!z9) {
            throw new AssertionError(Intrinsics.stringPlus("Coroutine encountered unhandled exceptions:\n", aVar.F()));
        }
    }

    public static /* synthetic */ void b(a aVar, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            aVar = new a(null, 1, null);
        }
        a(aVar, function1);
    }
}
