package y8;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ParametersHolder.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001a\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a%\u0010\u0004\u001a\u00020\u00032\u0016\u0010\u0002\u001a\f\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u0000\"\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0006\u0010\u0006\u001a\u00020\u0003*\u0016\u0010\b\"\b\u0012\u0004\u0012\u00020\u00030\u00072\b\u0012\u0004\u0012\u00020\u00030\u0007¨\u0006\t"}, d2 = {"", "", "parameters", "Ly8/a;", "b", "([Ljava/lang/Object;)Ly8/a;", "a", "Lkotlin/Function0;", "ParametersDefinition", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    @g
    public static final a a() {
        return new a(null, 1, null);
    }

    @g
    public static final a b(@g Object... parameters) {
        List mutableList;
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        mutableList = ArraysKt___ArraysKt.toMutableList(parameters);
        return new a(mutableList);
    }
}
