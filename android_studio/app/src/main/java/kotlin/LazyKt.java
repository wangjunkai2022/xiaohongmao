package kotlin;

import kotlin.jvm.functions.Function0;
import m8.g;

@Metadata(d1 = {"kotlin/LazyKt__LazyJVMKt", "kotlin/LazyKt__LazyKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes4.dex */
public final class LazyKt extends LazyKt__LazyKt {
    private LazyKt() {
    }

    @g
    public static /* bridge */ /* synthetic */ Lazy lazy(@g LazyThreadSafetyMode lazyThreadSafetyMode, @g Function0 function0) {
        return LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, function0);
    }

    @g
    public static /* bridge */ /* synthetic */ Lazy lazy(@g Function0 function0) {
        return LazyKt__LazyJVMKt.lazy(function0);
    }
}
