package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import m8.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: specialBuiltinMembers.kt */
/* loaded from: classes4.dex */
public final class BuiltinMethodsWithSpecialGenericSignature$getOverriddenBuiltinFunctionWithErasedValueParametersInJava$1 extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
    public static final BuiltinMethodsWithSpecialGenericSignature$getOverriddenBuiltinFunctionWithErasedValueParametersInJava$1 INSTANCE = new BuiltinMethodsWithSpecialGenericSignature$getOverriddenBuiltinFunctionWithErasedValueParametersInJava$1();

    BuiltinMethodsWithSpecialGenericSignature$getOverriddenBuiltinFunctionWithErasedValueParametersInJava$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    @g
    public final Boolean invoke(@g CallableMemberDescriptor it) {
        boolean hasErasedValueParametersInJava;
        Intrinsics.checkNotNullParameter(it, "it");
        hasErasedValueParametersInJava = BuiltinMethodsWithSpecialGenericSignature.INSTANCE.getHasErasedValueParametersInJava(it);
        return Boolean.valueOf(hasErasedValueParametersInJava);
    }
}
