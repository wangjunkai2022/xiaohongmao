package c9;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import m8.g;

/* compiled from: KClassExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\u000e\u0010\u0002\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0000\u001a\u000e\u0010\u0003\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u0000¨\u0006\u0004"}, d2 = {"Lkotlin/reflect/KClass;", "", "a", "b", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class b {
    @g

    /* renamed from: a  reason: collision with root package name */
    private static final Map<KClass<?>, String> f4030a = d9.b.f62011a.h();

    @g
    public static final String a(@g KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        String str = f4030a.get(kClass);
        return str == null ? b(kClass) : str;
    }

    @g
    public static final String b(@g KClass<?> kClass) {
        Intrinsics.checkNotNullParameter(kClass, "<this>");
        String f10 = d9.b.f62011a.f(kClass);
        f4030a.put(kClass, f10);
        return f10;
    }
}
