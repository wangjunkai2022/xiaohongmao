package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import m8.g;
import m8.h;

/* loaded from: classes4.dex */
public interface ConstructorDescriptor extends FunctionDescriptor {
    @g
    ClassDescriptor getConstructedClass();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    ClassifierDescriptorWithTypeParameters getContainingDeclaration();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    @g
    KotlinType getReturnType();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    @g
    List<TypeParameterDescriptor> getTypeParameters();

    boolean isPrimary();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.FunctionDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.Substitutable
    @h
    ConstructorDescriptor substitute(@g TypeSubstitutor typeSubstitutor);
}
