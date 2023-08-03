package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructor;
import m8.g;

/* loaded from: classes4.dex */
public interface ClassifierDescriptor extends DeclarationDescriptorNonRoot {
    @g
    SimpleType getDefaultType();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.DeclarationDescriptor
    @g
    ClassifierDescriptor getOriginal();

    @g
    TypeConstructor getTypeConstructor();
}
