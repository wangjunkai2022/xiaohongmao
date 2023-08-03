package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import m8.g;

/* compiled from: typeParameterUtils.kt */
/* loaded from: classes4.dex */
final class TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1 extends Lambda implements Function1<DeclarationDescriptor, Boolean> {
    public static final TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1 INSTANCE = new TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1();

    TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g DeclarationDescriptor it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(it instanceof CallableDescriptor);
    }
}
