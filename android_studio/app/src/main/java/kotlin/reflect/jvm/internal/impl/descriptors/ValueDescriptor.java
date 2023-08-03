package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.types.KotlinType;
import m8.g;

/* loaded from: classes4.dex */
public interface ValueDescriptor extends CallableDescriptor {
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptorNonRoot, kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    DeclarationDescriptor getContainingDeclaration();

    @g
    KotlinType getType();
}
