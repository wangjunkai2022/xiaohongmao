package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.reflect.jvm.internal.impl.types.SimpleType;
import m8.g;
import m8.h;

/* compiled from: TypeAliasDescriptor.kt */
/* loaded from: classes4.dex */
public interface TypeAliasDescriptor extends ClassifierDescriptorWithTypeParameters {
    @h
    ClassDescriptor getClassDescriptor();

    @g
    SimpleType getExpandedType();

    @g
    SimpleType getUnderlyingType();
}
