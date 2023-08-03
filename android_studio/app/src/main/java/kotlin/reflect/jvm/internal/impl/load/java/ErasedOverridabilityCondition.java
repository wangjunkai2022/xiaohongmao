package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ReceiverParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;
import m8.g;
import m8.h;

/* compiled from: ErasedOverridabilityCondition.kt */
/* loaded from: classes4.dex */
public final class ErasedOverridabilityCondition implements ExternalOverridabilityCondition {

    /* compiled from: ErasedOverridabilityCondition.kt */
    /* loaded from: classes4.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[OverridingUtil.OverrideCompatibilityInfo.Result.values().length];
            iArr[OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE.ordinal()] = 1;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    @g
    public ExternalOverridabilityCondition.Contract getContract() {
        return ExternalOverridabilityCondition.Contract.SUCCESS_ONLY;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    @g
    public ExternalOverridabilityCondition.Result isOverridable(@g CallableDescriptor superDescriptor, @g CallableDescriptor subDescriptor, @h ClassDescriptor classDescriptor) {
        Sequence asSequence;
        Sequence map;
        Sequence plus;
        List listOfNotNull;
        Sequence plus2;
        boolean z9;
        CallableDescriptor substitute;
        List<TypeParameterDescriptor> emptyList;
        boolean z10;
        Intrinsics.checkNotNullParameter(superDescriptor, "superDescriptor");
        Intrinsics.checkNotNullParameter(subDescriptor, "subDescriptor");
        if (subDescriptor instanceof JavaMethodDescriptor) {
            JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) subDescriptor;
            List<TypeParameterDescriptor> typeParameters = javaMethodDescriptor.getTypeParameters();
            Intrinsics.checkNotNullExpressionValue(typeParameters, "subDescriptor.typeParameters");
            if (!(!typeParameters.isEmpty())) {
                OverridingUtil.OverrideCompatibilityInfo basicOverridabilityProblem = OverridingUtil.getBasicOverridabilityProblem(superDescriptor, subDescriptor);
                if ((basicOverridabilityProblem != null ? basicOverridabilityProblem.getResult() : null) != null) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                List<ValueParameterDescriptor> valueParameters = javaMethodDescriptor.getValueParameters();
                Intrinsics.checkNotNullExpressionValue(valueParameters, "subDescriptor.valueParameters");
                asSequence = CollectionsKt___CollectionsKt.asSequence(valueParameters);
                map = SequencesKt___SequencesKt.map(asSequence, ErasedOverridabilityCondition$isOverridable$signatureTypes$1.INSTANCE);
                KotlinType returnType = javaMethodDescriptor.getReturnType();
                Intrinsics.checkNotNull(returnType);
                plus = SequencesKt___SequencesKt.plus(map, returnType);
                ReceiverParameterDescriptor extensionReceiverParameter = javaMethodDescriptor.getExtensionReceiverParameter();
                listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(extensionReceiverParameter != null ? extensionReceiverParameter.getType() : null);
                plus2 = SequencesKt___SequencesKt.plus(plus, (Iterable) listOfNotNull);
                Iterator it = plus2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z9 = false;
                        break;
                    }
                    KotlinType kotlinType = (KotlinType) it.next();
                    if (!(!kotlinType.getArguments().isEmpty()) || (kotlinType.unwrap() instanceof RawTypeImpl)) {
                        z10 = false;
                        continue;
                    } else {
                        z10 = true;
                        continue;
                    }
                    if (z10) {
                        z9 = true;
                        break;
                    }
                }
                if (!z9 && (substitute = superDescriptor.substitute(new RawSubstitution(null, 1, null).buildSubstitutor())) != null) {
                    if (substitute instanceof SimpleFunctionDescriptor) {
                        SimpleFunctionDescriptor simpleFunctionDescriptor = (SimpleFunctionDescriptor) substitute;
                        List<TypeParameterDescriptor> typeParameters2 = simpleFunctionDescriptor.getTypeParameters();
                        Intrinsics.checkNotNullExpressionValue(typeParameters2, "erasedSuper.typeParameters");
                        if (!typeParameters2.isEmpty()) {
                            FunctionDescriptor.CopyBuilder<? extends SimpleFunctionDescriptor> newCopyBuilder = simpleFunctionDescriptor.newCopyBuilder();
                            emptyList = CollectionsKt__CollectionsKt.emptyList();
                            substitute = newCopyBuilder.setTypeParameters(emptyList).build();
                            Intrinsics.checkNotNull(substitute);
                        }
                    }
                    OverridingUtil.OverrideCompatibilityInfo.Result result = OverridingUtil.DEFAULT.isOverridableByWithoutExternalConditions(substitute, subDescriptor, false).getResult();
                    Intrinsics.checkNotNullExpressionValue(result, "DEFAULT.isOverridableByW…Descriptor, false).result");
                    if (WhenMappings.$EnumSwitchMapping$0[result.ordinal()] == 1) {
                        return ExternalOverridabilityCondition.Result.OVERRIDABLE;
                    }
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                return ExternalOverridabilityCondition.Result.UNKNOWN;
            }
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
