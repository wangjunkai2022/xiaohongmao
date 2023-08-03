package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface CallableDescriptor extends DeclarationDescriptorNonRoot, DeclarationDescriptorWithVisibility, Substitutable<CallableDescriptor> {

    /* loaded from: classes4.dex */
    public interface UserDataKey<V> {
    }

    @g
    List<ReceiverParameterDescriptor> getContextReceiverParameters();

    @h
    ReceiverParameterDescriptor getDispatchReceiverParameter();

    @h
    ReceiverParameterDescriptor getExtensionReceiverParameter();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    CallableDescriptor getOriginal();

    @g
    Collection<? extends CallableDescriptor> getOverriddenDescriptors();

    @h
    KotlinType getReturnType();

    @g
    List<TypeParameterDescriptor> getTypeParameters();

    @h
    <V> V getUserData(UserDataKey<V> userDataKey);

    @g
    List<ValueParameterDescriptor> getValueParameters();

    boolean hasSynthesizedParameterNames();
}
