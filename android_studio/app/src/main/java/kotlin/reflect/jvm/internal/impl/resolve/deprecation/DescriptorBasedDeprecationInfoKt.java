package kotlin.reflect.jvm.internal.impl.resolve.deprecation;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import m8.g;

/* compiled from: DescriptorBasedDeprecationInfo.kt */
/* loaded from: classes4.dex */
public final class DescriptorBasedDeprecationInfoKt {
    @g
    private static final CallableDescriptor.UserDataKey<DescriptorBasedDeprecationInfo> DEPRECATED_FUNCTION_KEY = new CallableDescriptor.UserDataKey<DescriptorBasedDeprecationInfo>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfoKt$DEPRECATED_FUNCTION_KEY$1
    };

    @g
    public static final CallableDescriptor.UserDataKey<DescriptorBasedDeprecationInfo> getDEPRECATED_FUNCTION_KEY() {
        return DEPRECATED_FUNCTION_KEY;
    }
}
