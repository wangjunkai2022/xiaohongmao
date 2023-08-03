package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.receivers.ReceiverValue;
import m8.g;
import m8.h;

/* compiled from: DescriptorVisibility.kt */
/* loaded from: classes4.dex */
public abstract class DescriptorVisibility {
    @h
    public final Integer compareTo(@g DescriptorVisibility visibility) {
        Intrinsics.checkNotNullParameter(visibility, "visibility");
        return getDelegate().compareTo(visibility.getDelegate());
    }

    @g
    public abstract Visibility getDelegate();

    @g
    public abstract String getInternalDisplayName();

    public final boolean isPublicAPI() {
        return getDelegate().isPublicAPI();
    }

    public abstract boolean isVisible(@h ReceiverValue receiverValue, @g DeclarationDescriptorWithVisibility declarationDescriptorWithVisibility, @g DeclarationDescriptor declarationDescriptor, boolean z9);

    @g
    public abstract DescriptorVisibility normalize();

    @g
    public final String toString() {
        return getDelegate().toString();
    }
}
