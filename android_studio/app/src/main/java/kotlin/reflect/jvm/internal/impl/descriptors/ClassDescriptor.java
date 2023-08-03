package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitution;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface ClassDescriptor extends ClassOrPackageFragmentDescriptor, ClassifierDescriptorWithTypeParameters {
    @h
    ClassDescriptor getCompanionObjectDescriptor();

    @g
    Collection<ClassConstructorDescriptor> getConstructors();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    DeclarationDescriptor getContainingDeclaration();

    @g
    List<ReceiverParameterDescriptor> getContextReceivers();

    @g
    List<TypeParameterDescriptor> getDeclaredTypeParameters();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ClassifierDescriptor
    @g
    SimpleType getDefaultType();

    @g
    ClassKind getKind();

    @g
    MemberScope getMemberScope(@g TypeSubstitution typeSubstitution);

    @g
    Modality getModality();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    ClassDescriptor getOriginal();

    @g
    Collection<ClassDescriptor> getSealedSubclasses();

    @g
    MemberScope getStaticScope();

    @g
    ReceiverParameterDescriptor getThisAsReceiverParameter();

    @g
    MemberScope getUnsubstitutedInnerClassesScope();

    @g
    MemberScope getUnsubstitutedMemberScope();

    @h
    ClassConstructorDescriptor getUnsubstitutedPrimaryConstructor();

    @h
    ValueClassRepresentation<SimpleType> getValueClassRepresentation();

    @g
    DescriptorVisibility getVisibility();

    boolean isCompanionObject();

    boolean isData();

    boolean isFun();

    boolean isInline();

    boolean isValue();
}
