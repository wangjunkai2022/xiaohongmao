package kotlin.reflect.jvm.internal.impl.resolve;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import m8.g;

/* compiled from: OverridingStrategy.kt */
/* loaded from: classes4.dex */
public abstract class OverridingStrategy {
    public abstract void addFakeOverride(@g CallableMemberDescriptor callableMemberDescriptor);

    public abstract void inheritanceConflict(@g CallableMemberDescriptor callableMemberDescriptor, @g CallableMemberDescriptor callableMemberDescriptor2);

    public abstract void overrideConflict(@g CallableMemberDescriptor callableMemberDescriptor, @g CallableMemberDescriptor callableMemberDescriptor2);

    public void setOverriddenDescriptors(@g CallableMemberDescriptor member, @g Collection<? extends CallableMemberDescriptor> overridden) {
        Intrinsics.checkNotNullParameter(member, "member");
        Intrinsics.checkNotNullParameter(overridden, "overridden");
        member.setOverriddenDescriptors(overridden);
    }
}
