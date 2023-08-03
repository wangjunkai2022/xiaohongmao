package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor;
import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationLevelValue;
import kotlin.reflect.jvm.internal.impl.resolve.deprecation.DescriptorBasedDeprecationInfo;
import m8.g;

/* compiled from: utils.kt */
/* loaded from: classes4.dex */
public final class DeprecationCausedByFunctionNInfo extends DescriptorBasedDeprecationInfo {
    @g
    private final DeclarationDescriptor target;

    public DeprecationCausedByFunctionNInfo(@g DeclarationDescriptor target) {
        Intrinsics.checkNotNullParameter(target, "target");
        this.target = target;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.deprecation.DeprecationInfo
    @g
    public DeprecationLevelValue getDeprecationLevel() {
        return DeprecationLevelValue.ERROR;
    }
}
