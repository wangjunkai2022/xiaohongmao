package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ServiceLoader;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: BuiltInsLoader.kt */
/* loaded from: classes4.dex */
final class BuiltInsLoader$Companion$Instance$2 extends Lambda implements Function0<BuiltInsLoader> {
    public static final BuiltInsLoader$Companion$Instance$2 INSTANCE = new BuiltInsLoader$Companion$Instance$2();

    BuiltInsLoader$Companion$Instance$2() {
        super(0);
    }

    @Override // kotlin.jvm.functions.Function0
    @g
    public final BuiltInsLoader invoke() {
        Object firstOrNull;
        ServiceLoader implementations = ServiceLoader.load(BuiltInsLoader.class, BuiltInsLoader.class.getClassLoader());
        Intrinsics.checkNotNullExpressionValue(implementations, "implementations");
        firstOrNull = CollectionsKt___CollectionsKt.firstOrNull(implementations);
        BuiltInsLoader builtInsLoader = (BuiltInsLoader) firstOrNull;
        if (builtInsLoader != null) {
            return builtInsLoader;
        }
        throw new IllegalStateException("No BuiltInsLoader implementation was found. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
    }
}
