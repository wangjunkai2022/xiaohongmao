package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PropertyDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.SimpleFunctionDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import m8.g;
import m8.h;

/* compiled from: JavaForKotlinOverridePropertyDescriptor.kt */
/* loaded from: classes4.dex */
public final class JavaForKotlinOverridePropertyDescriptor extends JavaPropertyDescriptor {
    @g
    private final SimpleFunctionDescriptor getterMethod;
    @g
    private final PropertyDescriptor overriddenProperty;
    @h
    private final SimpleFunctionDescriptor setterMethod;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JavaForKotlinOverridePropertyDescriptor(@g ClassDescriptor ownerDescriptor, @g SimpleFunctionDescriptor getterMethod, @h SimpleFunctionDescriptor simpleFunctionDescriptor, @g PropertyDescriptor overriddenProperty) {
        super(ownerDescriptor, Annotations.Companion.getEMPTY(), getterMethod.getModality(), getterMethod.getVisibility(), simpleFunctionDescriptor != null, overriddenProperty.getName(), getterMethod.getSource(), null, CallableMemberDescriptor.Kind.DECLARATION, false, null);
        Intrinsics.checkNotNullParameter(ownerDescriptor, "ownerDescriptor");
        Intrinsics.checkNotNullParameter(getterMethod, "getterMethod");
        Intrinsics.checkNotNullParameter(overriddenProperty, "overriddenProperty");
        this.getterMethod = getterMethod;
        this.setterMethod = simpleFunctionDescriptor;
        this.overriddenProperty = overriddenProperty;
    }
}
