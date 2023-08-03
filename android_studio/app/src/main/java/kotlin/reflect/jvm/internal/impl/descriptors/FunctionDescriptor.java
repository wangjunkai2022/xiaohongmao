package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface FunctionDescriptor extends CallableMemberDescriptor {

    /* loaded from: classes4.dex */
    public interface CopyBuilder<D extends FunctionDescriptor> {
        @h
        D build();

        @g
        <V> CopyBuilder<D> putUserData(@g CallableDescriptor.UserDataKey<V> userDataKey, V v9);

        @g
        CopyBuilder<D> setAdditionalAnnotations(@g Annotations annotations);

        @g
        CopyBuilder<D> setCopyOverrides(boolean z9);

        @g
        CopyBuilder<D> setDispatchReceiverParameter(@h ReceiverParameterDescriptor receiverParameterDescriptor);

        @g
        CopyBuilder<D> setDropOriginalInContainingParts();

        @g
        CopyBuilder<D> setExtensionReceiverParameter(@h ReceiverParameterDescriptor receiverParameterDescriptor);

        @g
        CopyBuilder<D> setHiddenForResolutionEverywhereBesideSupercalls();

        @g
        CopyBuilder<D> setHiddenToOvercomeSignatureClash();

        @g
        CopyBuilder<D> setKind(@g CallableMemberDescriptor.Kind kind);

        @g
        CopyBuilder<D> setModality(@g Modality modality);

        @g
        CopyBuilder<D> setName(@g Name name);

        @g
        CopyBuilder<D> setOriginal(@h CallableMemberDescriptor callableMemberDescriptor);

        @g
        CopyBuilder<D> setOwner(@g DeclarationDescriptor declarationDescriptor);

        @g
        CopyBuilder<D> setPreserveSourceElement();

        @g
        CopyBuilder<D> setReturnType(@g KotlinType kotlinType);

        @g
        CopyBuilder<D> setSignatureChange();

        @g
        CopyBuilder<D> setSubstitution(@g TypeSubstitution typeSubstitution);

        @g
        CopyBuilder<D> setTypeParameters(@g List<TypeParameterDescriptor> list);

        @g
        CopyBuilder<D> setValueParameters(@g List<ValueParameterDescriptor> list);

        @g
        CopyBuilder<D> setVisibility(@g DescriptorVisibility descriptorVisibility);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    DeclarationDescriptor getContainingDeclaration();

    @h
    FunctionDescriptor getInitialSignatureDescriptor();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    FunctionDescriptor getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    @g
    Collection<? extends FunctionDescriptor> getOverriddenDescriptors();

    boolean isHiddenForResolutionEverywhereBesideSupercalls();

    boolean isHiddenToOvercomeSignatureClash();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    boolean isTailrec();

    @g
    CopyBuilder<? extends FunctionDescriptor> newCopyBuilder();

    @h
    FunctionDescriptor substitute(@g TypeSubstitutor typeSubstitutor);
}
