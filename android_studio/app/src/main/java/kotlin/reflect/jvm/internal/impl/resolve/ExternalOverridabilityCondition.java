package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface ExternalOverridabilityCondition {

    /* loaded from: classes4.dex */
    public enum Contract {
        CONFLICTS_ONLY,
        SUCCESS_ONLY,
        BOTH
    }

    /* loaded from: classes4.dex */
    public enum Result {
        OVERRIDABLE,
        CONFLICT,
        INCOMPATIBLE,
        UNKNOWN
    }

    @g
    Contract getContract();

    @g
    Result isOverridable(@g CallableDescriptor callableDescriptor, @g CallableDescriptor callableDescriptor2, @h ClassDescriptor classDescriptor);
}
