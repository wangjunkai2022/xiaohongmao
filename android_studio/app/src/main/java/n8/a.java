package n8;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import org.koin.core.registry.b;

/* compiled from: KoinApplicationExt.kt */
@Metadata(bv = {}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u001a\u0014\u0010\u0003\u001a\u00020\u0000*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\n\u0010\u0004\u001a\u00020\u0000*\u00020\u0000¨\u0006\u0005"}, d2 = {"Lorg/koin/core/a;", "", "fileName", "b", "a", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class a {
    @g
    public static final org.koin.core.a a(@g org.koin.core.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        b.a(aVar.e().E());
        return aVar;
    }

    @g
    public static final org.koin.core.a b(@g org.koin.core.a aVar, @g String fileName) {
        Intrinsics.checkNotNullParameter(aVar, "<this>");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        b.b(aVar.e().E(), fileName);
        return aVar;
    }

    public static /* synthetic */ org.koin.core.a c(org.koin.core.a aVar, String str, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = "/koin.properties";
        }
        return b(aVar, str);
    }
}
