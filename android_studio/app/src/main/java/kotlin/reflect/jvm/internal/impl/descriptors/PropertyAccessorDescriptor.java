package kotlin.reflect.jvm.internal.impl.descriptors;

import m8.g;

/* loaded from: classes4.dex */
public interface PropertyAccessorDescriptor extends VariableAccessorDescriptor {
    @g
    PropertyDescriptor getCorrespondingProperty();

    boolean isDefault();
}
