package b9;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import m8.g;
import m8.h;

/* compiled from: KoinApplication.kt */
@Metadata(bv = {}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a)\u0010\u0006\u001a\u00020\u00012!\b\u0002\u0010\u0005\u001a\u001b\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0000j\u0004\u0018\u0001`\u0003¢\u0006\u0002\b\u0004*,\u0010\u0007\"\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000¢\u0006\u0002\b\u00042\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000¢\u0006\u0002\b\u0004¨\u0006\b"}, d2 = {"Lkotlin/Function1;", "Lorg/koin/core/a;", "", "Lorg/koin/dsl/KoinAppDeclaration;", "Lkotlin/ExtensionFunctionType;", "appDeclaration", "a", "KoinAppDeclaration", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    @g
    public static final org.koin.core.a a(@h Function1<? super org.koin.core.a, Unit> function1) {
        org.koin.core.a a10 = org.koin.core.a.f92408c.a();
        if (function1 != null) {
            function1.invoke(a10);
        }
        a10.d();
        return a10;
    }

    public static /* synthetic */ org.koin.core.a b(Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            function1 = null;
        }
        return a(function1);
    }
}
