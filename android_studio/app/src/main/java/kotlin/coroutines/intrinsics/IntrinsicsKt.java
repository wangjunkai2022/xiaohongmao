package kotlin.coroutines.intrinsics;

import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.coroutines.Continuation;
import m8.g;

@Metadata(d1 = {"kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsJvmKt", "kotlin/coroutines/intrinsics/IntrinsicsKt__IntrinsicsKt"}, k = 4, mv = {1, 7, 1}, xi = 49)
/* loaded from: classes4.dex */
public final class IntrinsicsKt extends IntrinsicsKt__IntrinsicsKt {
    private IntrinsicsKt() {
    }

    @g
    public static /* bridge */ /* synthetic */ Object getCOROUTINE_SUSPENDED() {
        return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
    }

    @SinceKotlin(version = "1.3")
    @g
    public static /* bridge */ /* synthetic */ Continuation intercepted(@g Continuation continuation) {
        return IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
    }
}
