package kotlin.reflect.jvm.internal.impl.util;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ValueParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.util.Check;
import m8.g;
import m8.h;

/* compiled from: modifierChecks.kt */
/* loaded from: classes4.dex */
final class NoDefaultAndVarargsCheck implements Check {
    @g
    public static final NoDefaultAndVarargsCheck INSTANCE = new NoDefaultAndVarargsCheck();
    @g
    private static final String description = "should not have varargs or parameters with default values";

    private NoDefaultAndVarargsCheck() {
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    public boolean check(@g FunctionDescriptor functionDescriptor) {
        boolean z9;
        Intrinsics.checkNotNullParameter(functionDescriptor, "functionDescriptor");
        List<ValueParameterDescriptor> valueParameters = functionDescriptor.getValueParameters();
        Intrinsics.checkNotNullExpressionValue(valueParameters, "functionDescriptor.valueParameters");
        if (!(valueParameters instanceof Collection) || !valueParameters.isEmpty()) {
            for (ValueParameterDescriptor it : valueParameters) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                if (DescriptorUtilsKt.declaresOrInheritsDefaultValue(it) || it.getVarargElementType() != null) {
                    z9 = false;
                    continue;
                } else {
                    z9 = true;
                    continue;
                }
                if (!z9) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    @g
    public String getDescription() {
        return description;
    }

    @Override // kotlin.reflect.jvm.internal.impl.util.Check
    @h
    public String invoke(@g FunctionDescriptor functionDescriptor) {
        return Check.DefaultImpls.invoke(this, functionDescriptor);
    }
}
