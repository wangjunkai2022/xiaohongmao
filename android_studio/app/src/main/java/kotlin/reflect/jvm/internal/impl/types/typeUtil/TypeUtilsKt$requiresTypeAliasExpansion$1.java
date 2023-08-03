package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeAliasDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.UnwrappedType;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TypeUtils.kt */
/* loaded from: classes4.dex */
public final class TypeUtilsKt$requiresTypeAliasExpansion$1 extends Lambda implements Function1<UnwrappedType, Boolean> {
    public static final TypeUtilsKt$requiresTypeAliasExpansion$1 INSTANCE = new TypeUtilsKt$requiresTypeAliasExpansion$1();

    TypeUtilsKt$requiresTypeAliasExpansion$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g UnwrappedType it) {
        Intrinsics.checkNotNullParameter(it, "it");
        ClassifierDescriptor declarationDescriptor = it.getConstructor().getDeclarationDescriptor();
        boolean z9 = false;
        if (declarationDescriptor != null && ((declarationDescriptor instanceof TypeAliasDescriptor) || (declarationDescriptor instanceof TypeParameterDescriptor))) {
            z9 = true;
        }
        return Boolean.valueOf(z9);
    }
}
