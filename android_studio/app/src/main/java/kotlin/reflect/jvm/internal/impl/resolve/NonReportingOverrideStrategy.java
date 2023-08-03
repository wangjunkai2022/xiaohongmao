package kotlin.reflect.jvm.internal.impl.resolve;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import m8.g;

/* compiled from: OverridingStrategy.kt */
/* loaded from: classes4.dex */
public abstract class NonReportingOverrideStrategy extends OverridingStrategy {
    protected abstract void conflict(@g CallableMemberDescriptor callableMemberDescriptor, @g CallableMemberDescriptor callableMemberDescriptor2);

    @Override // kotlin.reflect.jvm.internal.impl.resolve.OverridingStrategy
    public void inheritanceConflict(@g CallableMemberDescriptor first, @g CallableMemberDescriptor second) {
        Intrinsics.checkNotNullParameter(first, "first");
        Intrinsics.checkNotNullParameter(second, "second");
        conflict(first, second);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.OverridingStrategy
    public void overrideConflict(@g CallableMemberDescriptor fromSuper, @g CallableMemberDescriptor fromCurrent) {
        Intrinsics.checkNotNullParameter(fromSuper, "fromSuper");
        Intrinsics.checkNotNullParameter(fromCurrent, "fromCurrent");
        conflict(fromSuper, fromCurrent);
    }
}
