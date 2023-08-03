package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import m8.g;
import m8.h;

/* compiled from: specialBuiltinMembers.kt */
/* loaded from: classes4.dex */
public final class BuiltinMethodsWithDifferentJvmName extends SpecialGenericSignatures {
    @g
    public static final BuiltinMethodsWithDifferentJvmName INSTANCE = new BuiltinMethodsWithDifferentJvmName();

    private BuiltinMethodsWithDifferentJvmName() {
    }

    @h
    public final Name getJvmName(@g SimpleFunctionDescriptor functionDescriptor) {
        Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
        Map<String, Name> signature_to_jvm_representation_name = SpecialGenericSignatures.Companion.getSIGNATURE_TO_JVM_REPRESENTATION_NAME();
        String computeJvmSignature = MethodSignatureMappingKt.computeJvmSignature(functionDescriptor);
        if (computeJvmSignature == null) {
            return null;
        }
        return signature_to_jvm_representation_name.get(computeJvmSignature);
    }

    public final boolean isBuiltinFunctionWithDifferentNameInJvm(@g SimpleFunctionDescriptor functionDescriptor) {
        Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
        return KotlinBuiltIns.isBuiltIn(functionDescriptor) && DescriptorUtilsKt.firstOverridden$default(functionDescriptor, false, new BuiltinMethodsWithDifferentJvmName$isBuiltinFunctionWithDifferentNameInJvm$1(functionDescriptor), 1, null) != null;
    }

    public final boolean isRemoveAtByIndex(@g SimpleFunctionDescriptor simpleFunctionDescriptor) {
        Intrinsics.checkNotNullParameter(simpleFunctionDescriptor, "<this>");
        return Intrinsics.areEqual(simpleFunctionDescriptor.getName().asString(), "removeAt") && Intrinsics.areEqual(MethodSignatureMappingKt.computeJvmSignature(simpleFunctionDescriptor), SpecialGenericSignatures.Companion.getREMOVE_AT_NAME_AND_SIGNATURE().getSignature());
    }
}
