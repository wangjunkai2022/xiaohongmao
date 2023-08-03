package b9;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: ModuleDSL.kt */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a9\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\u0001\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00002\u001b\u0010\b\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\b\u0007H\u0007\u001a-\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u0001\u001a\u00020\u00002\u001b\u0010\b\u001a\u0017\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006¢\u0006\u0002\b\u0007*,\u0010\u000b\"\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u00072\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0007¨\u0006\f"}, d2 = {"", "createdAtStart", "override", "Lkotlin/Function1;", "Lx8/a;", "", "Lorg/koin/dsl/ModuleDeclaration;", "Lkotlin/ExtensionFunctionType;", "moduleDeclaration", "b", "a", "ModuleDeclaration", "koin-core"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes5.dex */
public final class c {
    @g
    public static final x8.a a(boolean z9, @g Function1<? super x8.a, Unit> moduleDeclaration) {
        Intrinsics.checkNotNullParameter(moduleDeclaration, "moduleDeclaration");
        x8.a aVar = new x8.a(z9);
        moduleDeclaration.invoke(aVar);
        return aVar;
    }

    @Deprecated(message = "'override' parameter is not used anymore. See 'allowOverride' in KoinApplication")
    @g
    public static final x8.a b(boolean z9, boolean z10, @g Function1<? super x8.a, Unit> moduleDeclaration) {
        Intrinsics.checkNotNullParameter(moduleDeclaration, "moduleDeclaration");
        x8.a aVar = new x8.a(z9);
        moduleDeclaration.invoke(aVar);
        return aVar;
    }

    public static /* synthetic */ x8.a c(boolean z9, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        return a(z9, function1);
    }

    public static /* synthetic */ x8.a d(boolean z9, boolean z10, Function1 function1, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = false;
        }
        if ((i4 & 2) != 0) {
            z10 = false;
        }
        return b(z9, z10, function1);
    }
}
