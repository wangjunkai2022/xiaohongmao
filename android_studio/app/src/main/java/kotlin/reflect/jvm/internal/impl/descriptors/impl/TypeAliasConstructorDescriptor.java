package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.reflect.jvm.internal.impl.descriptors.ClassConstructorDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ConstructorDescriptor;
import m8.g;

/* compiled from: TypeAliasConstructorDescriptor.kt */
/* loaded from: classes4.dex */
public interface TypeAliasConstructorDescriptor extends ConstructorDescriptor {
    @g
    ClassConstructorDescriptor getUnderlyingConstructorDescriptor();
}
