package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;
import m8.h;

/* compiled from: ValueParameterDescriptor.kt */
/* loaded from: classes4.dex */
public interface ValueParameterDescriptor extends ParameterDescriptor, VariableDescriptor {

    /* compiled from: ValueParameterDescriptor.kt */
    /* loaded from: classes4.dex */
    public static final class DefaultImpls {
        public static boolean isLateInit(@g ValueParameterDescriptor valueParameterDescriptor) {
            return false;
        }
    }

    @g
    ValueParameterDescriptor copy(@g CallableDescriptor callableDescriptor, @g Name name, int i4);

    boolean declaresDefaultValue();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.ValueDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    CallableDescriptor getContainingDeclaration();

    int getIndex();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    ValueParameterDescriptor getOriginal();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableDescriptor
    @g
    Collection<ValueParameterDescriptor> getOverriddenDescriptors();

    @h
    KotlinType getVarargElementType();

    boolean isCrossinline();

    boolean isNoinline();
}
