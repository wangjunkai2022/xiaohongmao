package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.JvmType;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import m8.g;
import m8.h;

/* compiled from: JavaIncompatibilityRulesOverridabilityCondition.kt */
/* loaded from: classes4.dex */
public final class JavaIncompatibilityRulesOverridabilityCondition implements ExternalOverridabilityCondition {
    @g
    public static final Companion Companion = new Companion(null);

    /* compiled from: JavaIncompatibilityRulesOverridabilityCondition.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final boolean isPrimitiveCompareTo(FunctionDescriptor functionDescriptor) {
            Object single;
            if (functionDescriptor.getValueParameters().size() != 1) {
                return false;
            }
            DeclarationDescriptor containingDeclaration = functionDescriptor.getContainingDeclaration();
            ClassDescriptor classDescriptor = containingDeclaration instanceof ClassDescriptor ? (ClassDescriptor) containingDeclaration : null;
            if (classDescriptor == null) {
                return false;
            }
            List<ValueParameterDescriptor> valueParameters = functionDescriptor.getValueParameters();
            Intrinsics.checkNotNullExpressionValue(valueParameters, "f.valueParameters");
            single = CollectionsKt___CollectionsKt.single((List<? extends Object>) valueParameters);
            ClassifierDescriptor declarationDescriptor = ((ValueParameterDescriptor) single).getType().getConstructor().getDeclarationDescriptor();
            ClassDescriptor classDescriptor2 = declarationDescriptor instanceof ClassDescriptor ? (ClassDescriptor) declarationDescriptor : null;
            return classDescriptor2 != null && KotlinBuiltIns.isPrimitiveClass(classDescriptor) && Intrinsics.areEqual(DescriptorUtilsKt.getFqNameSafe(classDescriptor), DescriptorUtilsKt.getFqNameSafe(classDescriptor2));
        }

        private final JvmType mapValueParameterType(FunctionDescriptor functionDescriptor, ValueParameterDescriptor valueParameterDescriptor) {
            if (!MethodSignatureMappingKt.forceSingleValueParameterBoxing(functionDescriptor) && !isPrimitiveCompareTo(functionDescriptor)) {
                KotlinType type = valueParameterDescriptor.getType();
                Intrinsics.checkNotNullExpressionValue(type, "valueParameterDescriptor.type");
                return MethodSignatureMappingKt.mapToJvmType(type);
            }
            KotlinType type2 = valueParameterDescriptor.getType();
            Intrinsics.checkNotNullExpressionValue(type2, "valueParameterDescriptor.type");
            return MethodSignatureMappingKt.mapToJvmType(TypeUtilsKt.makeNullable(type2));
        }

        public final boolean doesJavaOverrideHaveIncompatibleValueParameterKinds(@g CallableDescriptor superDescriptor, @g CallableDescriptor subDescriptor) {
            List<Pair> zip;
            Intrinsics.checkNotNullParameter(superDescriptor, "superDescriptor");
            Intrinsics.checkNotNullParameter(subDescriptor, "subDescriptor");
            if ((subDescriptor instanceof JavaMethodDescriptor) && (superDescriptor instanceof FunctionDescriptor)) {
                JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) subDescriptor;
                javaMethodDescriptor.getValueParameters().size();
                FunctionDescriptor functionDescriptor = (FunctionDescriptor) superDescriptor;
                functionDescriptor.getValueParameters().size();
                List<ValueParameterDescriptor> valueParameters = javaMethodDescriptor.getOriginal().getValueParameters();
                Intrinsics.checkNotNullExpressionValue(valueParameters, "subDescriptor.original.valueParameters");
                List<ValueParameterDescriptor> valueParameters2 = functionDescriptor.getOriginal().getValueParameters();
                Intrinsics.checkNotNullExpressionValue(valueParameters2, "superDescriptor.original.valueParameters");
                zip = CollectionsKt___CollectionsKt.zip(valueParameters, valueParameters2);
                for (Pair pair : zip) {
                    ValueParameterDescriptor subParameter = (ValueParameterDescriptor) pair.component1();
                    ValueParameterDescriptor superParameter = (ValueParameterDescriptor) pair.component2();
                    Intrinsics.checkNotNullExpressionValue(subParameter, "subParameter");
                    boolean z9 = mapValueParameterType((FunctionDescriptor) subDescriptor, subParameter) instanceof JvmType.Primitive;
                    Intrinsics.checkNotNullExpressionValue(superParameter, "superParameter");
                    if (z9 != (mapValueParameterType(functionDescriptor, superParameter) instanceof JvmType.Primitive)) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    private final boolean isIncompatibleInAccordanceWithBuiltInOverridabilityRules(CallableDescriptor callableDescriptor, CallableDescriptor callableDescriptor2, ClassDescriptor classDescriptor) {
        if ((callableDescriptor instanceof CallableMemberDescriptor) && (callableDescriptor2 instanceof FunctionDescriptor) && !KotlinBuiltIns.isBuiltIn(callableDescriptor2)) {
            BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.INSTANCE;
            FunctionDescriptor functionDescriptor = (FunctionDescriptor) callableDescriptor2;
            Name name = functionDescriptor.getName();
            Intrinsics.checkNotNullExpressionValue(name, "subDescriptor.name");
            if (!builtinMethodsWithSpecialGenericSignature.getSameAsBuiltinMethodWithErasedValueParameters(name)) {
                SpecialGenericSignatures.Companion companion = SpecialGenericSignatures.Companion;
                Name name2 = functionDescriptor.getName();
                Intrinsics.checkNotNullExpressionValue(name2, "subDescriptor.name");
                if (!companion.getSameAsRenamedInJvmBuiltin(name2)) {
                    return false;
                }
            }
            CallableMemberDescriptor overriddenSpecialBuiltin = SpecialBuiltinMembers.getOverriddenSpecialBuiltin((CallableMemberDescriptor) callableDescriptor);
            boolean z9 = callableDescriptor instanceof FunctionDescriptor;
            FunctionDescriptor functionDescriptor2 = z9 ? (FunctionDescriptor) callableDescriptor : null;
            if ((!(functionDescriptor2 != null && functionDescriptor.isHiddenToOvercomeSignatureClash() == functionDescriptor2.isHiddenToOvercomeSignatureClash())) && (overriddenSpecialBuiltin == null || !functionDescriptor.isHiddenToOvercomeSignatureClash())) {
                return true;
            }
            if ((classDescriptor instanceof JavaClassDescriptor) && functionDescriptor.getInitialSignatureDescriptor() == null && overriddenSpecialBuiltin != null && !SpecialBuiltinMembers.hasRealKotlinSuperClassWithOverrideOf(classDescriptor, overriddenSpecialBuiltin)) {
                if ((overriddenSpecialBuiltin instanceof FunctionDescriptor) && z9 && BuiltinMethodsWithSpecialGenericSignature.getOverriddenBuiltinFunctionWithErasedValueParametersInJava((FunctionDescriptor) overriddenSpecialBuiltin) != null) {
                    String computeJvmDescriptor$default = MethodSignatureMappingKt.computeJvmDescriptor$default(functionDescriptor, false, false, 2, null);
                    FunctionDescriptor original = ((FunctionDescriptor) callableDescriptor).getOriginal();
                    Intrinsics.checkNotNullExpressionValue(original, "superDescriptor.original");
                    if (Intrinsics.areEqual(computeJvmDescriptor$default, MethodSignatureMappingKt.computeJvmDescriptor$default(original, false, false, 2, null))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    @g
    public ExternalOverridabilityCondition.Contract getContract() {
        return ExternalOverridabilityCondition.Contract.CONFLICTS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    @g
    public ExternalOverridabilityCondition.Result isOverridable(@g CallableDescriptor superDescriptor, @g CallableDescriptor subDescriptor, @h ClassDescriptor classDescriptor) {
        Intrinsics.checkNotNullParameter(superDescriptor, "superDescriptor");
        Intrinsics.checkNotNullParameter(subDescriptor, "subDescriptor");
        if (isIncompatibleInAccordanceWithBuiltInOverridabilityRules(superDescriptor, subDescriptor, classDescriptor)) {
            return ExternalOverridabilityCondition.Result.INCOMPATIBLE;
        }
        if (Companion.doesJavaOverrideHaveIncompatibleValueParameterKinds(superDescriptor, subDescriptor)) {
            return ExternalOverridabilityCondition.Result.INCOMPATIBLE;
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
