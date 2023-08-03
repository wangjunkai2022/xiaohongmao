package kotlin.reflect.jvm.internal.impl.load.kotlin;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmClassName;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: methodSignatureMapping.kt */
/* loaded from: classes4.dex */
public final class MethodSignatureMappingKt {
    private static final void appendErasedType(StringBuilder sb, KotlinType kotlinType) {
        sb.append(mapToJvmType(kotlinType));
    }

    @g
    public static final String computeJvmDescriptor(@g FunctionDescriptor functionDescriptor, boolean z9, boolean z10) {
        String asString;
        Intrinsics.checkNotNullParameter(functionDescriptor, "<this>");
        StringBuilder sb = new StringBuilder();
        if (z10) {
            if (functionDescriptor instanceof ConstructorDescriptor) {
                asString = "<init>";
            } else {
                asString = functionDescriptor.getName().asString();
                Intrinsics.checkNotNullExpressionValue(asString, "name.asString()");
            }
            sb.append(asString);
        }
        sb.append("(");
        ReceiverParameterDescriptor extensionReceiverParameter = functionDescriptor.getExtensionReceiverParameter();
        if (extensionReceiverParameter != null) {
            KotlinType type = extensionReceiverParameter.getType();
            Intrinsics.checkNotNullExpressionValue(type, "it.type");
            appendErasedType(sb, type);
        }
        for (ValueParameterDescriptor valueParameterDescriptor : functionDescriptor.getValueParameters()) {
            KotlinType type2 = valueParameterDescriptor.getType();
            Intrinsics.checkNotNullExpressionValue(type2, "parameter.type");
            appendErasedType(sb, type2);
        }
        sb.append(")");
        if (z9) {
            if (DescriptorBasedTypeSignatureMappingKt.hasVoidReturnType(functionDescriptor)) {
                sb.append(ExifInterface.GPS_MEASUREMENT_INTERRUPTED);
            } else {
                KotlinType returnType = functionDescriptor.getReturnType();
                Intrinsics.checkNotNull(returnType);
                appendErasedType(sb, returnType);
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public static /* synthetic */ String computeJvmDescriptor$default(FunctionDescriptor functionDescriptor, boolean z9, boolean z10, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            z9 = true;
        }
        if ((i4 & 2) != 0) {
            z10 = true;
        }
        return computeJvmDescriptor(functionDescriptor, z9, z10);
    }

    @h
    public static final String computeJvmSignature(@g CallableDescriptor callableDescriptor) {
        Intrinsics.checkNotNullParameter(callableDescriptor, "<this>");
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.INSTANCE;
        if (DescriptorUtils.isLocal(callableDescriptor)) {
            return null;
        }
        DeclarationDescriptor containingDeclaration = callableDescriptor.getContainingDeclaration();
        ClassDescriptor classDescriptor = containingDeclaration instanceof ClassDescriptor ? (ClassDescriptor) containingDeclaration : null;
        if (classDescriptor == null || classDescriptor.getName().isSpecial()) {
            return null;
        }
        CallableDescriptor original = callableDescriptor.getOriginal();
        SimpleFunctionDescriptor simpleFunctionDescriptor = original instanceof SimpleFunctionDescriptor ? (SimpleFunctionDescriptor) original : null;
        if (simpleFunctionDescriptor == null) {
            return null;
        }
        return MethodSignatureBuildingUtilsKt.signature(signatureBuildingComponents, classDescriptor, computeJvmDescriptor$default(simpleFunctionDescriptor, false, false, 3, null));
    }

    public static final boolean forceSingleValueParameterBoxing(@g CallableDescriptor f10) {
        Object single;
        FunctionDescriptor overriddenBuiltinFunctionWithErasedValueParametersInJava;
        Object single2;
        Intrinsics.checkNotNullParameter(f10, "f");
        if (f10 instanceof FunctionDescriptor) {
            FunctionDescriptor functionDescriptor = (FunctionDescriptor) f10;
            if (Intrinsics.areEqual(functionDescriptor.getName().asString(), "remove") && functionDescriptor.getValueParameters().size() == 1 && !SpecialBuiltinMembers.isFromJavaOrBuiltins((CallableMemberDescriptor) f10)) {
                List<ValueParameterDescriptor> valueParameters = functionDescriptor.getOriginal().getValueParameters();
                Intrinsics.checkNotNullExpressionValue(valueParameters, "f.original.valueParameters");
                single = CollectionsKt___CollectionsKt.single((List<? extends Object>) valueParameters);
                KotlinType type = ((ValueParameterDescriptor) single).getType();
                Intrinsics.checkNotNullExpressionValue(type, "f.original.valueParameters.single().type");
                JvmType mapToJvmType = mapToJvmType(type);
                JvmType.Primitive primitive = mapToJvmType instanceof JvmType.Primitive ? (JvmType.Primitive) mapToJvmType : null;
                if ((primitive != null ? primitive.getJvmPrimitiveType() : null) == JvmPrimitiveType.INT && (overriddenBuiltinFunctionWithErasedValueParametersInJava = BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava(functionDescriptor)) != null) {
                    List<ValueParameterDescriptor> valueParameters2 = overriddenBuiltinFunctionWithErasedValueParametersInJava.getOriginal().getValueParameters();
                    Intrinsics.checkNotNullExpressionValue(valueParameters2, "overridden.original.valueParameters");
                    single2 = CollectionsKt___CollectionsKt.single((List<? extends Object>) valueParameters2);
                    KotlinType type2 = ((ValueParameterDescriptor) single2).getType();
                    Intrinsics.checkNotNullExpressionValue(type2, "overridden.original.valueParameters.single().type");
                    JvmType mapToJvmType2 = mapToJvmType(type2);
                    DeclarationDescriptor containingDeclaration = overriddenBuiltinFunctionWithErasedValueParametersInJava.getContainingDeclaration();
                    Intrinsics.checkNotNullExpressionValue(containingDeclaration, "overridden.containingDeclaration");
                    return Intrinsics.areEqual(DescriptorUtilsKt.getFqNameUnsafe(containingDeclaration), StandardNames.FqNames.mutableCollection.toUnsafe()) && (mapToJvmType2 instanceof JvmType.Object) && Intrinsics.areEqual(((JvmType.Object) mapToJvmType2).getInternalName(), "java/lang/Object");
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @g
    public static final String getInternalName(@g ClassDescriptor classDescriptor) {
        Intrinsics.checkNotNullParameter(classDescriptor, "<this>");
        JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.INSTANCE;
        FqNameUnsafe unsafe = DescriptorUtilsKt.getFqNameSafe(classDescriptor).toUnsafe();
        Intrinsics.checkNotNullExpressionValue(unsafe, "fqNameSafe.toUnsafe()");
        ClassId mapKotlinToJava = javaToKotlinClassMap.mapKotlinToJava(unsafe);
        if (mapKotlinToJava != null) {
            String internalName = JvmClassName.byClassId(mapKotlinToJava).getInternalName();
            Intrinsics.checkNotNullExpressionValue(internalName, "byClassId(it).internalName");
            return internalName;
        }
        return DescriptorBasedTypeSignatureMappingKt.computeInternalName$default(classDescriptor, null, 2, null);
    }

    @g
    public static final JvmType mapToJvmType(@g KotlinType kotlinType) {
        Intrinsics.checkNotNullParameter(kotlinType, "<this>");
        return (JvmType) DescriptorBasedTypeSignatureMappingKt.mapType$default(kotlinType, JvmTypeFactoryImpl.INSTANCE, TypeMappingMode.DEFAULT, TypeMappingConfigurationImpl.INSTANCE, null, null, 32, null);
    }
}
