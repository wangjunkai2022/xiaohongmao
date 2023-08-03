package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import m8.g;

/* loaded from: classes4.dex */
public interface ClassifierDescriptorWithTypeParameters extends ClassifierDescriptor, DeclarationDescriptorWithVisibility, MemberDescriptor, Substitutable<ClassifierDescriptorWithTypeParameters> {
    @g
    List<TypeParameterDescriptor> getDeclaredTypeParameters();

    boolean isInner();
}
