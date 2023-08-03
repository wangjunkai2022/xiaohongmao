package kotlin.reflect.jvm.internal.impl.descriptors;

import m8.g;

/* loaded from: classes4.dex */
public interface MemberDescriptor extends DeclarationDescriptorNonRoot, DeclarationDescriptorWithVisibility {
    @g
    Modality getModality();

    @g
    DescriptorVisibility getVisibility();

    boolean isActual();

    boolean isExpect();

    boolean isExternal();
}
