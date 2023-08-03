package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface PropertyDescriptor extends CallableMemberDescriptor, VariableDescriptorWithAccessors {
    @g
    List<PropertyAccessorDescriptor> getAccessors();

    @h
    FieldDescriptor getBackingField();

    @h
    FieldDescriptor getDelegateField();

    @h
    PropertyGetterDescriptor getGetter();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    PropertyDescriptor getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    @g
    Collection<? extends PropertyDescriptor> getOverriddenDescriptors();

    @h
    PropertySetterDescriptor getSetter();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    PropertyDescriptor substitute(@g TypeSubstitutor typeSubstitutor);
}
