package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.JavaDescriptorUtilKt;
import kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition;
import m8.g;
import m8.h;

/* compiled from: FieldOverridabilityCondition.kt */
/* loaded from: classes4.dex */
public final class FieldOverridabilityCondition implements ExternalOverridabilityCondition {
    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    @g
    public ExternalOverridabilityCondition.Contract getContract() {
        return ExternalOverridabilityCondition.Contract.BOTH;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.ExternalOverridabilityCondition
    @g
    public ExternalOverridabilityCondition.Result isOverridable(@g CallableDescriptor superDescriptor, @g CallableDescriptor subDescriptor, @h ClassDescriptor classDescriptor) {
        Intrinsics.checkNotNullParameter(superDescriptor, "superDescriptor");
        Intrinsics.checkNotNullParameter(subDescriptor, "subDescriptor");
        if ((subDescriptor instanceof PropertyDescriptor) && (superDescriptor instanceof PropertyDescriptor)) {
            PropertyDescriptor propertyDescriptor = (PropertyDescriptor) subDescriptor;
            PropertyDescriptor propertyDescriptor2 = (PropertyDescriptor) superDescriptor;
            if (Intrinsics.areEqual(propertyDescriptor.getName(), propertyDescriptor2.getName())) {
                if (JavaDescriptorUtilKt.isJavaField(propertyDescriptor) && JavaDescriptorUtilKt.isJavaField(propertyDescriptor2)) {
                    return ExternalOverridabilityCondition.Result.OVERRIDABLE;
                }
                if (!JavaDescriptorUtilKt.isJavaField(propertyDescriptor) && !JavaDescriptorUtilKt.isJavaField(propertyDescriptor2)) {
                    return ExternalOverridabilityCondition.Result.UNKNOWN;
                }
                return ExternalOverridabilityCondition.Result.INCOMPATIBLE;
            }
            return ExternalOverridabilityCondition.Result.UNKNOWN;
        }
        return ExternalOverridabilityCondition.Result.UNKNOWN;
    }
}
