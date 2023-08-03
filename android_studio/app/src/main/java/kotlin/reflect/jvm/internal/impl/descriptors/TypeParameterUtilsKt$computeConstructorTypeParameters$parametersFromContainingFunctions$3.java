package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.Sequence;
import m8.g;

/* compiled from: typeParameterUtils.kt */
/* loaded from: classes4.dex */
final class TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3 extends Lambda implements Function1<DeclarationDescriptor, Sequence<? extends TypeParameterDescriptor>> {
    public static final TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3 INSTANCE = new TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3();

    TypeParameterUtilsKt$computeConstructorTypeParameters$parametersFromContainingFunctions$3() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Sequence<TypeParameterDescriptor> invoke(@g DeclarationDescriptor it) {
        Sequence<TypeParameterDescriptor> asSequence;
        Intrinsics.checkNotNullParameter(it, "it");
        List<TypeParameterDescriptor> typeParameters = ((CallableDescriptor) it).getTypeParameters();
        Intrinsics.checkNotNullExpressionValue(typeParameters, "it as CallableDescriptor).typeParameters");
        asSequence = CollectionsKt___CollectionsKt.asSequence(typeParameters);
        return asSequence;
    }
}
