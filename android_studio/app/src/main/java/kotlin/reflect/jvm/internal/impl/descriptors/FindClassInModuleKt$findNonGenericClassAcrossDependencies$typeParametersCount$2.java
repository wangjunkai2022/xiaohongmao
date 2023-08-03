package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import m8.g;

/* compiled from: findClassInModule.kt */
/* loaded from: classes4.dex */
final class FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2 extends Lambda implements Function1<ClassId, Integer> {
    public static final FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2 INSTANCE = new FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2();

    FindClassInModuleKt$findNonGenericClassAcrossDependencies$typeParametersCount$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Integer invoke(@g ClassId it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return 0;
    }
}
